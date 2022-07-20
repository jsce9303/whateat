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
				dto.setManu1(rs.getString(8));
				dto.setManuimage1(rs.getString(9));
				dto.setManu2(rs.getString(10));
				dto.setManuimage2(rs.getString(11));
				dto.setManu3(rs.getString(12));
				dto.setManuimage3(rs.getString(13));
				dto.setManu4(rs.getString(14));
				dto.setManuimage4(rs.getString(15));
				dto.setManu5(rs.getString(16));
				dto.setManuimage5(rs.getString(17));

			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return dto;	
	}
}
