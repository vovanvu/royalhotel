package model;

import java.sql.Date;
import java.sql.Timestamp;

public class DonDatPhong {
	private String maDon, maKhachHang, maPhong;
	private Timestamp thoiDiemDat;
	private Date ngayNhanPhong, ngayTraPhong;
	private int soPhong; // so tien phai tra
	private int tongCong;
	private int tinhTrang; // thanh toan hay chua thanh toan

	public DonDatPhong(String maDon, String maKhachHang, String maPhong, Timestamp thoiDiemDat, Date ngayNhanPhong,
			Date ngayTraPhong, int soPhong, int tongCong, int tinhTrang) {
		super();
		this.maDon = maDon;
		this.maKhachHang = maKhachHang;
		this.maPhong = maPhong;
		this.thoiDiemDat = thoiDiemDat;
		this.ngayNhanPhong = ngayNhanPhong;
		this.ngayTraPhong = ngayTraPhong;
		this.soPhong = soPhong;
		this.tongCong = tongCong;
		this.tinhTrang = tinhTrang;
	}

	public String getMaDon() {
		return maDon;
	}

	public void setMaDon(String maDon) {
		this.maDon = maDon;
	}

	public String getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(String maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getMaPhong() {
		return maPhong;
	}

	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}

	public Timestamp getThoiDiemDat() {
		return thoiDiemDat;
	}

	public void setThoiDiemDat(Timestamp thoiDiemDat) {
		this.thoiDiemDat = thoiDiemDat;
	}

	public Date getNgayNhanPhong() {
		return ngayNhanPhong;
	}

	public void setNgayNhanPhong(Date ngayNhanPhong) {
		this.ngayNhanPhong = ngayNhanPhong;
	}

	public Date getNgayTraPhong() {
		return ngayTraPhong;
	}

	public void setNgayTraPhong(Date ngayTraPhong) {
		this.ngayTraPhong = ngayTraPhong;
	}

	public int getSoPhong() {
		return soPhong;
	}

	public void setSoPhong(int soPhong) {
		this.soPhong = soPhong;
	}

	public int getTongCong() {
		return tongCong;
	}

	public void setTongCong(int tongCong) {
		this.tongCong = tongCong;
	}

	public int getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(int tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	@Override
	public String toString() {
		return "DonDatPhong [maDon=" + maDon + ", maKhachHang=" + maKhachHang + ", maPhong=" + maPhong
				+ ", thoiDiemDat=" + thoiDiemDat + ", ngayNhanPhong=" + ngayNhanPhong + ", ngayTraPhong=" + ngayTraPhong
				+ ", soPhong=" + soPhong + ", tongCong=" + tongCong + ", tinhTrang=" + tinhTrang + "]\n";
	}

}
