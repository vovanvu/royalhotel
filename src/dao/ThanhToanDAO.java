package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DBConnect;
import model.ThanhToan;

public class ThanhToanDAO implements IDAO<ThanhToan> {

	@Override
	public boolean add(ThanhToan t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement("INSERT INTO thanhToan values(?,?,?,?,?,?)");
			statement.setString(1, t.getMaThanhToan());
			statement.setString(2, t.getMaDon());
			statement.setString(3, t.getSoTaiKhoan());
			statement.setString(4, t.getTenChuTaiKhoan());
			statement.setString(5, t.getTenNganHang());
			statement.setString(6, t.getChiNhanh());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(ThanhToan t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ThanhToan get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ThanhToan> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	public static void main(String[] args) {
		ThanhToan t = new ThanhToan("m1", "d1", "sotaikhoan", "chutaikhaon", "nh", "chnhanh");
		ThanhToanDAO tt = new ThanhToanDAO();
		System.out.println(tt.add(t));
	}
}
