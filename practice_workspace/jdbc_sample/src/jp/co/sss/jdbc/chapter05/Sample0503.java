package jp.co.sss.jdbc.chapter05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jp.co.sss.jdbc.chapter01.DBManager;

public class Sample0503 {
    public static void main(String[] args) throws IOException {
        // 削除処理を実行
        delete();
    }

    /**
     * 社員情報を削除する
     */
    public static void delete() {
    	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
        	System.out.println("社員を削除します。");

            // 削除したいレコードの主キーを入力
            System.out.println("社員IDを入力してください。");
            String empId = br.readLine();

            // DBに接続
            

            // SQL文を準備
            

            // ステートメントを作成
            

            // 入力値をバインド
            

            // SQL文を実行
            
            
            System.out.println(cnt + "件のデータを削除しました。");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	// クローズ処理
            DBManager.close(preparedStatement);
            DBManager.close(connection);
        }
    }
}
