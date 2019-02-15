package model;

public class Phong {
	private String maPhong;
	private String tenPhong;
	private String maLoaiPhong;
	private int tinhTrangPhong;

	public Phong(String maPhong, String tenPhong, String maLoaiPhong, int tinhTrangPhong) {
		super();
		this.maPhong = maPhong;
		this.tenPhong = tenPhong;
		this.maLoaiPhong = maLoaiPhong;
		this.tinhTrangPhong = tinhTrangPhong;
	}

	public String getMaPhong() {
		return maPhong;
	}

	public String getTenPhong() {
		return tenPhong;
	}

	public String getMaLoaiPhong() {
		return maLoaiPhong;
	}


	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}

	public void setTenPhong(String tenPhong) {
		this.tenPhong = tenPhong;
	}

	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}

	public int getTinhTrangPhong() {
		return tinhTrangPhong;
	}

	public void setTinhTrangPhong(int tinhTrangPhong) {
		this.tinhTrangPhong = tinhTrangPhong;
	}

	@Override
	public String toString() {
		return "Phong [maPhong=" + maPhong + ", tenPhong=" + tenPhong + ", maLoaiPhong=" + maLoaiPhong
				+ ", tinhTrangPhong=" + tinhTrangPhong + "]";
	}

	

}
