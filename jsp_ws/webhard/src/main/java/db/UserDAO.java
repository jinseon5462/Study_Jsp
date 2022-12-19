package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.UserVO;

public class UserDAO {
	
	public int idCheck(String id) {
		int result = 0;
		try {
			Connection conn = DBcon.getConnection();
			String query = "SELECT COUNT(id) cnt FROM user WHERE id = ?";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int loginCheck(String id, String pw) {
		Connection con = DBcon.getConnection();
		String query = "SELECT * FROM user WHERE id = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))) {
					return 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int insert(UserVO user) {
		int result = 0;
		try {
			Connection conn = DBcon.getConnection();
			String query = "INSERT INTO user (id, pw) VALUES(?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
