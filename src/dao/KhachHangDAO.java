package dao;

import model.DonDatPhong;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import model.KhachHang;
import model.DBConnect;

public class KhachHangDAO implements IDAO<KhachHang> {
	public ArrayList<DonDatPhong> getOrderList(String id) {
		String sql = "SELECT * FROM donDatPhong WHERE maKhachHang='" + id + "' ORDER BY thoiDiemDat DESC;";
		ArrayList<DonDatPhong> donDatPhongs = new ArrayList<DonDatPhong>();
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				String maDon = rs.getString(1);
				String maKhachHang = rs.getString(2);
				String maPhong = rs.getString(3);
				Timestamp thoiDiemDat = rs.getTimestamp(4);
				Date ngayNhanPhong = rs.getDate(5);
				Date ngayTraPhong = rs.getDate(6);
				int soPhong = rs.getInt(7);
				int tongCong = rs.getInt(8);
				int tinhTrang = rs.getInt(9);
				DonDatPhong donDatPhong = new DonDatPhong(maDon, maKhachHang, maPhong, thoiDiemDat, ngayNhanPhong,
						ngayTraPhong, soPhong, tongCong, tinhTrang);
				donDatPhongs.add(donDatPhong);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return donDatPhongs;
	}

	public boolean isOrderByCustomer(String maKhachHang, String maDon) {
		String sql = "SELECT * FROM donDatPhong WHERE maKhachHang='" + maKhachHang + "'AND maDon = '" + maDon + "'";
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return false;
	}

	@Override
	public boolean add(KhachHang t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement("INSERT INTO khachHang values(?,?,?,?,?)");
			statement.setString(1, t.getId());
			statement.setString(2, t.getName());
			statement.setString(3, t.getPhoneNumber());
			statement.setString(4, t.getEmail());
			statement.setString(5, t.getPassword());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(KhachHang t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con
					.prepareStatement("UPDATE khachHang SET name=?,phone_number=?,email=?,password=? WHERE id=?");
			statement.setString(5, t.getId());
			statement.setString(1, t.getName());
			statement.setString(2, t.getPhoneNumber());
			statement.setString(3, t.getEmail());
			statement.setString(4, t.getPassword());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(String id) {
		String sql = "DELETE FROM khachHang WHERE id='" + id + "'";
		try (Connection con = DBConnect.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public KhachHang get(String idGet) {
		String sql = "SELECT * FROM khachHang WHERE id = '" + idGet + "'";
		KhachHang customer = null;
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String phoneNumber = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);
				customer = new KhachHang(id, name, phoneNumber, email, password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return customer;
	}

	@Override
	public ArrayList<KhachHang> getAll() {
		String sql = "SELECT * FROM khachHang";
		ArrayList<KhachHang> customers = new ArrayList<KhachHang>();
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String phoneNumber = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);
				KhachHang customer = new KhachHang(id, name, phoneNumber, email, password);
				customers.add(customer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return customers;
	}

//	public static void main(String[] args) {
//		System.out.println(new KhachHangDAO().isOrderByCustomer("kh1", "D1978633"));
//	}
}
