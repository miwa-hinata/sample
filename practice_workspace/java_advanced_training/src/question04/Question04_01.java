package question04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Question04_01 {

	public static void main(String[] args) throws IOException{
		// TODO 自動生成されたメソッド・スタブ
		
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		 String str = br.readLine();
		 int num = Integer.parseInt(str);
		 
		 int num2=(int)(num*0.7);
		 
		 System.out.println("3 割引きで "+num2+"円です");

	}

}
