package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public int loginCheck(String id, String pw) {
		Connection conn = DBcon.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "SELECT * FROM userTbl WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))) {
					result = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
