package DB;
import java.sql.*;

public class DB_conn {
	private String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
	private String user = "project";
	private String pass = "project";
	private Connection conn = null;
	private String sql = null;
	
	public void DB_connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("드라이버 검색 성공!");
		} 
		catch (ClassNotFoundException e) {
			System.err.println("error = " + e.getMessage());
			System.exit(1);
		}
		try {
			conn = DriverManager.getConnection(url, user, pass);
		} 
		catch (SQLException e) {
			System.err.println("sql error = " + e.getMessage());
			System.exit(1);
		}
	}
	
	public int login(String id, String pwd) {
		int success = -1;
		ResultSet result;
		DB_connect();
		
		try {
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			
			sql="select * from member where id='" + id + "' and pwd='" + pwd + "'";
			result = stmt.executeQuery(sql);
			
			if(result.next()) 
				success = 1;
			else 
				success = -1;
			
			conn.commit();
			conn.setAutoCommit(true);
			stmt.close();
			conn.close();	
		} 
		catch (Exception e) {
			System.err.println("sql error = " + e.getMessage());
		}
		
		return success;
	}
	
	public int register(String id, String name, String pwd) {
		DB_connect();
		int success = -1;
		int result = 0;
		
		try {
			Statement stmt = conn.createStatement();
			sql="insert into member values('" + id + "', '" + name + "', '" + pwd + "')";
			
			result = stmt.executeUpdate(sql);
			success = 1;
			conn.commit();
			stmt.close();
			conn.close();	
		} 
		catch (Exception e) {
			success = -1;
			//return success;
		}
		
		return success;
	}
}