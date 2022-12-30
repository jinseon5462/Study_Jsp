package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.MemberVO;

public class MemberDAO {
	public int checkId(String id) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "SELECT COUNT(id) cnt FROM ajaxmember WHERE id = ?";
		try {
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
	
	public int insert(MemberVO member) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "INSERT INTO ajaxmember (id, pw, name, tel) VALUES (?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getTel());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int loginCheck(String id, String pw) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "SELECT pw FROM ajaxmember WHERE id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(pw.equals(rs.getString("pw"))) {
					result = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<MemberVO> getList(){
		ArrayList<MemberVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		String query = "SELECT * FROM ajaxmember";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberVO member = new MemberVO();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setTel(rs.getString("tel"));
				list.add(member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
