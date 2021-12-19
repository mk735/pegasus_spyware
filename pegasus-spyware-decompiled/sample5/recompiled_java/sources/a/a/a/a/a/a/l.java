package a.a.a.a.a.a;

public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    private static l f22a = null;

    public static final String a(int i) {
        if (f22a == null) {
            if (h.a("java.util.ResourceBundle")) {
                try {
                    f22a = (l) Class.forName("a.a.a.a.a.a.p").newInstance();
                } catch (Exception e) {
                    return "";
                }
            } else if (h.a("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog")) {
                try {
                    f22a = (l) Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog").newInstance();
                } catch (Exception e2) {
                    return "";
                }
            }
        }
        return f22a.b(i);
    }

    /* access modifiers changed from: protected */
    public abstract String b(int i);
}
