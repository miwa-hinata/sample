/**
 * 【EmployeeDAO DB操作をまとめたクラス】
 * 　public List<Employee> findAll()メソッドを作成し、Lいst型のemployeesを戻り値とする
 * 　全件検索を行う
 * 　検索結果はemployeeクラスにsetし、List型employeesに追加する
 * 
 * 
 * 【main　実行用のクラス　作成済み】
 * 　EmployeeDAOをオブジェクト生成
 * 　全件検索のメソッドを呼び出す
 * 　検索結果がList型のemployeesに入っているので拡張for文で出力
 * 
 * 【DBManager　DBとの接続用のクラス　作成済み】
 *  
 */
package main;

import java.util.List;

import db.EmployeeDAO;
import dto.Employee;

public class main {

	public static void main(String[] args) {
		//データベースアクセス
		EmployeeDAO employeeDAO = new EmployeeDAO();

		//全件検索
		List<Employee> employees;

		try {
			employees = employeeDAO.findAll();
			for (Employee emp : employees) {
				System.out.println(emp);
			}

		} catch (Exception e) {
			System.out.println("システムエラーが発生しました");
			e.printStackTrace();
		}
		System.out.println("システムを終了します。");
	}

}
