package test;

import java.sql.Connection;

import db.DBcon;

public class DBconTest {

	public static void main(String[] args) {
		Connection conn = DBcon.getConnection();
		
		if(conn != null) {
			System.out.println("연결 성공");
		}else {
			System.out.println("연결 성공");
		}

	}

}
