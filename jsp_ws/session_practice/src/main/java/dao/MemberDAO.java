package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	public int idCheck(String id) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "SELECT COUNT(id) cnt FROM member WHERE id = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int loginCheck(String id, String pw) {
		int result = 0;
		String query = "SELECT COUNT(id) cnt FROM member WHERE id=? AND pw=?";
		Connection conn = DBcon.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
