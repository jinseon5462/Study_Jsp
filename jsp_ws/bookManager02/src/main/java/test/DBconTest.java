package test;

import java.sql.Connection;

import db.DBcon;

public class DBconTest {

	public static void main(String[] args) {
		Connection conn = null;
		conn = DBcon.getConnection();
		if(conn != null) {
			System.out.println("DB접속 성공");
		}else {
			System.out.println("DB접속 실패");
		}
	}
}
