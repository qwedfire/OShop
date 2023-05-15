package MyTest.oni;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecpay.logistics.integration.AllInOne;
import ecpay.logistics.integration.domain.ExpressMapObj;
import tw.web.api.GoSys;

/**
 * Servlet implementation class Reciver
 */
@WebServlet("/Reciver")
public class StoreReciver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreReciver() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		request.setCharacterEncoding("utf-8");
		
		
//		接收到了使用者選擇的商店(把它存進去資料庫!)
//		方便最後結帳時 一併使用  
//		按下結帳  => 另一個Servlet => 金流結帳成功後，物流去撈資料庫、生成訂單。
		response.setContentType("text/html;charset=UTF-8");
		Collections.list(request.getParameterNames())
				.forEach(e->{
					if("CVSStoreName".equals(e) || "CVSAddress".equals(e)) {
						try {
							String ch=new String(request.getParameter(e).getBytes("ISO-8859-1"), "UTF8");
							response.getWriter().append(e+":"+ch+"<br>");
							GoSys.println(e+":"+request.getParameter(e));
						} catch (UnsupportedEncodingException e1) {
							System.out.println("商店轉換編碼型態錯誤");
							e1.printStackTrace();
						} catch (IOException e1) {
							System.out.println("wirter錯誤");
							e1.printStackTrace();
						}
					}else {
						try {
							response.getWriter().append(e+":"+request.getParameter(e)+"<br>");
						} catch (IOException e1) {
							System.out.println("wirter錯誤");
							e1.printStackTrace();
						}
						GoSys.println(e+":"+request.getParameter(e));
					}
				});
		
			}
		/**
		 * 把選擇的商店寫入資料庫
		 * */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
