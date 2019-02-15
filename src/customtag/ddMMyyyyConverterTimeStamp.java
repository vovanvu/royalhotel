package customtag;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ddMMyyyyConverterTimeStamp extends SimpleTagSupport {
	private Timestamp timeStamp;

	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}

	@Override
	public void doTag() throws JspException, IOException {
		Date dateConvert = Date.valueOf(timeStamp.toLocalDateTime().toLocalDate());
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
		String s = df.format(dateConvert);
		JspWriter out = getJspContext().getOut();
		out.print(s);
	}

}
