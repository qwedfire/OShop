package com.example.demo.controller.cart;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.demo.controller.user.User;

@WebServlet("/ShowImage")
public class ShowImage extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 讀取商品ID
        String productID = request.getParameter("prodID");
//        HttpSession session = request.getSession(); //獲取session
//        User user = (User) session.getAttribute("user"); //從session中獲取user對象
//        int userID = user.getId();
        // 從數據庫中查詢圖像數據
        try{
        	Class.forName("com.mysql.cj.jdbc.Driver");
         	Properties prop=new Properties();
         	prop.put("user", "root");
         	prop.put("password", "root");
         	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/os_shop",prop);
         	PreparedStatement stmt = conn.prepareStatement("SELECT img FROM os_product WHERE id = ?");
            stmt.setInt(1, Integer.parseInt(productID));
            ResultSet resultSet = stmt.executeQuery();
            
            if (resultSet.next()) {
                // 从数据库中获取图像数据
                byte[] imageBytes = resultSet.getBytes("pic");
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);

                // 将图像数据写入响应
                response.setContentType("image/png");
                response.setContentLength(imageBytes.length);
                OutputStream outputStream = response.getOutputStream();
                outputStream.write(imageBytes);
                outputStream.flush();
                outputStream.close();
                conn.close();
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
