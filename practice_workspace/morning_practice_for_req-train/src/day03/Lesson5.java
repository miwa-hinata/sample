/* 追加問題

パッケージ名 day03
クラス名 Lesson5.java

 要素数2のboolean型の配列を作成し、以下の手順通りに代入と取得を行いなさい。
 【出力例】
①配列の要素0番目にtrueを代入する。
②コンソールから以下の入力例に沿って入力を行い、表示する。表示の際は配列から値を取得すること
③条件分岐にはswitch文を用いること

【出力例1】
input number[0or1]? >>0
配列の0番目はtrueです。
【出力例2】
input number[0or1]? >>1
配列の1番目はfalseです。
【出力例3】
input number[0or1]? >>2
配列の範囲外の値が入力されました
*/
package day03;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Lesson5 {

	public static void main(String[] args) throws IOException {

		
		// 配列宣言
		boolean[] boolArray = new boolean[2];
		//↑配列→参照型→参照型の場合はデータ府型の初期値が自動的に入る→booleanがたの初期値はfalse→初期値で入っているので書かなくてもOK
		//ex)int[]num→配列→参照型身gい初期値が自動で入る→intの初期値は0→初期値で入っているので書かなくてもOK

		// 0番目に代入
		boolArray[0] = true;
		boolArray[1] = false;//不要だが記述があっても可とする
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("input number[0or1]? >>");
		//変換↓
		int input = Integer.parseInt(br.readLine());
		
        //変数inputの中に入っている値がcaseのどれか、もしくはどれでもないdefoltか
		switch (input) {
		case 0:// caseがフォールスルーになっていなくとも可とする
		case 1:
			System.out.println("配列の" + input + "番目は" + boolArray[input] + "です。");// 表示がハードコーディングの場合は不可
			break;

		default:
			System.out.println("配列の範囲外の値が入力されました");

		}
		//		(参考)if文の場合
		//		if (input == 0 || input == 1) {// ifブロックは2つに分けても可
		//			System.out.println("配列の" + input + "番目は" + boolArray[input] + "です。");
		//		} else {
		//			System.out.println("配列の範囲外の値が入力されました");
		//		}

	}

}






