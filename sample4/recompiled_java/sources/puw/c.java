package puw;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c {
    public static String a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, d(arrayList.get(i)));
        }
        Collections.reverse(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            String str = arrayList.get(i2);
            if (str.equals("list")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, arrayList.get(0) + ">");
            } else if (str.equals("map")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1) + ",");
                arrayList.set(0, arrayList.get(0) + ">");
            } else if (str.equals("Array")) {
                arrayList.set(i2 - 1, "<" + arrayList.get(i2 - 1));
                arrayList.set(0, arrayList.get(0) + ">");
            }
        }
        Collections.reverse(arrayList);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    public static ArrayList<String> a(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        int i = 0;
        int indexOf = str.indexOf("<");
        while (i < indexOf) {
            a(arrayList, str.substring(i, indexOf));
            int i2 = indexOf + 1;
            indexOf = str.indexOf("<", i2);
            int indexOf2 = str.indexOf(",", i2);
            if (indexOf == -1) {
                indexOf = indexOf2;
            }
            if (indexOf2 == -1 || indexOf2 >= indexOf) {
                i = i2;
            } else {
                indexOf = indexOf2;
                i = i2;
            }
        }
        a(arrayList, str.substring(i, str.length()));
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:3:0x000f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(java.util.ArrayList<java.lang.String> r4, java.lang.String r5) {
        /*
            r3 = 0
            int r0 = r5.length()
        L_0x0005:
            int r1 = r0 + -1
            char r1 = r5.charAt(r1)
            r2 = 62
            if (r1 != r2) goto L_0x0013
            int r0 = r0 + -1
            if (r0 != 0) goto L_0x0005
        L_0x0013:
            java.lang.String r0 = r5.substring(r3, r0)
            java.lang.String r0 = e(r0)
            r4.add(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: puw.c.a(java.util.ArrayList, java.lang.String):void");
    }

    public static Object b(String str) throws g {
        Object obj;
        boolean z;
        Iterator<String> it = a(str).iterator();
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        while (it.hasNext()) {
            obj2 = c(it.next());
            if (obj2 instanceof String) {
                if ("Array".equals((String) obj2)) {
                    if (obj4 == null) {
                        obj2 = Array.newInstance(Byte.class, 0);
                        obj = obj3;
                    } else {
                        obj = obj3;
                    }
                } else if ("?".equals((String) obj2)) {
                    obj = obj3;
                } else if (obj4 == null) {
                    obj = obj3;
                    obj4 = obj2;
                } else {
                    obj = obj4;
                    obj4 = obj2;
                }
            } else if (obj2 instanceof List) {
                if (obj4 == null || !(obj4 instanceof Byte)) {
                    if (obj4 != null) {
                        ((List) obj2).add(obj4);
                    }
                    obj = obj3;
                    obj4 = null;
                } else {
                    obj2 = Array.newInstance(Byte.class, 1);
                    Array.set(obj2, 0, obj4);
                    obj = obj3;
                }
            } else if (obj2 instanceof Map) {
                if ((obj3 != null) && (obj4 != null)) {
                    ((Map) obj2).put(obj4, obj3);
                }
                obj = null;
                obj4 = null;
            } else if (obj4 == null) {
                obj = obj3;
                obj4 = obj2;
            } else {
                obj = obj4;
                obj4 = obj2;
            }
            obj3 = obj;
        }
        return obj2;
    }

    public static Object c(String str) throws g {
        if (str.equals("java.lang.Integer")) {
            return 0;
        }
        if (str.equals("java.lang.Boolean")) {
            return false;
        }
        if (str.equals("java.lang.Byte")) {
            return (byte) 0;
        }
        if (str.equals("java.lang.Double")) {
            return Double.valueOf(0.0d);
        }
        if (str.equals("java.lang.Float")) {
            return Float.valueOf(0.0f);
        }
        if (str.equals("java.lang.Long")) {
            return 0L;
        }
        if (str.equals("java.lang.Short")) {
            return (short) 0;
        }
        if (str.equals("java.lang.Character")) {
            throw new IllegalArgumentException("can not support java.lang.Character");
        } else if (str.equals("java.lang.String")) {
            return "";
        } else {
            if (str.equals("java.util.List")) {
                return new ArrayList();
            }
            if (str.equals("java.util.Map")) {
                return new HashMap();
            }
            if (str.equals("Array")) {
                return "Array";
            }
            if (str.equals("?")) {
                return str;
            }
            try {
                return Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
                throw new g(e);
            }
        }
    }

    public static String d(String str) {
        if (str.equals("java.lang.Integer") || str.equals("int")) {
            return "int32";
        }
        if (str.equals("java.lang.Boolean") || str.equals("boolean")) {
            return "bool";
        }
        if (str.equals("java.lang.Byte") || str.equals("byte")) {
            return "char";
        }
        if (str.equals("java.lang.Double") || str.equals("double")) {
            return "double";
        }
        if (str.equals("java.lang.Float") || str.equals("float")) {
            return "float";
        }
        if (str.equals("java.lang.Long") || str.equals("long")) {
            return "int64";
        }
        if (str.equals("java.lang.Short") || str.equals("short")) {
            return "short";
        }
        if (!str.equals("java.lang.Character")) {
            return str.equals("java.lang.String") ? "string" : str.equals("java.util.List") ? "list" : str.equals("java.util.Map") ? "map" : str;
        }
        throw new IllegalArgumentException("can not support java.lang.Character");
    }

    public static String e(String str) {
        return str.equals("int32") ? "java.lang.Integer" : str.equals("bool") ? "java.lang.Boolean" : str.equals("char") ? "java.lang.Byte" : str.equals("double") ? "java.lang.Double" : str.equals("float") ? "java.lang.Float" : str.equals("int64") ? "java.lang.Long" : str.equals("short") ? "java.lang.Short" : str.equals("string") ? "java.lang.String" : str.equals("list") ? "java.util.List" : str.equals("map") ? "java.util.Map" : str;
    }
}
