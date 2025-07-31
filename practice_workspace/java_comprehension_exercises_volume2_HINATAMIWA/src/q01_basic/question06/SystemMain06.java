package q01_basic.question06;

import java.io.IOException;

public class SystemMain06 extends Member {

	public static void main(String[] args) throws NumberFormatException, IOException {

		ConsoleReader cr = new ConsoleReader();
		int inputId = 0;
		String inputPassword = null;
		String name = "Miura Manabu";
		int age = 28;
		int rank = 2;

		System.out.println("---CREATE MEMBER DATA---");
		//TODO ここから実装する
		try{
			cr.inputNumber();
		} catch(NumberFormatException e) {
			System.out.println("error!");
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
			return;
		}
		
		try {
			cr.inputString();
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		Member member=new Member(inputId,inputPassword,name,age,rank) ;
		member.showMember();
			
		}
		

	}


