package MyTest.oni;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateCustomOrder
 */
@WebServlet("/CreateCustomOrder")
public class CreateCustomOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateCustomOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/**
		 * 他自己的localstorage儲藏的購物車 去完成結帳
		 * 金融那邊生成訂單 唯一編號=流水號 
		 * 那個訂單編號傳過來這一支servlet 
		 * 
		 * 
		 * 去 查找  訂單資料表 撈購買資料(Json的order_detail、商品、購買人、收件人)
		 * 
		 * 然後拆解後就可讀到了，用來生成訂單!
		 * */
		
//		使用Gson拆解 然後讀取、之後生成物流訂單(需要訂單資料表多一項專門存放物流狀態資料Json) 
//		訂單編號(pk)|會員編號(fk)| 詳細(JSON)| 金流 (JSON) | 物流編號廠商生成、不重複!| 
		
//					|物流資料 (JSON) | Time | 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
