package com.lenovo.safecenter.systeminfo.util;

import java.text.DecimalFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NumberUtil {
    public static long pickupNumber(String stringContainNumber) {
        Matcher matcher = Pattern.compile("\\d+").matcher(stringContainNumber);
        String numStr = "-1";
        if (matcher.find()) {
            numStr = matcher.group(0);
        }
        return Long.parseLong(numStr);
    }

    public static String format(double value, String pattern) {
        return new DecimalFormat(pattern).format(value);
    }
}
