package model;

public class LoaiPhong {
	private String maLoaiPhong, tenLoaiPhong;
	private double dienTich;
	private int soGiuongDon, soGiuongDoi;
	private String moTa;

	public LoaiPhong(String maLoaiPhong, String tenLoaiPhong, double dienTich, int soGiuongDon, int soGiuongDoi,
			String moTa) {
		super();
		this.maLoaiPhong = maLoaiPhong;
		this.tenLoaiPhong = tenLoaiPhong;
		this.dienTich = dienTich;
		this.soGiuongDon = soGiuongDon;
		this.soGiuongDoi = soGiuongDoi;
		this.moTa = moTa;
	}

	public String getMaLoaiPhong() {
		return maLoaiPhong;
	}

	public String getTenLoaiPhong() {
		return tenLoaiPhong;
	}

	public double getDienTich() {
		return dienTich;
	}

	public int getSoGiuongDoi() {
		return soGiuongDoi;
	}

	public int getSoGiuongDon() {
		return soGiuongDon;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}

	public void setTenLoaiPhong(String tenLoaiPhong) {
		this.tenLoaiPhong = tenLoaiPhong;
	}

	public void setDienTich(double dienTich) {
		this.dienTich = dienTich;
	}

	public void setSoGiuongDoi(int soGiuongDoi) {
		this.soGiuongDoi = soGiuongDoi;
	}

	public void setSoGiuongDon(int soGiuongDon) {
		this.soGiuongDon = soGiuongDon;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	@Override
	public String toString() {
		return "LoaiPhong [maLoaiPhong=" + maLoaiPhong + ", tenLoaiPhong=" + tenLoaiPhong + ", dienTich=" + dienTich
				+ ", soGiuongDon=" + soGiuongDon + ", soGiuongDoi=" + soGiuongDoi + ", moTa=" + moTa + "]";
	}

}
