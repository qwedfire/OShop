package com.example.oshop.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.oshop.ecpay.payment.integration.AllInOne;
import com.example.oshop.ecpay.payment.integration.domain.AioCheckOutALL;
import com.example.oshop.mapper.UserRepository;
import com.example.oshop.model.*;
import com.example.oshop.service.*;
import org.apache.catalina.session.StandardSession;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

@Controller
//@RestController
public class CopyController {
    private boolean isAuthenticated(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("user") != null;
    }

    private StringBuilder sb;
    @Autowired
    private CartService cartService;
    @Autowired
    private CartItemService cartItemService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserService userService;
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderItemService orderItemService;

    @GetMapping("/orderList")
    public String orderLsit(@RequestParam(name = "orderID", required = false) String orderID, Model model) {
        List<OrderItem> orderItems = orderItemService.list()
                .stream()
                .filter(c -> c.getOrderID().equals(orderID))
                .collect(Collectors.toList());
        List<Product> products = new ArrayList<>();
        for (OrderItem orderItem : orderItems) {
            Product product = productService.getById(orderItem.getProductID());
            products.add(product);
        }
        model.addAttribute("orderItems", orderItems);
        model.addAttribute("products",products);
        return "htmls/orderList"; // 返回帶有 orderID 的內容
   }

    @GetMapping("/order")
    public String order(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        List<Order> orderList = orderService.list().stream().filter(c -> c.getCustomerID() == user.getId()).collect(Collectors.toList());
        model.addAttribute("orderList", orderList);
        for (Order order : orderList) {
            System.out.println(order);
        }
//        List<OrderItem>orderItemList=orderItemService.list().stream().filter(c->c.getOrderID().equals(orderList.get(0).getOrderID())).collect(Collectors.toList());
//        model.addAttribute("orderItemList",orderItemList);

        return "htmls/order";
    }


    @PostMapping("/confirmation")
    public String confirmation(HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");


        List<CartItem> cartItem = cartItemService.list().stream().filter(cartItem1 -> cartItem1.getCartID() == user.getId()).collect(Collectors.toList());
        // 假設根據用戶ID查詢購物車筆數的方法為 getCartItemCountByUserId，請根據您的後端邏輯進行調整
        int cartItemCount = 0;
        for (CartItem item : cartItem) {
            cartItemCount += item.getQuantity();
        }

        Order order = new Order();
        order.setOrderID(sb.toString());
        order.setCustomerID(user.getId());
        order.setItemCount(cartItemCount);
        order.setTotalAmount(cartItemService.calculateTotalPriceByCartItemDynamic(user.getId()));
        orderService.save(order);

        OrderItem orderItem = new OrderItem();
        for (CartItem c : cartItemService.list()) {
            if (c.getCartID() == user.getId()) {
                orderItem.setOrderID(sb.toString());
                orderItem.setProductID(c.getProductID());
                orderItem.setNum(c.getQuantity());
                orderItemService.save(orderItem);
            }
        }

        cartItemService.removeCartItem(user.getId());
        return "htmls/confirmation";
    }

    @GetMapping("/pay")
    public String pay(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        //所有商品名稱

        AllInOne all = new AllInOne("");
        AioCheckOutALL obj = new AioCheckOutALL();

        String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        Random random = new SecureRandom();
        sb = new StringBuilder(14);
        for (int i = 0; i < 14; i++) {
            int randomIndex = random.nextInt(CHARACTERS.length());
            sb.append(CHARACTERS.charAt(randomIndex));
        }
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String formattedDate = sdf.format(now);

        obj.setMerchantTradeNo(sb.toString());
        obj.setMerchantTradeDate(formattedDate);
        obj.setTotalAmount(cartItemService.calculateTotalPriceByCartItemDynamic(user.getId()) + "");
        obj.setItemName(cartItemService.allProductName(user.getId()));
        obj.setMerchantID("OShop");
        obj.setTradeDesc("test Description");
        obj.setReturnURL("http://localhost:8082/confirmation");
        obj.setOrderResultURL("http://localhost:8082/confirmation");
        obj.setNeedExtraPaidInfo("N");
        String form = all.aioCheckOut(obj, null);
        model.addAttribute("form", form);

        return "htmls/pay";
    }

    @PostMapping("/deleteProduct")
    public ResponseEntity<String> deleteProduct(@RequestBody Map<String, Integer> data) {
        Integer cartID = data.get("cartID");
        Integer productID = data.get("productID");
        cartItemService.removeByCartIDAndProductID(cartID, productID);
        return new ResponseEntity<>("Product deleted successfully", HttpStatus.OK);
    }

