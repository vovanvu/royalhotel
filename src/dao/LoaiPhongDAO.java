package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DBConnect;
import model.LoaiPhong;
import model.Phong;

public class LoaiPhongDAO implements IDAO<LoaiPhong> {

	@Override
	public boolean add(LoaiPhong t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement("INSERT INTO loaiPhong VALUES(?,?,?,?,?,?)");
			statement.setString(1, t.getMaLoaiPhong());
			statement.setString(2, t.getTenLoaiPhong());
			statement.setDouble(3, t.getDienTich());
			statement.setInt(4, t.getSoGiuongDon());
			statement.setInt(5, t.getSoGiuongDoi());
			statement.setString(6, t.getMoTa());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(LoaiPhong t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement(
					"UPDATE loaiPhong SET tenLoaiPhong=?,dienTich=?,soGiuongDon=?,soGiuongDoi=?,moTa=? WHERE maLoaiPhong=?");
			statement.setString(6, t.getMaLoaiPhong());
			statement.setString(1, t.getTenLoaiPhong());
			statement.setDouble(2, t.getDienTich());
			statement.setInt(3, t.getSoGiuongDon());
			statement.setInt(4, t.getSoGiuongDoi());
			statement.setString(5, t.getMoTa());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(String id) {
		String sql = "DELETE FROM loaiPhong WHERE maLoaiPhong='" + id + "'";
		try (Connection con = DBConnect.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public LoaiPhong get(String id) {
		String sql = "SELECT * FROM loaiPhong WHERE maLoaiPhong='" + id + "'";
		LoaiPhong loaiPhong = null;
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				String maLoaiPhong = rs.getString(1);
				String tenLoaiPhong = rs.getString(2);
				double dienTich = rs.getDouble(3);
				int soGiuongDon = rs.getInt(4);
				int soGiuongDoi = rs.getInt(5);
				String moTa = rs.getString(6);

				loaiPhong = new LoaiPhong(maLoaiPhong, tenLoaiPhong, dienTich, soGiuongDon, soGiuongDoi, moTa);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return loaiPhong;
	}

	@Override
	public ArrayList<LoaiPhong> getAll() {
		String sql = "SELECT * FROM loaiPhong";
		ArrayList<LoaiPhong> loaiPhongs = new ArrayList<LoaiPhong>();
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				String maLoaiPhong = rs.getString(1);
				String tenLoaiPhong = rs.getString(2);
				double dienTich = rs.getDouble(3);
				int soGiuongDon = rs.getInt(4);
				int soGiuongDoi = rs.getInt(5);
				String moTa = rs.getString(6);
				LoaiPhong loaiPhong = new LoaiPhong(maLoaiPhong, tenLoaiPhong, dienTich, soGiuongDon, soGiuongDoi,
						moTa);
				loaiPhongs.add(loaiPhong);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return loaiPhongs;
	}

	public static void main(String[] args) {
		LoaiPhongDAO dao = new LoaiPhongDAO();
//		dao.add(new LoaiPhong("acx", "Phong Thuong", 12.5, 1, 0, "Thuan tien thoáng mát, rộng rãi, thích hợp cho nghĩ dưỡng"));
		ArrayList<LoaiPhong> l = dao.getAll();
		for (LoaiPhong loai : l)
			System.out.println(loai);

	}
}
