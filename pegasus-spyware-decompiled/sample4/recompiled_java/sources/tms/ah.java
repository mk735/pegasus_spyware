package tms;

import java.lang.reflect.Field;

public final class ah {
    public static Class<?> a;

    public static final int a(Object obj, String str, int i) {
        a(obj.getClass().getName());
        Field b = b(str);
        if (b == null) {
            return i;
        }
        try {
            return b.getInt(obj);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return i;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return i;
        }
    }

    public static final int a(String str, int i) {
        Field b = b(str);
        if (b == null) {
            return i;
        }
        try {
            return b.getInt(null);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return i;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return i;
        }
    }

    public static Object a(Object obj, String str) throws Exception {
        return obj.getClass().getField(str).get(obj);
    }

    public static Object a(Object obj, String str, Object[] objArr) throws Exception {
        Class<?> cls = obj.getClass();
        Class<?>[] clsArr = new Class[objArr.length];
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            clsArr[i] = objArr[i].getClass();
            if (clsArr[i] == Integer.class) {
                clsArr[i] = Integer.TYPE;
            } else if (clsArr[i] == Boolean.class) {
                clsArr[i] = Boolean.TYPE;
            }
        }
        return cls.getMethod(str, clsArr).invoke(obj, objArr);
    }

    public static Object a(String str, String str2) {
        a(str);
        Field b = b(str2);
        if (b == null) {
            return null;
        }
        try {
            return b.get(null);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Object a(String str, Object[] objArr) throws Exception {
        Class<?> cls = Class.forName(str);
        Class<?>[] clsArr = new Class[objArr.length];
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            clsArr[i] = objArr[i].getClass();
        }
        return cls.getConstructor(clsArr).newInstance(objArr);
    }

    public static final boolean a(String str) {
        Class<?> cls = null;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        a = cls;
        return a != null;
    }

    private static final Field b(String str) {
        NoSuchFieldException e;
        Field field;
        SecurityException e2;
        try {
            field = a.getDeclaredField(str);
            try {
                field.setAccessible(true);
            } catch (SecurityException e3) {
                e2 = e3;
                e2.printStackTrace();
                return field;
            } catch (NoSuchFieldException e4) {
                e = e4;
                e.printStackTrace();
                return field;
            }
        } catch (SecurityException e5) {
            field = null;
            e2 = e5;
            e2.printStackTrace();
            return field;
        } catch (NoSuchFieldException e6) {
            field = null;
            e = e6;
            e.printStackTrace();
            return field;
        }
        return field;
    }
}
