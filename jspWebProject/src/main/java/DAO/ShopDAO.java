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
			
			sql = "SELECT * FROM ShopTestDB WHERE Shopname = '" + shopname + "'";
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
	
	public ShopDTO getShopDTOImage (String shopname) {
		ShopDTO dto = new ShopDTO();
		String sql = null;
		
		try {
			sql = "SELECT * FROM ShopImageDB WHERE Shopname = '" + shopname + "'";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			if (rs.next()) {
				dto.setImage1(rs.getString(1));
				dto.setImagetext1(rs.getString(2));
				dto.setImage2(rs.getString(3));
				dto.setImagetext2(rs.getString(4));
				dto.setImage3(rs.getString(5));
				dto.setImagetext3(rs.getString(6));
				dto.setImage4(rs.getString(7));
				dto.setImagetext4(rs.getString(8));
				dto.setImage5(rs.getString(9));
				dto.setImagetext5(rs.getString(10));
				dto.setMenuboard1(rs.getString(11));
				dto.setMenuboard1(rs.getString(12));
				dto.setMenuboard1(rs.getString(13));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	return dto;
	}
	
}
