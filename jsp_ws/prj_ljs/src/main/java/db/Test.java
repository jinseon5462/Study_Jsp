package db;

import java.sql.Connection;

public class Test {

	public static void main(String[] args) {
		Connection con = DBcon.getConnection();
		if(con != null) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
	}

}
