package myproject.com.model;


import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

	private static String dbUrl=null;
	private static Connection connection=null;
	
	public static String getDbUrl() {
		return dbUrl;
		
	}
	
	public static void setDbUrl(String dbUrl) {
		DatabaseConnection.dbUrl=dbUrl;
		
	}
	
	public static Connection getConnection() {
		return connection;
		
	}
	
	public static void setConnection(Connection connection) {
		DatabaseConnection.connection=connection;
		
	}
	
	public static boolean createConnection(String host, String port, String sid, String username, String password ) {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String oracleHome = System.getenv("ORACLE_HOME");
			String tnsAdmin = oracleHome + "/NETWORK/ADMIN/";
			System.setProperty("oracle.net.tns_admin", tnsAdmin);
			dbUrl = "jdbc:oracle:thin:@"+host+":"+port+":"+sid;
			connection = DriverManager.getConnection(dbUrl, username, password);
			connection.setAutoCommit(false);
			setConnection(connection);
			System.out.println("S-a efectuat conexiunea la baza de date");
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
			
	}
	 public static void closeConnection() {
		 try {
			 if ( connection!=null ) {
				 connection.close();
				 System.out.println("Conexiunea la baza de date a fost inchisa");
			 }
		 } catch (Exception ex) {
			 ex.printStackTrace();
	 }
	 }
}
