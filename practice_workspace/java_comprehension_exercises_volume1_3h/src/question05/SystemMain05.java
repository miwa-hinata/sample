package question05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class SystemMain05 {
	public static void main(String[]args)throws IOException{
		
       System.out.println("年齢を入力してください");
		
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		String str=br.readLine();
		
		int age=Integer.parseInt(str);
		
		if(age<20) {
		 System.out.println("20 歳未満なので、お酒の提供ができません。");
		}
		 
	   
	   int []numberGroup1={3,5,7,9};
	   
	    if(numberGroup1[3]==3) {
	    	System.out.println("配列 numberGroup1 で 4 番目の数値は 3 です。");
	    }  else if (numberGroup1[3]==5) {
	    	System.out.println("配列 numberGroup1 で 4 番目の数値は 5 です。");
	    } else if (numberGroup1[3]==7) {
	        System.out.println("配列 numberGroup1 で 4 番目の数値は 7 です。");
	    } else {
	        System.out.println("配列 numberGroup1 で 4 番目の数値は 3 と 5 と 7 以外の数値です。");
	    }
   

        System.out.println("曜日を日本語で入力してください。");
        
        BufferedReader reader=new BufferedReader(new InputStreamReader(System.in));
		String userDayInput=reader.readLine();
		
		
		switch(userDayInput) {
		  case("月"):
	      System.out.println("Monday");
		  break;
		  
		  case("火"):
	      System.out.println("Tuesday");
		  break;
		 
		  case("水"):
	      System.out.println("Wednesday");
		  break;
		  
		  case("木"):
	      System.out.println("Thursday");
		  break;
		  
		  case("金"):
	      System.out.println("Friday");
		  break;

		  case("土"):
	      System.out.println("Saturday");
		  break;

		  case("日"):
	      System.out.println("Sunday");
		  break;
		}
		
		
		System.out.println("数学の試験結果の点数を入力してください。");
		
		BufferedReader score=new BufferedReader(new InputStreamReader(System.in));
		String num=score.readLine();
		
		int math=Integer.parseInt(num);
		
		System.out.println("科学の試験結果の点数を入力してください。");
		
		BufferedReader a=new BufferedReader(new InputStreamReader(System.in));
		String number=score.readLine();
		
		int science=Integer.parseInt(number);
		
		if(math>=60 && science>=60) {
			System.out.println("数学と科学共に合格です。");
	     
		}else if(math>=60 || science>=60) {
			System.out.println("数学か科学のどちらかが合格です。");
		}else {
			System.out.println("どちらも不合格です。");
			
			
		}
	}
	
	}    	
	
