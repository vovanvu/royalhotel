package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import model.DBConnect;
import model.DonDatPhong;
import model.LoaiPhong;

public class DonDatPhongDAO implements IDAO<DonDatPhong> {

	@Override
	public boolean add(DonDatPhong t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement("INSERT INTO donDatPhong VALUES(?,?,?,?,?,?,?,?,?)");
			statement.setString(1, t.getMaDon());
			statement.setString(2, t.getMaKhachHang());
			statement.setString(3, t.getMaPhong());
			statement.setTimestamp(4, t.getThoiDiemDat());
			statement.setDate(5, t.getNgayNhanPhong());
			statement.setDate(6, t.getNgayTraPhong());
			statement.setInt(7, t.getSoPhong());
			statement.setInt(8, t.getTongCong());
			statement.setInt(9, t.getTinhTrang());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(DonDatPhong t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement(
					"UPDATE donDatPhong SET maKhachHang=?,maPhong=?,thoiDiemDat=?,ngayNhanPhong=?,ngayTraPhong=?,soPhong=?,tongCong=?,tinhTrang=? WHERE maDon=?");
			statement.setString(9, t.getMaDon());
			statement.setString(1, t.getMaKhachHang());
			statement.setString(2, t.getMaPhong());
			statement.setTimestamp(3, t.getThoiDiemDat());
			statement.setDate(4, t.getNgayNhanPhong());
			statement.setDate(5, t.getNgayTraPhong());
			statement.setInt(6, t.getSoPhong());
			statement.setInt(7, t.getTongCong());
			statement.setInt(8, t.getTinhTrang());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(String id) {
		String sql = "DELETE FROM donDatPhong WHERE maDon='" + id + "'";
		try (Connection con = DBConnect.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public DonDatPhong get(String id) {
		String sql = "SELECT * FROM donDatPhong WHERE maDon='" + id + "'";
		DonDatPhong donDatPhong = null;
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				String maDon = rs.getString(1);
				String maKhachHang = rs.getString(2);
				String maPhong = rs.getString(3);
				Timestamp thoiDiemDat = rs.getTimestamp(4);
				Date ngayNhanPhong = rs.getDate(5);
				Date ngayTraPhong = rs.getDate(6);
				int soPhong = rs.getInt(7);
				int tongCong = rs.getInt(8);
				int tinhTrang = rs.getInt(9);

				donDatPhong = new DonDatPhong(maDon, maKhachHang, maPhong, thoiDiemDat, ngayNhanPhong, ngayTraPhong,
						soPhong, tongCong, tinhTrang);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return donDatPhong;
	}

	@Override
	public ArrayList<DonDatPhong> getAll() {
		String sql = "SELECT * FROM donDatPhong";
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

	public static void main(String[] args) {
		DonDatPhongDAO dao = new DonDatPhongDAO();
		// java.util.Date parsed1 = null;
		// try {
		// parsed1 = new SimpleDateFormat("yyyy-MM-dd").parse("2018-12-29");
		// } catch (ParseException e) {
		// e.printStackTrace();
		// }
		// java.sql.Date ngayDatPhong = new java.sql.Date(parsed1.getTime());
		// DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// Calendar cal = Calendar.getInstance();
		// Timestamp thoiDiem = new Timestamp(cal.getTimeInMillis());
		// DonDatPhong don = new DonDatPhong("3qw3", "", "", thoiDiem, ngayDatPhong,
		// null, 1, 2.0, 1);
		// dao.add(don);
		// for (DonDatPhong d : dao.getAll()) {
		// System.out.println(d);
		// }
	}

}
