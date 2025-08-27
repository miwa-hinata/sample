package jp.co.sss.jdbc.chapter03;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import jp.co.sss.jdbc.chapter01.DBManager;

public class Sample03 {
    public static void main(String[] args) throws IOException {
        // 検索処理を実行
        selectByEmpName();
    }

    /**
     * 社員名で社員情報を検索する
     *
     * @param empName
     *            検索キーワード(社員名)
     */
    public static void selectByEmpName() {
    	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

    	//必要なオブジェクトの呼び出し
        

        try {
        	// 検索キーワードを入力
            System.out.println("社員名を入力してください。");
            String empName = br.readLine();

            // DBに接続
            

            // SQL文を準備
            

            // ステートメントを作成
            

            // 入力値をバインド
            

            // SQL文を実行
            

            // レコードを出力
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // クローズ処理
            DBManager.close(resultSet);
            DBManager.close(preparedStatement);
            DBManager.close(connection);
        }
    }
}
