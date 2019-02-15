package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringToSQLDate {
	public static java.sql.Date convertStringToSQLDate(String stringToConvert) {
		Date parser = null;
		try {
			parser = new SimpleDateFormat("dd-MM-yyyy").parse(stringToConvert);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		java.sql.Date date = new java.sql.Date(parser.getTime());
		return date;
	}

}
