package com.network.android;

import java.util.regex.Pattern;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public final class w extends DefaultHandler {
    static Pattern f = Pattern.compile(".*(http:.*?)\"", 42);
    static Pattern g = Pattern.compile(".*<d\\s*e=\"(.*?)\"", 42);

    /* renamed from: a  reason: collision with root package name */
    int f131a = -1;
    String b = "";
    String c = null;
    String d = null;
    public String e = null;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        if (str2.equals("c")) {
            this.c = attributes.getValue("t");
        }
    }
}
