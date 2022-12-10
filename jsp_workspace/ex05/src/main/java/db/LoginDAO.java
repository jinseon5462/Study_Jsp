package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import domain.MemberVO;

public class LoginDAO {
	public int loginCheck(String id, String pw) {
		int result = -1;
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/maria");
			Connection con = ds.getConnection();
			String query = "SELECT * FROM member WHERE id = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("id").equals(id) && rs.getString("pw").equals(pw)) {
					result = 1;
				}
			}
			return 0;
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insert(MemberVO member) {
		int result = 0;
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/maria");
			Connection con = ds.getConnection();
			String query = "INSERT INTO member (id, pw, name, tel) VALUES(?, ?, ?, ?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getTel());
			result = pstmt.executeUpdate();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int idCheck(String id) {
		InitialContext ic;
		int result = 0;
		try {
			ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/maria");
			Connection con = ds.getConnection();
			String query = "SELECT COUNT(id) cnt FROM member WHERE id = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt("cnt");	//1이면 아이디 중복
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
