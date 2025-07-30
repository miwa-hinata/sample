package day09.q01;

import java.io.IOException;

public class ComPlayer implements Playable {
	
	public int doJanken()throws IOException {
		
		 int randomValue = (int)(Math.random() * 2);
	        System.out.println(randomValue);
		System.out.println("コンピュータは"+randomValue+"を選んだ");
		
		return randomValue;
	}


}
