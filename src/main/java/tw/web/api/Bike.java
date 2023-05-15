package tw.web.api;

import java.io.Serializable;

public class Bike extends Object implements Serializable{
	protected double speed=0;  // main for子類別的可以存儲 相同package也可
	
	//如果沒有 Bike()的存在  但有Bike(String...etc) 
	//則子類需要寫自己的 constructor Scooter(){}
	public String s="Oni";
	public Bike() {
		
		// 建構式 只有new才會出現
		System.out.println("bike~~~");
	}
	
	public Bike(String color) {
		System.out.printf("bike~ color=%s",color);
	}
	public void upSpeed(double a) {
		
		speed=speed<5?speed+=a:speed*1.1;
	}
	public void downSpeed() {
		speed=speed*0.6<1?speed=0:speed*0.6;
	}
	public double getSpeed() {
		return speed;
	}
	
	@Override
	public String toString() { 
		//return "Oni";
		return super.toString();
	}
	
}
