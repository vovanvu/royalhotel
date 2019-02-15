package model;

public class HinhAnh {
	private String maHinh;
	private String maLoaiPhong;
	private int soThuTu;
	private String linkHinh;

	public HinhAnh(String maHinh, String maLoaiPhong, int soThuTu, String linkHinh) {
		super();
		this.maHinh = maHinh;
		this.maLoaiPhong = maLoaiPhong;
		this.soThuTu = soThuTu;
		this.linkHinh = linkHinh;
	}

	public String getMaHinh() {
		return maHinh;
	}

	public void setMaHinh(String maHinh) {
		this.maHinh = maHinh;
	}

	public String getMaLoaiPhong() {
		return maLoaiPhong;
	}

	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}

	public int getSoThuTu() {
		return soThuTu;
	}

	public void setSoThuTu(int soThuTu) {
		this.soThuTu = soThuTu;
	}

	public String getLinkHinh() {
		return linkHinh;
	}

	public void setLinkHinh(String linkHinh) {
		this.linkHinh = linkHinh;
	}

}
