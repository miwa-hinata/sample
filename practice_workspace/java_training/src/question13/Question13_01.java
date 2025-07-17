package question13;

public class Question13_01 {
	
	public static void main(String[]args) {
		
		//Calculatorクラスをkeisannという変数名でオブジェクト生成
		Calculator keisann = new Calculator();
		
		//戻り値の受取用の変数を作成 = sum()の呼び出し
		int result=keisann.sum(1 , 2);
		
		System.out.println("足し算の結果は"+result+"です");
		
	}

}
