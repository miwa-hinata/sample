package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import dto.Employee;

public class EmployeeDAO {
	
	/**
	 * 全件表示
	 */
	public List<Employee> findAll() throws ClassNotFoundException, SQLException {
		
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null; 
		Employee employee=null;
	    
		try {
			connection=DBManager.getConnection();
			
			String sql="SELECT * FROM employee";
			
			preparedStatement=connection.prepareStatement(sql);
			
			resultSet=preparedStatement.executeQuery();
			
			while(resultSet.next()){
				employee.setEmpId(resultSet.getInt("emp_id"));
				employee.setEmpName(resultSet.getString("emp_name"));
				employee.setGender(resultSet.getInt("gender"));
				employee.setBirthday(resultSet.getString("birthday"));
			}
		} finally {
		
			DBManager.close(resultSet);
		    
			DBManager.close(preparedStatement);
		
			DBManager.close(connection);
		}
		
		return employees;
	}
	
}
}






