package org.omg.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCDriverTest {

	@Test
	public void testJdbcDriver() {
		
		Connection conn;
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/omg", "crew", "awesomecrew");
			System.out.println("JDBC 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}










