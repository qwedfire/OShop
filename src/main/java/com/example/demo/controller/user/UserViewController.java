package com.example.demo.controller.user;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.Collections;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//import org.springframework.web.bind.annotation.SessionAttribute;



@Controller
public class UserViewController {
	private boolean isAuthenticated(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    return session.getAttribute("user") != null;
	}
	
	@Autowired
    private UserRepository userRepository;
	@Autowired
    private UserService userService;

	
    @GetMapping(value={"/index","/"})
    public String homePage(@ModelAttribute("welcomeMessage") String welcomeMessage, Model model) {
        // 判斷是否有需要顯示的歡迎訊息
        if (!welcomeMessage.isEmpty()) {
            // 將歡迎訊息存儲在 model 中
            model.addAttribute("welcomeMessage", welcomeMessage);
        }

        // 返回主頁面
        return "htmls/index";
    }

//    @GetMapping("/register")
//    public String userRegisterPage() {
//        return "htmls/signin";
//    }
    @GetMapping("/cart")
	public String cart(HttpServletRequest request ,RedirectAttributes redirectAttributes) {
		System.out.println("cart");
		if(isAuthenticated(request)) {
			return "htmls/cart";
		}else {
			redirectAttributes.addFlashAttribute("loginBeforeCheckout","請先登入");
			return "redirect:/login";
		}
		
		
	}
    @GetMapping("/login")
    public String userLoginPage(@RequestParam(required = false) String error, Model model) {
        if (error != null) {
            // 登入失敗，返回錯誤信息
            model.addAttribute("error", "Invalid username or password");
        }
        return "htmls/login";
    }
    
//    @GetMapping("/products")
//    public String productsPage() {
//    	
//        return "products";
//        
//    }
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
            // 驗證通過，將用戶信息存儲在 session 中
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            // 設定需要傳遞給下一個 request 的屬性值
            redirectAttributes.addAttribute("welcomeMessage", "Welcome " + user.getRealname() + "!");
            System.out.println("導向主畫面");
            // 重定向到個人頁面
            return "redirect:/index";
            
        } else {
        	System.out.println("登入失敗!");
        	
        	redirectAttributes.addFlashAttribute("logingg","logingg");
            // 驗證失敗，返回錯誤信息
            return "redirect:/login";
        }
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
            if (updatedUser ==null) {
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
    	try {
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
		    redirectAttributes.addFlashAttribute("SinginMessage", "successSignin");
    	}catch(Exception ee) {
    		ee.printStackTrace();
    		System.out.println("換張圖片也不行! 圖片太大!");
    	}
        // 將用戶信息保存到數據庫中
        return "redirect:/login";
    }
    @GetMapping("/checkout")
	public String checkout(
			@ModelAttribute("cvsStoreName") String cvsStoreName
			,HttpServletRequest request,Model model, RedirectAttributes redirectAttributes) {
		System.out.println("checkout");
		if (!isAuthenticated(request)) {
//			redirectAttributes.addFlashAttribute("loginBeforeCheckout","請先登入");
//			return "redirect:/login";
             
        }
		redirectAttributes.addAllAttributes(Collections.list(request.getParameterNames()));
		System.out.println(cvsStoreName+request.getParameter("CVSStoreName"));
		return "htmls/checkout";    
	}

    // 在此添加其他用於返回視圖的方法
}
