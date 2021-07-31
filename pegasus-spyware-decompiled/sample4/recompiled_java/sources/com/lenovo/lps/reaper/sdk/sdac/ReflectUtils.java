package com.lenovo.lps.reaper.sdk.sdac;

import java.lang.reflect.Method;

public class ReflectUtils {
    public static Object invokeClass(String className, String singleMethodName, Class<?>[] cls, Object... args) {
        try {
            Class<?> tmex = Class.forName(className);
            if (hasMethod(tmex, singleMethodName)) {
                return tmex.getMethod(singleMethodName, cls).invoke(tmex, args);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static Object invoke(Object c, String m, Class<?>[] cls, Object... args) {
        try {
            if (hasMethod(c.getClass(), m)) {
                return c.getClass().getMethod(m, cls).invoke(c, args);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static boolean hasMethod(Class<?> clazz, String m) {
        try {
            for (Method method : clazz.getDeclaredMethods()) {
                if (m.equals(method.getName())) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }
}
