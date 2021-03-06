package kr.co.codingmonkey.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try(Connection conn = 
				DriverManager.getConnection("jdbc:log4jdbc:oracle:thin:@db.codingmonkey.co.kr:1521:XE", "MYSPRING", "MYSPRING")) {
				log.info(conn);
			
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
