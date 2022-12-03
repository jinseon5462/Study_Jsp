package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public int loginCheck(String id, String pw) {
		Connection conn = DBcon.getConnection();
		String loginCheck_query = "SELECT * FROM userTbl WHERE id = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(loginCheck_query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))) {
					return 1;	//비밀번호 일치, 로그인성공
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return 0;	//로그인 실패
	}
}
