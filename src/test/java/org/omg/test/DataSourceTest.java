package org.omg.test;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DataSourceTest {
	
	@Inject
	private DataSource dataSource;
	@Test
	public void testDataSource() {
		Connection conn = null;
		
		try {
			conn = dataSource.getConnection();
			System.out.println("root-context.xml에서 DataSource 객체를 생성하여 스프링 빈으로 등록 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}













