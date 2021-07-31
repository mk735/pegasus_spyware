package org.apache.commons.httpclient.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class DateParser {
    public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
    public static final String PATTERN_RFC1036 = "EEEE, dd-MMM-yy HH:mm:ss zzz";
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
    private static final Collection a = Arrays.asList("EEE MMM d HH:mm:ss yyyy", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE, dd MMM yyyy HH:mm:ss zzz");

    public static Date parseDate(String dateValue) throws DateParseException {
        return parseDate(dateValue, null);
    }

    public static Date parseDate(String dateValue, Collection dateFormats) throws DateParseException {
        if (dateValue == null) {
            throw new IllegalArgumentException("dateValue is null");
        }
        if (dateFormats == null) {
            dateFormats = a;
        }
        if (dateValue.length() > 1 && dateValue.startsWith("'") && dateValue.endsWith("'")) {
            dateValue = dateValue.substring(1, dateValue.length() - 1);
        }
        SimpleDateFormat dateParser = null;
        for (String format : dateFormats) {
            if (dateParser == null) {
                dateParser = new SimpleDateFormat(format, Locale.US);
                dateParser.setTimeZone(TimeZone.getTimeZone("GMT"));
            } else {
                dateParser.applyPattern(format);
            }
            try {
                continue;
                return dateParser.parse(dateValue);
            } catch (ParseException e) {
            }
        }
        throw new DateParseException(new StringBuffer().append("Unable to parse the date ").append(dateValue).toString());
    }

    private DateParser() {
    }
}
