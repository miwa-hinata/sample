package jp.co.sss.jdbc.chapter04;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import jp.co.sss.jdbc.chapter01.DBManager;

public class Sample0401 {
	public static void main(String[] args) throws IOException {
		// 検索処理を実行
		selectByEmpId();
	}

	/**
	 * 社員IDで社員情報を検索する
	 *
	 * @param empId
	 *            検索対象の社員ID
	 */
	public static void selectByEmpId() {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		//必要なオブジェクトの呼び出し
		

		try {
			// 検索キーワードを入力
			System.out.println("社員IDを入力してください。");
			String empId = br.readLine();

			// DBに接続
			

			// SQL文を準備（入力値を連結）
			

			// ステートメントを作成
			

			// SQL文を実行
			

			// レコードを出力
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(resultSet);
			DBManager.close(preparedStatement);
			DBManager.close(connection);
		}
	}
}
