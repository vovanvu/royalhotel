package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DBConnect;
import model.Phong;

public class PhongDAO implements IDAO<Phong> {

	@Override
	public boolean add(Phong t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement("INSERT INTO phong VALUES(?,?,?,?)");
			statement.setString(1, t.getMaPhong());
			statement.setString(2, t.getTenPhong());
			statement.setString(3, t.getMaLoaiPhong());
			statement.setInt(4, t.getTinhTrangPhong());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(Phong t) {
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con
					.prepareStatement("UPDATE phong SET tenPhong=?,maLoaiPhong=?,tinhTrangPhong=? WHERE maPhong=?");
			statement.setString(4, t.getMaPhong());
			statement.setString(1, t.getTenPhong());
			statement.setString(2, t.getMaLoaiPhong());
			statement.setInt(3, t.getTinhTrangPhong());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean delete(String id) {
		String sql = "DELETE FROM phong WHERE maPhong='" + id + "'";
		try (Connection con = DBConnect.getConnection(); PreparedStatement ps = con.prepareStatement(sql);) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public Phong get(String id) {
		String sql = "SELECT * FROM phong WHERE maPhong='" + id + "'";
		Phong phong = null;
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				String maPhong = rs.getString(1);
				String tenPhong = rs.getString(2);
				String maLoaiPhong = rs.getString(3);
				int tinhTrangPhong = rs.getInt(4);
				phong = new Phong(maPhong, tenPhong, maLoaiPhong, tinhTrangPhong);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return phong;
	}

	@Override
	public ArrayList<Phong> getAll() {
		String sql = "SELECT * FROM phong";
		ArrayList<Phong> phongs = new ArrayList<Phong>();
		try (Connection con = DBConnect.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				String maPhong = rs.getString(1);
				String tenPhong = rs.getString(2);
				String maLoaiPhong = rs.getString(3);
				int tinhTrangPhong = rs.getInt(4);
				Phong phong = new Phong(maPhong, tenPhong, maLoaiPhong, tinhTrangPhong);
				phongs.add(phong);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return phongs;
	}

	public static void main(String[] args) {
		PhongDAO p = new PhongDAO();
		p.add(new Phong("002", "Phong Tắm", "123ẻ", 1));
		p.delete("001");
		
		ArrayList<Phong> l = p.getAll();
		for (Phong phong : l)
			System.out.println(phong);

	}
}
