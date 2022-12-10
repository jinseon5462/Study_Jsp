package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import common.ManagerVO;

public class LoginDAO {
	public int loginCheck(String id, String pw) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM userTbl WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(pw.equals(rs.getString("pw"))) {
					return 1;	//비밀번호 일치 로그인 성공
				}else if(!pw.equals(rs.getString("pw"))){
					return 2;	//비밀번호 오류
				}
				return 0;	//존재하지 않는 아이디
			}
			if(id.equals("") && pw.equals("")) {
				return -2;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return -1;	// 오류
	}
	
	public String showName(String id) {
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM userTbl WHERE id = ?";
		String name = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			name = rs.getString("name");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return name;
	}
}
