//追加問題

//パッケージ名 day02
//クラス名 Lesson3.java

//3つの任意の整数をコンソールから入力し、税込み金額（消費税は8％計算）の合計を出しなさい。
//また、平均金額を求めなさい。
//キャストしてすべて整数値で求めること。
//【出力例】
//金額①を入力してください>>210
//金額②を入力してください>>300
//金額③を入力してください>>350
//①から③の合計は税込み928円
//①から③の平均は税込み309円


//コンソールから入力＝BufferedReaderを使う
//計算がある問題の時点で文字列型では計算できない

//-----------------------------------------------------------

package day02;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Lesson3 {

	public static void main(String[] args) throws IOException {

		//まずは、コンソールから金額を入力させる
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.print("金額①を入力してください>>");
		String cash1 = br.readLine();
		
		System.out.print("金額②を入力してください>>");
		String cash2 = br.readLine();
		
		System.out.print("金額③を入力してください>>");
		String cash3 = br.readLine();
		
		//入力した金額をString型からint型に変換する
		int price1 = Integer.parseInt(cash1);
		int price2 = Integer.parseInt(cash2);
		int price3 = Integer.parseInt(cash3);
		
		//消費税の計算をする
		int taxPrice1 = (int)(price1 * 1.08);
		int taxPrice2 = (int)(price2 * 1.08);
		int taxPrice3 = (int)(price3 * 1.08);
		
		//金額の合計を出す
		int sum = taxPrice1 + taxPrice2 + taxPrice3;
		
		//合計金額を表示
		System.out.println("①から③の合計は税込み" + sum + "円");
		
		//平均を計算
		int average = (int)(sum / 3);
		
		//平均金額を表示
		System.out.println("①から③の平均は税込み" + average + "円");

	}

}