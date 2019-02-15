package util;

import org.joda.time.DateTime;
import org.joda.time.Days;

public class DemNgay {
	public static int demNgay(DateTime ngayBatDau, DateTime ngayKetThuc) {
		Days d = Days.daysBetween(ngayBatDau, ngayKetThuc);
		return d.getDays();
	}
}
