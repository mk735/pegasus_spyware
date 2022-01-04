package com.lenovo.safecenter.mmsutils;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Hashtable;
import org.xmlpull.v1.XmlPullParserException;

public class HwDcdWapPushParser {
    public static final String ERR_TAG = "HwDcdWapPushParser.java";
    private static final String[] d = {"si", "indication", "info", "item"};
    private static final String[] e = {"action=signal-none", "action=signal-low", "action=signal-medium", "action=signal-high", "action=signal-delete", "created", "href", "href=http://", "href=http://www.", "href=https://", "href=https://www.", "si-expires", "si-id", "class"};
    private static final String[] f = {"sl"};
    private static final String[] g = {"action=execute-low", "action=execute-high", "action=cache", "href", "href=http://", "href=http://www.", "href=https://", "href=https://www."};
    private static final String[] h = {".com/", ".edu/", ".net/", ".org/"};
    private static Hashtable<String, Integer> i = new Hashtable<>(5);
    private static Hashtable<String, Integer> j = new Hashtable<>(7);
    private ByteArrayInputStream a = null;
    private WbxmlParser b = null;
    private HwDcdWapPushMsg c = null;

    public HwDcdWapPushParser(byte[] pushDataStream) {
        this.a = new ByteArrayInputStream(pushDataStream);
    }

    public HwDcdWapPushMsg parse(int type) {
        if (this.a == null) {
            Log.e("WapPushParser", "mWapPushDataStream is not set!");
            return null;
        }
        this.c = new HwDcdWapPushMsg(type);
        if (HwDcdWapPushMsg.WAP_PUSH_TYPE_SI == type) {
            WbxmlParser wbxmlParser = new WbxmlParser();
            wbxmlParser.setTagTable(0, d);
            wbxmlParser.setAttrStartTable(0, e);
            wbxmlParser.setAttrValueTable(0, h);
            this.b = wbxmlParser;
        } else if (HwDcdWapPushMsg.WAP_PUSH_TYPE_SL == type) {
            WbxmlParser wbxmlParser2 = new WbxmlParser();
            wbxmlParser2.setTagTable(0, f);
            wbxmlParser2.setAttrStartTable(0, g);
            wbxmlParser2.setAttrValueTable(0, h);
            this.b = wbxmlParser2;
        } else {
            Log.e("WapPushParser", "wap push unknown type=" + type);
            return null;
        }
        try {
            this.b.setInput(this.a, null);
            Log.i("WapPushParser", "Document charset : " + this.b.getInputEncoding());
            int eventType = this.b.getEventType();
            while (eventType != 1) {
                switch (eventType) {
                    case 0:
                        Log.i("WapPushParser", "Start document");
                        break;
                    case 1:
                        Log.i("WapPushParser", "End document");
                        break;
                    case 2:
                        Log.i("WapPushParser", "Start tag = " + this.b.getName());
                        a(this.b.getName());
                        break;
                    case 3:
                        Log.i("WapPushParser", "End tag = " + this.b.getName());
                        break;
                    case 4:
                        Log.i("WapPushParser", "Text = " + this.b.getText());
                        if (HwDcdWapPushMsg.WAP_PUSH_TYPE_SI != type) {
                            break;
                        } else {
                            this.c.setAttributeValue(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_SI_TEXT, this.b.getText());
                            break;
                        }
                    default:
                        Log.i("WapPushParser", "unknown event type =  " + eventType);
                        break;
                }
                eventType = this.b.next();
            }
            return this.c;
        } catch (IOException e2) {
            Log.e("WapPushParser", e2.toString());
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("WapPushParser", e3.toString());
            return null;
        }
    }

    private void a(String tagName) {
        int attrCount = this.b.getAttributeCount();
        if (tagName.equalsIgnoreCase(f[0]) || tagName.equalsIgnoreCase(d[0]) || tagName.equalsIgnoreCase(d[1])) {
            for (int i2 = 0; i2 < attrCount; i2++) {
                String attrValue = this.b.getAttributeValue(i2);
                String attrName = this.b.getAttributeName(i2);
                Log.i("WapPushParser", "attrName = " + attrName + ", attrValue =" + attrValue);
                if (i.containsKey(attrName)) {
                    this.c.setAttributeValue(i.get(attrName).intValue(), attrValue);
                }
            }
            return;
        }
        Log.e("WapPushParser", "Unknown tag = " + tagName);
    }

    static {
        i.put("action", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_PRIOR));
        i.put("href", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_HREF));
        i.put("si-expires", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_SI_EXPIRED));
        i.put("created", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_SI_CREATED));
        i.put("si-id", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PROJECTION_SI_ID));
        j.put("signal-none", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_NONE));
        j.put("signal-low", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_LOW));
        j.put("signal-medium", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_MEDIUM));
        j.put("signal-high", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_HIGH));
        j.put("signal-delete", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_DELETE));
        j.put("execute-low", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_LOW));
        j.put("execute-high", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_HIGH));
        j.put("cache", Integer.valueOf(HwDcdWapPushMsg.WAP_PUSH_PRIO_CACHE));
    }
}
