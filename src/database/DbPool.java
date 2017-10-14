package database;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;


public class DbPool {
	private Connection dbConnection = null;
	public void getConne() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:comp/env");
			DataSource dSource = (DataSource) envContext.lookup("jdbc/dbtom");
			dbConnection = dSource.getConnection();
			System.out.println("link susccess");
		} catch (Exception e) {
			System.out.println("link fail");
		}
	}
	public Connection getDbConnection() {
		if (dbConnection == null) {
			getConne();
		}
		return dbConnection;
	}
	public void setDbConnection(Connection dbConnection) {
		this.dbConnection = dbConnection;
	}
	/**
	 * public ResultSet query (String sql) {
		ResultSet rs =null;
		try {
			Statement statement = this.dbConnection.createStatement();
			rs = statement.executeQuery(sql);
		}catch (Exception e) {}
		return rs;
	}*/
}
