package tms;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;

public class hj implements hd {
    @Override // tms.hd
    public void a(String str, String str2) {
        if (str2 != null) {
            Log.i(str, str2);
        }
    }

    @Override // tms.hd
    public void b(String str, String str2) {
        if (str2 != null) {
            Log.e(str, str2);
        }
    }

    @Override // tms.hd
    public void c(String str, String str2) {
        if (str2 != null) {
            Log.d(str, str2);
            com.tencent.tmsecure.utils.Log.writeLog(new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss").format(new Date(System.currentTimeMillis())) + " " + str + " " + str2 + "\r\n");
        }
    }
}
