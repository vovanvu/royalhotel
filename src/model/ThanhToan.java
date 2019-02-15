package model;

public class ThanhToan {
	private String maThanhToan;
	private String maDon;
	private String soTaiKhoan;
	private String tenChuTaiKhoan;
	private String tenNganHang;
	private String chiNhanh;

	public ThanhToan(String maThanhToan, String maDon, String soTaiKhoan, String tenChuTaiKhoan, String tenNganHang,
			String chiNhanh) {
		super();
		this.maThanhToan = maThanhToan;
		this.maDon = maDon;
		this.soTaiKhoan = soTaiKhoan;
		this.tenChuTaiKhoan = tenChuTaiKhoan;
		this.tenNganHang = tenNganHang;
		this.chiNhanh = chiNhanh;
	}

	public String getMaThanhToan() {
		return maThanhToan;
	}

	public void setMaThanhToan(String maThanhToan) {
		this.maThanhToan = maThanhToan;
	}

	public String getMaDon() {
		return maDon;
	}

	public void setMaDon(String maDon) {
		this.maDon = maDon;
	}

	public String getSoTaiKhoan() {
		return soTaiKhoan;
	}

	public void setSoTaiKhoan(String soTaiKhoan) {
		this.soTaiKhoan = soTaiKhoan;
	}

	public String getTenChuTaiKhoan() {
		return tenChuTaiKhoan;
	}

	public void setTenChuTaiKhoan(String tenChuTaiKhoan) {
		this.tenChuTaiKhoan = tenChuTaiKhoan;
	}

	public String getTenNganHang() {
		return tenNganHang;
	}

	public void setTenNganHang(String tenNganHang) {
		this.tenNganHang = tenNganHang;
	}

	public String getChiNhanh() {
		return chiNhanh;
	}

	public void setChiNhanh(String chiNhanh) {
		this.chiNhanh = chiNhanh;
	}

	@Override
	public String toString() {
		return "ThanhToan [maThanhToan=" + maThanhToan + ", maDon=" + maDon + ", soTaiKhoan=" + soTaiKhoan
				+ ", tenChuTaiKhoan=" + tenChuTaiKhoan + ", tenNganHang=" + tenNganHang + ", chiNhanh=" + chiNhanh
				+ "]";
	}

}
