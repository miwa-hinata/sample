package question07;

public class Question07_01 {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
		
		for(int i=1;i<10;i++) {
			for(int j=1; j<10 ; j++) {
				//1*1、1*2、1*3・・・となるように出力させる
				System.out.print(i*j);
				//数字と数字の間のスペースを出力させる（横列）
				System.out.print(" ");
			}
			//数字と数字の間のスペースを出力させる（縦列）
			System.out.println(" ");
		}

	}

}
