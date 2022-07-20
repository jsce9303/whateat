package Connect;

import java.sql.*;

public class JDBCConnection {

	public Connection conn;
	public ResultSet rs;
	public PreparedStatement pstmt;
	
	public JDBCConnection(String driver, String url, String id, String pass) {
		
		try {
			Class.forName(driver);
			System.out.println("드라이버 연결 성공");
			
			conn = DriverManager.getConnection(url, id, pass);
			System.out.println("DB 연결 성공");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
