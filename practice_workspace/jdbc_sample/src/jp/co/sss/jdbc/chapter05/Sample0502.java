package jp.co.sss.jdbc.chapter05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jp.co.sss.jdbc.chapter01.DBManager;

public class Sample0502 {
    public static void main(String[] args) throws IOException {
        // 更新処理を実行
        update();
    }

    /**
     * 社員情報を更新する
     */
    public static void update() {
    	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
        	System.out.println("社員を更新します。");

            // 更新したいレコードの主キーを入力
            System.out.println("社員IDを入力してください。");
            String empId = br.readLine();

            // 更新する値を入力
            System.out.println("社員名を入力してください。");
            String empName = br.readLine();
            System.out.println("性別を入力してください（男性：1、女性：2）。");
            String gender = br.readLine();
            System.out.println("生年月日を入力してください（西暦年/月/日）。");
            String birthday = br.readLine();

            // DBに接続
            

            // SQL文を準備
            

            // ステートメントを作成
            

            // 入力値をバインド
            

            // SQL文を実行
            
            
            System.out.println(cnt + "件のデータを更新しました。");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	// クローズ処理
            DBManager.close(preparedStatement);
            DBManager.close(connection);
        }
    }
}
