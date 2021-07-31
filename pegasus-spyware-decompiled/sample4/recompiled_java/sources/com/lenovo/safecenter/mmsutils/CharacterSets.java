package com.lenovo.safecenter.mmsutils;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

public class CharacterSets {
    public static final int ANY_CHARSET = 0;
    public static final int BIG5 = 2026;
    public static final int DEFAULT_CHARSET = 106;
    public static final String DEFAULT_CHARSET_NAME = "utf-8";
    public static final int ISO_8859_1 = 4;
    public static final int ISO_8859_2 = 5;
    public static final int ISO_8859_3 = 6;
    public static final int ISO_8859_4 = 7;
    public static final int ISO_8859_5 = 8;
    public static final int ISO_8859_6 = 9;
    public static final int ISO_8859_7 = 10;
    public static final int ISO_8859_8 = 11;
    public static final int ISO_8859_9 = 12;
    public static final String MIMENAME_ANY_CHARSET = "*";
    public static final String MIMENAME_BIG5 = "big5";
    public static final String MIMENAME_ISO_8859_1 = "iso-8859-1";
    public static final String MIMENAME_ISO_8859_2 = "iso-8859-2";
    public static final String MIMENAME_ISO_8859_3 = "iso-8859-3";
    public static final String MIMENAME_ISO_8859_4 = "iso-8859-4";
    public static final String MIMENAME_ISO_8859_5 = "iso-8859-5";
    public static final String MIMENAME_ISO_8859_6 = "iso-8859-6";
    public static final String MIMENAME_ISO_8859_7 = "iso-8859-7";
    public static final String MIMENAME_ISO_8859_8 = "iso-8859-8";
    public static final String MIMENAME_ISO_8859_9 = "iso-8859-9";
    public static final String MIMENAME_SHIFT_JIS = "shift_JIS";
    public static final String MIMENAME_UCS2 = "iso-10646-ucs-2";
    public static final String MIMENAME_US_ASCII = "us-ascii";
    public static final String MIMENAME_UTF_16 = "utf-16";
    public static final String MIMENAME_UTF_8 = "utf-8";
    public static final int SHIFT_JIS = 17;
    public static final int UCS2 = 1000;
    public static final int US_ASCII = 3;
    public static final int UTF_16 = 1015;
    public static final int UTF_8 = 106;
    static final /* synthetic */ boolean a;
    private static final int[] b = {0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 106, BIG5, 1000, UTF_16};
    private static final String[] c = {MIMENAME_ANY_CHARSET, MIMENAME_US_ASCII, MIMENAME_ISO_8859_1, MIMENAME_ISO_8859_2, MIMENAME_ISO_8859_3, MIMENAME_ISO_8859_4, MIMENAME_ISO_8859_5, MIMENAME_ISO_8859_6, MIMENAME_ISO_8859_7, MIMENAME_ISO_8859_8, MIMENAME_ISO_8859_9, MIMENAME_SHIFT_JIS, "utf-8", MIMENAME_BIG5, MIMENAME_UCS2, MIMENAME_UTF_16};
    private static final HashMap<Integer, String> d = new HashMap<>();
    private static final HashMap<String, Integer> e = new HashMap<>();

    static {
        a = !CharacterSets.class.desiredAssertionStatus();
        if (a || b.length == c.length) {
            int count = b.length - 1;
            for (int i = 0; i <= count; i++) {
                d.put(Integer.valueOf(b[i]), c[i]);
                e.put(c[i], Integer.valueOf(b[i]));
            }
            return;
        }
        throw new AssertionError();
    }

    private CharacterSets() {
    }

    public static String getMimeName(int mibEnumValue) throws UnsupportedEncodingException {
        String name = d.get(Integer.valueOf(mibEnumValue));
        if (name != null) {
            return name;
        }
        throw new UnsupportedEncodingException();
    }

    public static int getMibEnumValue(String mimeName) throws UnsupportedEncodingException {
        if (mimeName == null) {
            return -1;
        }
        Integer mibEnumValue = e.get(mimeName);
        if (mibEnumValue != null) {
            return mibEnumValue.intValue();
        }
        throw new UnsupportedEncodingException();
    }
}
