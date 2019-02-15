package customtag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import dao.LoaiPhongDAO;
import model.LoaiPhong;

public class TenLoaiPhong extends SimpleTagSupport {
	private String maLoaiPhong;

	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}

	@Override
	public void doTag() throws JspException, IOException {
		LoaiPhongDAO dao = new LoaiPhongDAO();
		LoaiPhong loai = dao.get(maLoaiPhong);
		String tenLoaiPhong = loai.getTenLoaiPhong();
		JspWriter out = getJspContext().getOut();
		out.print(tenLoaiPhong);
	}
}