    @GetMapping("cart")
    public String cart(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        List<Product> productList = productService.list();
        model.addAttribute("products", productList);
        List<CartItem> cartItemList = cartItemService.list().stream()
                .filter(cc -> cc.getCartID().equals(user.getId()))
                .collect(Collectors.toList());
        model.addAttribute("cartItemList", cartItemList);
        return "htmls/cart";
    }

    @GetMapping(value = {"/index", "/"})
    public String homePage(@ModelAttribute("welcomeMessage") String welcomeMessage, Model model) {
        // 判斷是否有需要顯示的歡迎訊息
        if (!welcomeMessage.isEmpty()) {
            // 將歡迎訊息存儲在 model 中
            model.addAttribute("welcomeMessage", welcomeMessage);
        }

        // 返回主頁面
        return "htmls/index";
    }

    @GetMapping("/shopSidebarBrand")
    public String shopSidebarBrand() {
        return "/htmls/shopSidebarBrand";
    }

    @GetMapping("/shopSidebar")
    public String shoppage(
            @RequestParam(value = "brand", required = false) String brand

            , Model model) {
        List<Product> list = productService.list();
        model.addAttribute("products", list);
        model.addAttribute("brand", brand);
        return "/htmls/shopSidebar";
    }

    @GetMapping("/register")
    public String userRegisterPage() {
        return "htmls/signin";
    }

    @PostMapping("/register")
    public String registerUser(
            @RequestParam("realname") String realname,
            @RequestParam("account") String account,
            @RequestParam("password") String password,
            @RequestParam("phone") String phone,
            @RequestParam("birthday") String birthday,
            @RequestParam("email") String email,
            @RequestParam("address") String address,
            @RequestParam("sex") String sex,
            @RequestParam("picture") MultipartFile picture,
            RedirectAttributes redirectAttributes) throws IOException {
        User user = new User();
        user.setRealname(realname);
        user.setAccount(account);
        user.setPassword(password);
        user.setPhone(phone);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate parsedBirthday = LocalDate.parse(birthday, formatter);
        user.setBirthday(parsedBirthday);

        user.setEmail(email);
        user.setAddress(address);
        user.setSex(sex);
        user.setPicture(picture.getBytes());
        userRepository.save(user);

        Cart cart = new Cart();
        cart.setUsername(realname);
        cartService.save(cart);

        redirectAttributes.addFlashAttribute("SinginMessage", "successSignin");

        // 將用戶信息保存到數據庫中
        return "redirect:/login";
    }


    @GetMapping("/login")
    public String userLoginPage(@RequestParam(required = false) String error, Model model) {
        if (error != null) {
            // 登入失敗，返回錯誤信息
            model.addAttribute("error", "Invalid username or password");
        }
        return "htmls/login";
    }

    @PostMapping("/login")
    public String loginUser(
            @RequestParam("account") String account,
            @RequestParam("password") String password,
            HttpServletRequest request,
            RedirectAttributes redirectAttributes) {

        // 查詢數據庫中是否存在對應的用戶
        User user = userRepository.findByAccount(account);
        System.out.println(account);
        System.out.println(password);
        System.out.println(user);
        if (user != null && user.getPassword().equals(password)) {

            List<Cart> carts = cartService.list();
            //找cart資料表查詢使用者的cartID
            Cart foundCart = carts.stream()
                    .filter(cartList -> cartList.getUsername().equals(user.getRealname()))
                    .findFirst()
                    .orElse(null);

            if (foundCart != null) {
                HttpSession session = request.getSession();
                session.setAttribute("cart", foundCart);
            }
            System.out.println("------------------------" + cartItemService.list() + "ssssss" + foundCart.getCartid());
            List<CartItem> cartItems = cartItemService.list().stream()
                    .filter(cc -> cc.getCartID().equals(foundCart.getCartid()))
                    .collect(Collectors.toList());
            if (cartItems != null) {
                HttpSession session = request.getSession();
                session.setAttribute("cartItem", cartItems);
            }

            // 驗證通過，將用戶信息存儲在 session 中
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            System.out.println("userID:------------------" + user.getId());
            // 設定需要傳遞給下一個 request 的屬性值
            redirectAttributes.addAttribute("id", user.getId());
            System.out.println("導向主畫面");
            // 重定向到個人頁面
            return "redirect:/index";

        } else {
            System.out.println("登入失敗!");
            // 驗證失敗，返回錯誤信息
            return "htmls/login";
        }
    }

