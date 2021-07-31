package ledroid.utils;

import android.util.Log;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;

public class ReflectClass {
    private String a;
    private Class<?> b;
    private Object c;

    public ReflectClass(String name) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.a = name;
    }

    public ReflectClass(Class<?> clazz) {
        this(clazz.getName());
        this.b = clazz;
    }

    public ReflectClass(String name, Object instance) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.a = name;
        this.c = instance;
    }

    public ReflectClass(Class<?> clazz, Object instance) {
        this(clazz.getName(), instance);
        this.b = clazz;
    }

    private Class<?> a() throws ClassNotFoundException {
        if (this.b == null) {
            this.b = Class.forName(this.a);
        }
        return this.b;
    }

    public void setInstance(Object instance) {
        this.c = instance;
    }

    public boolean hasInstance() {
        return this.c != null;
    }

    public Object newInstance() throws InstantiationException, InvocationTargetException, NoSuchMethodException, ClassNotFoundException, IllegalAccessException {
        if (this.c != null) {
            throw new IllegalAccessException("Instance already new.");
        }
        Constructor<?> constructor = a().getDeclaredConstructor(new Class[0]);
        if (constructor != null) {
            new a(constructor).a();
            constructor.setAccessible(true);
            this.c = constructor.newInstance(new Object[0]);
        }
        return this.c;
    }

    public Object newInstance(Class<?>[] argTypes, Object[] args) throws IllegalAccessException, InstantiationException, InvocationTargetException, NoSuchMethodException, ClassNotFoundException {
        if (this.c != null) {
            throw new IllegalAccessException("Instance already new.");
        }
        this.c = a().getDeclaredConstructor(argTypes).newInstance(args);
        return this.c;
    }

    public boolean hasField(String fieldName) {
        try {
            a().getDeclaredField(fieldName);
            return true;
        } catch (ClassNotFoundException | NoSuchFieldException | SecurityException e) {
            return false;
        }
    }

    public boolean hasMethod(String methodName, Class<?>[] argTypes) {
        Method m = null;
        try {
            m = a().getDeclaredMethod(methodName, argTypes);
        } catch (ClassNotFoundException e) {
            Log.w("ReflectClass", e.getLocalizedMessage());
        } catch (SecurityException e2) {
            Log.w("ReflectClass", e2.getLocalizedMessage());
        } catch (NoSuchMethodException e3) {
            Log.w("ReflectClass", e3.getLocalizedMessage());
        }
        if (m != null) {
            return true;
        }
        return false;
    }

    public int getStaticFieldValueInt(String fieldName) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return a().getDeclaredField(fieldName).getInt(null);
    }

    public int getFieldValueInt(String fieldName) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        if (this.c != null) {
            return a().getDeclaredField(fieldName).getInt(this.c);
        }
        throw new IllegalAccessException("No [" + this.a + "] instance for field [" + fieldName + "].");
    }

    public static final class ReflectField<T> {
        private Field a;

        ReflectField(Field field) {
            this.a = field;
            if (this.a != null && !this.a.isAccessible()) {
                new a(this.a).a();
            }
        }

        /* access modifiers changed from: protected */
        public final T getValue(Object obj) {
            try {
                return (T) this.a.get(obj);
            } catch (IllegalAccessException | IllegalArgumentException e) {
                return null;
            }
        }
    }

    public <T> ReflectField<T> getDeclaredField(String fieldName, Class<T> cls) {
        try {
            return new ReflectField<>(a().getDeclaredField(fieldName));
        } catch (Exception e) {
            Log.w("ReflectClass", e.getLocalizedMessage());
            return null;
        }
    }

    public <T> T getFieldVaule(ReflectField<T> field) {
        return field.getValue(this.c);
    }

    public Method getDeclaredMethod(String methodName, Class<?>... argTypes) {
        try {
            return a().getDeclaredMethod(methodName, argTypes);
        } catch (Exception e) {
            Log.w("ReflectClass", e.getLocalizedMessage());
            return null;
        }
    }

    public Object invoke(Method m, Object... args) throws IllegalAccessException, InvocationTargetException {
        if (m != null) {
            return m.invoke(this.c, args);
        }
        Log.w("ReflectClass", "Method object is null.");
        return null;
    }

    public Object invoke(String methodName, Class<?>[] argTypes, Object... args) throws IllegalAccessException, InvocationTargetException {
        Method m = getDeclaredMethod(methodName, argTypes);
        if (m == null) {
            return null;
        }
        return invoke(m, args);
    }

    private static final class a {
        private AccessibleObject a;
        private Boolean b = true;

        a(AccessibleObject member) {
            this.a = member;
        }

        public final void a() {
            this.b = true;
            AccessController.doPrivileged(new PrivilegedAction<Void>() {
                /* class ledroid.utils.ReflectClass.a.AnonymousClass1 */

                /* Return type fixed from 'java.lang.Object' to match base method */
                @Override // java.security.PrivilegedAction
                public final /* synthetic */ Void run() {
                    if (a.this.a == null) {
                        return null;
                    }
                    a.this.a.setAccessible(a.this.b.booleanValue());
                    return null;
                }
            });
        }
    }
}
