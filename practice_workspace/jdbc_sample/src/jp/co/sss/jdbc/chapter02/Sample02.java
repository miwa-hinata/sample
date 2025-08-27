package jp.co.sss.jdbc.chapter02;

import jp.co.sss.jdbc.chapter01.DBManager;

public class Sample02 {
	public static void main(String[] args) {
		// 検索処理を実行
		select();
	}

	/**
	 * 全ての社員情報を検索する
	 */
	public static void select() {
		//必要なオブジェクトの呼び出し

		try {
			// DBに接続
			

			// SQL文を準備
			

			// ステートメントを作成
			

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
