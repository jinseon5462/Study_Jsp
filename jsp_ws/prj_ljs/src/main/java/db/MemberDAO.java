package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.MemberVO;

public class MemberDAO {
	
	public int idCheck(String id) {
		int result = 0;
		try {
			Connection conn = DBcon.getConnection();
			String query = "SELECT COUNT(id) cnt FROM member WHERE id = ?";
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
		try {
			Connection conn = DBcon.getConnection();
			String query = "INSERT INTO member (id, pw, name, tel) VALUES(?, ?, ?, ?)";
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
	
	
	
	public MemberVO selectOne(String id) {
		MemberVO member = new MemberVO();
		Connection conn = DBcon.getConnection();
		String query = "SELECT * FROM member WHERE id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			member.setId(rs.getString("id"));
			member.setPw(rs.getString("pw"));
			member.setName(rs.getString("name"));
			member.setTel(rs.getString("tel"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}
	
	public ArrayList<MemberVO> selectAll(){
		ArrayList<MemberVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		String query = "SELECT * FROM member";
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
	
	public void update(MemberVO member) {
		Connection conn = DBcon.getConnection();
		String query = "UPDATE member SET pw = ?, name = ?, tel = ? WHERE id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getTel());
			pstmt.setString(4, member.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public int delete(String id) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "DELETE FROM member WHERE id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int loginCheck(String id, String pw) {
		Connection conn = DBcon.getConnection();
		String query = "SELECT * FROM member WHERE id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(pw.equals(rs.getString("pw"))) {
					return 1;	//로그인 성공
				}else {
					return 0;	//비밀번호 오류
				}
			}
			return -1;	// 존재하지않는 아이디
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -2;	// ? 기본값으로 -2 설정
	}
	
	public int checkEvent(String id) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "SELECT COUNT(id) cnt FROM event_tbl WHERE id = ?";
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
	
	public int regEvent(String id) {
		int result = 0;
		Connection conn = DBcon.getConnection();
		String query = "INSERT INTO event_tbl (id) VALUES(?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
}
