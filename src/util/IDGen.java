package util;

public class IDGen {
	public static String genId(String prefix) {
		long id = System.currentTimeMillis();
		String sId = String.valueOf(id).substring(5, 13);
		return prefix + sId;
	}
}
