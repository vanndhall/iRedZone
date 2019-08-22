package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DbOracleConnection {

	private static DbOracleConnection instance;
	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mysql://localhost:3306/iredzone?serverTimezone=GMT&useSSL=false";
	private static final String DB_USER = "c##tester";
	private static final String DB_PASSWORD = "1234";

	private DbOracleConnection() {}

	public static DbOracleConnection getInstance() {
		if (instance == null) {
			instance = new DbOracleConnection();
		}
		return instance;
	}

	public static Connection getDBConnection() {

		Connection dbConnection = null;

		try {
			Class.forName(DB_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

		try {
			dbConnection = DriverManager.getConnection(
					DB_CONNECTION, DB_USER,DB_PASSWORD);
			return dbConnection;

		} catch (SQLException e) {

			System.out.println(e.getMessage());

		}

		return dbConnection;
	}
}
