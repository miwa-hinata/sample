package question04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Question04_02 {

	public static void main(String[] args) throws IOException{
		// TODO 自動生成されたメソッド・スタブ
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		 String str = br.readLine();
		 int num = Integer.parseInt(str);
		 
		 String str2 = br.readLine();
		 int num2 = Integer.parseInt(str2);
		 
		 String str3 = br.readLine();
		 int num3 = Integer.parseInt(str3);
		 
		 int sum=(int)((num*0.7)+(num2*0.7)+(num3*0.7));
		 int average=sum/3;
		 
		 System.out.println("合計"+sum+"円");
		 System.out.println("平均"+average+"円");
		 

	}

}
