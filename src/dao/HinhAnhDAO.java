package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DBConnect;
import model.HinhAnh;

public class HinhAnhDAO implements IDAO<HinhAnh> {

	@Override
	public boolean add(HinhAnh t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement("INSERT INTO hinhAnh VALUES(?,?,?,?)");
			statement.setString(1, t.getMaHinh());
			statement.setString(2, t.getMaLoaiPhong());
			statement.setInt(3, t.getSoThuTu());
			statement.setString(4, t.getLinkHinh());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean addSttImageRoomType(HinhAnh t, String maLoaiPhong, int soThuTu) {
		HinhAnhDAO dao = new HinhAnhDAO();
		HinhAnh tonTaiHinh = dao.getSttImageRoomType(maLoaiPhong, soThuTu);
		if (tonTaiHinh == null) {
			dao.add(t);
		} else {
			String maHinhCu = dao.getSttImageRoomType(maLoaiPhong, soThuTu).getMaHinh();
			dao.delete(maHinhCu);
			dao.add(t);
		}
		return true;
	}

	@Override
	public boolean edit(HinhAnh t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con
					.prepareStatement("UPDATE hinhAnh SET maLoaiPhong=?,soThuTu=?,linkHinh=? WHERE maHinh=?");
			statement.setString(4, t.getMaHinh());
			statement.setString(1, t.getMaLoaiPhong());
			statement.setInt(2, t.getSoThuTu());
			statement.setString(3, t.getLinkHinh());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(String id) {
		String sql = "DELETE FROM hinhAnh WHERE maHinh='" + id + "'";
		try (Connection con = DBConnect.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public HinhAnh get(String id) {
		String sql = "SELECT * FROM hinhAnh WHERE maHinh='" + id + "'";
		HinhAnh hinhAnh = null;
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				String maHinh = rs.getString(1);
				String maLoaiPhong = rs.getString(2);
				int soThuTu = rs.getInt(3);
				String linkHinh = rs.getString(4);
				hinhAnh = new HinhAnh(maHinh, maLoaiPhong, soThuTu, linkHinh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hinhAnh;
	}

	public HinhAnh getSttImageRoomType(String maLoaiPhong, int soThuTu) {
		String sql = "SELECT * FROM hinhAnh WHERE maLoaiPhong='" + maLoaiPhong + "' AND soThuTu ='" + soThuTu + "'";
		HinhAnh hinhAnh = null;
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				String maHinh = rs.getString(1);
				String maLoaiPhong1 = rs.getString(2);
				int soThuTu1 = rs.getInt(3);
				String linkHinh = rs.getString(4);
				hinhAnh = new HinhAnh(maHinh, maLoaiPhong1, soThuTu1, linkHinh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hinhAnh;
	}

	@Override
	public ArrayList<HinhAnh> getAll() {
		String sql = "SELECT * FROM hinhAnh";
		ArrayList<HinhAnh> hinhAnhs = new ArrayList<HinhAnh>();
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				String maHinh = rs.getString(1);
				String maLoaiPhong = rs.getString(2);
				int soThuTu = rs.getInt(3);
				String linkHinh = rs.getString(4);
				HinhAnh hinhAnh = new HinhAnh(maHinh, maLoaiPhong, soThuTu, linkHinh);
				hinhAnhs.add(hinhAnh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hinhAnhs;
	}

	public ArrayList<HinhAnh> getTypeRoomImage(String maLoaiPhong) {
		String sql = "SELECT * FROM hinhAnh WHERE maLoaiPhong ='" + maLoaiPhong + "'";
		ArrayList<HinhAnh> hinhAnhs = new ArrayList<HinhAnh>();
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				String maHinh = rs.getString(1);
				String maLoaiPhong1 = rs.getString(2);
				int soThuTu = rs.getInt(3);
				String linkHinh = rs.getString(4);
				HinhAnh hinhAnh = new HinhAnh(maHinh, maLoaiPhong1, soThuTu, linkHinh);
				hinhAnhs.add(hinhAnh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hinhAnhs;
	}

	// public static void main(String[] args) {
	// HinhAnh hinh = new HinhAnh("H59712896", "l5", 1, "link5");
	// HinhAnhDAO d = new HinhAnhDAO();
	// //d.edit(hinh);
	// System.out.println(d.getSttImageRoomType("l1", 2).getLinkHinh());
	// }
}