    @GetMapping("/forgetPassword")
    public String forgetPassword() {
        System.out.println("forgetPassword");
        return "htmls/forgetPassword";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
        session.invalidate();
        redirectAttributes.addFlashAttribute("logoutMessage", "您已成功登出");
        return "redirect:/index";
    }

    @GetMapping("/profileDetails")
    public ModelAndView showProfile(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("取得個人資訊!");
        if (!isAuthenticated(request)) {
            modelAndView.setViewName("redirect:/login");
            return modelAndView;
        }
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");


        // 将用户头像字节数组转换为Base64编码的字符串
        String base64Image = "";
        if (user.getPicture() != null) {
            base64Image = Base64.getEncoder().encodeToString(user.getPicture());
        }


        modelAndView.addObject("user", user);
        modelAndView.addObject("base64Image", base64Image);
        modelAndView.setViewName("htmls/profileDetails");
        return modelAndView;
    }


    @PostMapping("/profileDetails/update")
    public ModelAndView updateProfile(@ModelAttribute("user") User updatedUser,
                                      @RequestParam("picture") MultipartFile picture,
                                      HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        if (!isAuthenticated(request)) {
            modelAndView.setViewName("redirect:/login");
            return modelAndView;
        }
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");

        if (picture != null && !picture.isEmpty()) {
            try {
                currentUser.setPicture(picture.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        currentUser.setRealname(updatedUser.getRealname());
        currentUser.setPassword(updatedUser.getPassword());
        currentUser.setPhone(updatedUser.getPhone());
        currentUser.setBirthday(updatedUser.getBirthday());
        currentUser.setEmail(updatedUser.getEmail());
        currentUser.setAddress(updatedUser.getAddress());
        currentUser.setSex(updatedUser.getSex());

        userRepository.save(currentUser);

        modelAndView.addObject("user", currentUser);
        modelAndView.addObject("successMessage", "個人資料已成功更新！");
        modelAndView.setViewName("htmls/profileDetails");
        return modelAndView;
    }

    @PostMapping("/editProfile")
    public String editProfile(@RequestParam("realname") String realname,
                              @RequestParam("phone") String phone, @RequestParam("email") String email,
                              @RequestParam("address") String address, @RequestParam("sex") String sex,
                              @RequestParam("birthday") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate birthday,
                              @RequestParam("picture") MultipartFile file,
                              HttpSession session, RedirectAttributes redirectAttributes) {

        try {
            User updatedUser = (User) session.getAttribute("user");

            // 用戶如果session被踢出 有下面這行才不會報錯說 找不到updatedUser 會被直接踢回登入頁面 莫名其妙 (可以的話+
            if (updatedUser == null) {
                redirectAttributes.addFlashAttribute("message", "sessionMiss");
                return "redirect:/login";
            }
            // 如果有新的文件上傳，更新用戶頭像
            if (!file.isEmpty()) {
                byte[] pictureBytes = file.getBytes();
                updatedUser.setPicture(pictureBytes);
            }

            // 更新用戶資料
            updatedUser.setRealname(realname);
            updatedUser.setPhone(phone);
            updatedUser.setEmail(email);
            updatedUser.setAddress(address);
            updatedUser.setSex(sex);
            updatedUser.setBirthday(birthday);

            User savedUser = userService.updateUserProfile(updatedUser);

            // 更新 session 中的用戶資料
            session.setAttribute("user", savedUser);

            // 使用 RedirectAttributes 添加一條成功消息，以便在個人資料頁面顯示
            redirectAttributes.addFlashAttribute("message", "個人資料更新成功！");

        } catch (IOException e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("message", "更新失敗，請稍後再試！");
        }
        return "redirect:/profileDetails"; // 將用戶重定向回個人資料頁面
    }

    @GetMapping("/checkout")
    public String checkout(
            @ModelAttribute("cvsStoreName") String cvsStoreName
            , HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {
        System.out.println("checkout");
        if (!isAuthenticated(request)) {
            redirectAttributes.addFlashAttribute("loginBeforeCheckout", "請先登入");
            return "redirect:/login";

        }
        model.addAttribute("totalprice", 1);
        redirectAttributes.addAllAttributes(Collections.list(request.getParameterNames()));
        System.out.println(cvsStoreName + request.getParameter("CVSStoreName"));
        return "htmls/checkout";
    }

}
