package customtag;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ddMMyyyyConverter extends SimpleTagSupport {
	private Date date;
	

	public void setDate(Date date) {
		this.date = date;
	}

	

	@Override
	public void doTag() throws JspException, IOException {
			DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
			String s = df.format(date);
			JspWriter out = getJspContext().getOut();
			out.print(s);
	}
}
