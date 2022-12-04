package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
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
				if(rs.getString("id").equals(id) && rs.getString("pw").equals(pw)) {
					result = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
