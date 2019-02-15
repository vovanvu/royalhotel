package util;

import java.util.Calendar;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import dao.GiaDAO;

public class TinhTongTien {
	public static int tinhTong(String ngayNhan, String ngayTra, int soPhong, String loaiPhong) {
		// format to joda datetime
		DateTimeFormatter formatter = DateTimeFormat.forPattern("dd-MM-yyyy");
		DateTime dt1 = formatter.parseDateTime(ngayNhan);
		DateTime dt2 = formatter.parseDateTime(ngayTra);
		// count day
		int days = DemNgay.demNgay(dt1, dt2);
		// get price
		GiaDAO giaDao = new GiaDAO();
		Calendar calendar = Calendar.getInstance();
		java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());
		int giaTrenNgay = giaDao.getGia(loaiPhong, ourJavaDateObject);
		//
		int tong = soPhong * giaTrenNgay * days;
		return tong;
	}
}
