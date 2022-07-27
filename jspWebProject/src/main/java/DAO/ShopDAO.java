package DAO;

import Connect.JDBCConnection;
import DTO.ShopDTO;

public class ShopDAO extends JDBCConnection {

	public ShopDAO(String driver, String url, String id, String pass) {
		super(driver, url, id, pass);
	}
	
	public ShopDTO getShopDTODetail (String shopname) {
		
		ShopDTO dto = new ShopDTO();
		String sql = null;
		
		try {
			
			sql = "SELECT * FROM ShopInfo WHERE Shopname = '" + shopname + "'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setOwnnum(rs.getInt(1));
				dto.setShopname(rs.getString(2));
				dto.setAddress(rs.getString(3));
				dto.setCategory(rs.getString(4));
				dto.setImage(rs.getString(5));
				dto.setPhone(rs.getString(7));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return dto;	
	}
	
	public ShopDTO getShopDTOImage (int ownnum) {
		ShopDTO dto = new ShopDTO();
		String sql = null;
		
		try {
			sql = "SELECT * FROM ShopImage WHERE ownnum = " + ownnum;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			if (rs.next()) {
				dto.setImage1(rs.getString(2));
				dto.setImagetext1(rs.getString(3));
				dto.setImage2(rs.getString(4));
				dto.setImagetext2(rs.getString(5));
				dto.setImage3(rs.getString(6));
				dto.setImagetext3(rs.getString(7));
				dto.setImage4(rs.getString(8));
				dto.setImagetext4(rs.getString(9));
				dto.setImage5(rs.getString(10));
				dto.setImagetext5(rs.getString(11));
				dto.setMenuboard1(rs.getString(12));
				dto.setMenuboard2(rs.getString(13));
				dto.setMenuboard3(rs.getString(14));
				dto.setMenuboard4(rs.getString(15));
				dto.setMenuboard5(rs.getString(16));
				dto.setPriceboard1(rs.getString(17));
				dto.setPriceboard2(rs.getString(18));
				dto.setPriceboard3(rs.getString(19));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	return dto;
	}
	
	public ShopDTO getCount() {
		
		int count = 0;
		ShopDTO dto = new ShopDTO();
		String sql = null;
		
		try {
			sql = "SELECT COUNT(*) FROM ShopInfo";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				count = rs.getInt(1);
				dto.setShopcount(count);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public ShopDTO getRouletteImage(int ownnum) {
		ShopDTO random = new ShopDTO();
		String sql = null;
		try {
			sql = "SELECT Image, Category FROM ShopInfo WHERE ownnum = " + ownnum;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
					random.setRouletteimage(rs.getString(1));
					random.setRoulettecategory(rs.getString(2));
			}
		}
		catch(Exception e) {
			
		}
		
		return random;
	}
}
