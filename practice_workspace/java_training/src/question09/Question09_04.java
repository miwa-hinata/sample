package question09;

import java.util.Random;

public class Question09_04 {
	
	public static void main(String[] args) { 
		 int result = new Random().nextInt(4) + 1; 
		 System.out.println("福引きを購入します"); 
		 
		 switch(result){
		 
		 case 1:
		  //変数resultが1の場合の処理
		  System.out.println("大当たり"); 
		  break;
		 
		 case 2:
		  System.out.println("当たり");
		  break;
		 
		 case 3:
		  System.out.println("外れ");
		 
		 default:
	      System.out.println("大外れ"); 
	      break;
		 

		 } 
		 } 
}
		 
