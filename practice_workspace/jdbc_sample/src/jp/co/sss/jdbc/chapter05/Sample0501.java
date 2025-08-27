package jp.co.sss.jdbc.chapter05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import jp.co.sss.jdbc.chapter01.DBManager;

public class Sample0501 {
    public static void main(String[] args) throws IOException {
        // 登録処理を実行
        insert();
    }

    /**
     * 社員情報を登録する
     *
     * @param empId
     *            登録する値(社員ID)
     * @param empName
     *            登録する値(社員名)
     * @param gender
     *            登録する値(性別)
     * @param birthday
     *            登録する値(生年月日)
     */
    public static void insert() {
    	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    	//必要なオブジェクトの呼び出し
        

        try {
        	System.out.println("社員を登録します。");

            // 登録する値を入力
            System.out.println("社員IDを入力してください。");
            String empId = br.readLine();
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
            
            
            System.out.println(cnt + "件のデータを登録しました。");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(preparedStatement);

            DBManager.close(connection);
        }
    }
}
