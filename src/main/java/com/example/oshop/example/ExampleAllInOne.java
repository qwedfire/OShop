package com.example.oshop.example;

import com.example.oshop.ecpay.payment.integration.AllInOne;
import com.example.oshop.ecpay.payment.integration.domain.*;


public class ExampleAllInOne {
	public static AllInOne all;
	public static void main(String[] args) {
		initial();
		System.out.println("aioCheckOutALL: " + genAioCheckOutALL());
	}
	private static void initial(){
		all = new AllInOne("");
	}
	public static String genAioCheckOutALL(){
		AioCheckOutALL obj = new AioCheckOutALL();
		obj.setMerchantTradeNo("testCompany0004");
		obj.setMerchantTradeDate("2017/01/01 08:05:23");
		obj.setTotalAmount("50");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		String form = all.aioCheckOut(obj, null);
		return form;
	}
}
