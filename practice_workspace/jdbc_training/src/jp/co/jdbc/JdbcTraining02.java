package jp.co.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JdbcTraining02 {
	
	pub
	
	public void selectAllEmployee() {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null; 
		
		try {

	    Class.forName("oracle.jdbc.driver.OracleDriver");
	    
	    connection =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1", "education", "systemsss");
		
		String sql ="SELECT * FROM emp e INNER JOIN dept d ON e.deptno = d.deptno";
		
		preparedStatement=connection.prepareStatement(sql);
		
		resultSet=preparedStatement.executeQuery();
		
		System.out.println("社員NO\t社員名\t\t部署");
		while(resultSet.next()) {
			System.out.println(resultSet.getString("empno")+"\t\t");
			System.out.print(resultSet.getString("ename") + "\t");
			System.out.print(resultSet.getString("dname") + "\t");
		}
	}

}

