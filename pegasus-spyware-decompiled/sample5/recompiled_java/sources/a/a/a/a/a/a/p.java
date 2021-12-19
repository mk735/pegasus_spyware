package a.a.a.a.a.a;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class p extends l {

    /* renamed from: a  reason: collision with root package name */
    private ResourceBundle f25a = ResourceBundle.getBundle("org.eclipse.paho.client.mqttv3.internal.nls.messages");

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.l
    public final String b(int i) {
        try {
            return this.f25a.getString(Integer.toString(i));
        } catch (MissingResourceException e) {
            return "MqttException";
        }
    }
}
