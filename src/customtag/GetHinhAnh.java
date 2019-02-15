package customtag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import dao.HinhAnhDAO;
import model.HinhAnh;

public class GetHinhAnh extends SimpleTagSupport {
	private String maLoaiPhong;
	private int soThuTu;

	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}

	public void setSoThuTu(int soThuTu) {
		this.soThuTu = soThuTu;
	}

	@Override
	public void doTag() throws JspException, IOException {
		String imgUrl = "";
		HinhAnhDAO dao = new HinhAnhDAO();
		HinhAnh hinh = dao.getSttImageRoomType(maLoaiPhong, soThuTu);
		if (hinh != null) {
			imgUrl = hinh.getLinkHinh();
			if (imgUrl == ""||imgUrl == null) {
				imgUrl = "img\\no-img.png";
			}
		} else {
			imgUrl = "img\\no-img.png";
		}
		//
		JspWriter out = getJspContext().getOut();
		out.print(imgUrl);
	}
}
