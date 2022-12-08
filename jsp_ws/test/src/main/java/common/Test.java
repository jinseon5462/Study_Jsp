package common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {

	public static void main(String[] args) {
		String str = "20210001";
		SimpleDateFormat input = new SimpleDateFormat("yyyydddd");
		SimpleDateFormat output = new SimpleDateFormat("yyyy-dddd");
		try {
			Date newdt = input.parse(str);
			String date = output.format(newdt);
			System.out.println(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
