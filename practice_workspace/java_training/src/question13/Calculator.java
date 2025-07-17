package question13;

// 合計値を求める sum()メソッドの作成。 
// 引数は int 型の足される数と、int 型の足す数の 2 種類(引数名は任意)。 
// 2 つの引数の足し算の計算結果を戻り値にする。戻り値の型は int 型。 

public class Calculator {
	//↑クラスの宣言
	
	int sum(int a,int b){
  //↑戻り値の型　変数名（引数１(型の足される引数)、引数２）{
		
		//引数の値を使った合計の計算
		int sum=a+b;
		//計算結果を保存した変数sumを戻り値として使用
		return sum;
		
	}

}
