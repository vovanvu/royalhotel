package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import model.DBConnect;
import util.StringToSQLDate;

public class GiaDAO {
	public int getGia(String maLoaiPhong, Date date) {

		String sql = "SELECT gia FROM Gia WHERE maLoaiPhong='" + maLoaiPhong + "'AND ngayBatDau<'" + date
				+ "' AND ngayKetThuc>'" + date + "'";
		int gia = 0;
		try (Connection con = DBConnect.getConnection();) {
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				gia = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return gia;
	}

	// public static void main(String[] args) {
	// Calendar calendar = Calendar.getInstance();
	// java.sql.Date ourJavaDateObject = new
	// java.sql.Date(calendar.getTime().getTime());
	// String s ="04-01-2019";
	// Date d1 = StringToSQLDate.convertStringToSQLDate(s);
	// //
	// GiaDAO dao = new GiaDAO();
	// System.out.println(dao.getGia("l2", d1));
	// System.out.println(d1);
	// }
}
