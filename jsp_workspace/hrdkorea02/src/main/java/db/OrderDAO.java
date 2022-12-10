package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import common.ListVO;
import common.OrderVO;

public class OrderDAO {
	public void insert(OrderVO order) {
		Connection conn = DBcon.getConnection();
		String query = "INSERT INTO TBL_ORDER_202101 (ORDERNO, SHOPNO, ORDERDATE, PCODE, AMOUNT)"
				+ " VALUES((SELECT IFNULL(MAX(ORDERNO) + 1, 20210001) FROM TBL_ORDER_202101 odt), ?, ?, ?, ?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, order.getShopno());
			pstmt.setString(2, order.getOrderdate());
			pstmt.setString(3, order.getPcode());
			pstmt.setInt(4, order.getAmount());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ListVO> selectAll() {
		ArrayList<ListVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		String query = "SELECT to2.SHOPNO, ts.SHOPNAME, to2.ORDERNO, to2.ORDERDATE, to2.PCODE, tp.PNAME, to2.AMOUNT, tp.COST, (tp.COST * to2.AMOUNT) custprice, ((tp.COST * to2.AMOUNT) - (tp.COST * to2.AMOUNT * (ts.DISCOUNT/100))) discountprice"
				+ " FROM TBL_SHOP_202101 ts , TBL_PRODUCT_202101 tp , TBL_ORDER_202101 to2"
				+ " WHERE to2.SHOPNO = ts.SHOPNO AND to2.PCODE = tp.PCODE"
				+ " GROUP BY to2.ORDERNO";
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				ListVO lVo = new ListVO();
				lVo.setShopno(rs.getString("shopno"));
				lVo.setShopname(rs.getString("shopname"));
				
				SimpleDateFormat input = new SimpleDateFormat("yyyydddd");
				SimpleDateFormat output = new SimpleDateFormat("yyyy-dddd");
				Date newdt = input.parse(rs.getString("orderno"));
				String orderno = output.format(newdt);
				lVo.setOrderno(orderno);
				
				SimpleDateFormat input2 = new SimpleDateFormat("yyyyMMdd");
				SimpleDateFormat output2 = new SimpleDateFormat("yyyy-MM-dd");
				Date newdt2 = input2.parse(rs.getString("orderdate"));
				String orderdate = output2.format(newdt2);
				lVo.setOrderdate(orderdate);
				
				lVo.setPcode(rs.getString("pcode"));
				lVo.setPname(rs.getString("pname"));
				lVo.setAmount(rs.getInt("amount"));
				DecimalFormat df = new DecimalFormat("###,###");
				lVo.setCost(rs.getInt("cost"));
				lVo.setCustprice(rs.getInt("custprice"));
				lVo.setDiscountprice(rs.getInt("discountprice"));
				
				list.add(lVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<ListVO> OrderByStoreList(){
		ArrayList<ListVO> list = new ArrayList<>();
		Connection conn = DBcon.getConnection();
		String query = "SELECT to2.SHOPNO, to2.PCODE, tp.PNAME, (SUM(to2.AMOUNT)) total"
				+ " FROM TBL_ORDER_202101 to2, TBL_PRODUCT_202101 tp"
				+ " WHERE to2.PCODE = tp.PCODE"
				+ " GROUP BY to2.SHOPNO, to2.PCODE";
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				ListVO lVo = new ListVO();
				lVo.setShopno(rs.getString("shopno"));
				lVo.setPcode(rs.getString("pcode"));
				lVo.setPname(rs.getString("pname"));
				lVo.setTotalCount(rs.getInt("total"));
				list.add(lVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<ListVO> getCodeList(){
		ArrayList<ListVO> list = new ArrayList<ListVO>();
		Connection conn = DBcon.getConnection();
		String query = "SELECT tp.PCODE, tp.PNAME, tp.COST, (tp.COST * 0.9) discountrate1, (tp.COST * 0.85) discountrate2"
				+ " FROM TBL_PRODUCT_202101 tp";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				ListVO lVo = new ListVO();
				lVo.setPcode(rs.getString("pcode"));
				lVo.setPname(rs.getString("pname"));
				lVo.setCost(rs.getInt("cost"));
				lVo.setDiscountrate1(rs.getInt("discountrate1"));
				lVo.setDiscountrate2(rs.getInt("discountrate2"));
				list.add(lVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
