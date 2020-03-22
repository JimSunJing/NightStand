package com.jimmy.utils.format;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class dateFormatUtils {

    public static String convert2string(Date date) {
        return convert2string(date,"yyyy-MM-dd");
    }

    public static String convert2string(Date date, String format) {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.format(date);
    }

    public static Date string2Date(String str) {
        return string2Date(str,"yyyy-MM-dd");
    }

    public static Date string2Date(String str, String format) {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        try {
            return formatter.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }
}
