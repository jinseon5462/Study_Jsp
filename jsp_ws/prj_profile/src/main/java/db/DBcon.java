package db;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.naming.NamingException;

public class DBcon {
	public static Connection getConnection() {
		Connection con = null;
		try {
			InitialContext ic = new InitialContext();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		return con;
	}

}
