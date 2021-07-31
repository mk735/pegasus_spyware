package tms;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;

public final class q {
    public static final String a = "key_last_verify_success";
    public static final String b = "key_last_verify_time";
    public static final String c = "key_next_verify_time";
    public static final String d = "action_verify";

    public static void a() {
        Context applicaionContext = TMSApplication.getApplicaionContext();
        Intent intent = new Intent(applicaionContext, TMSApplication.getSecureServiceClass());
        intent.setAction(d);
        ((AlarmManager) applicaionContext.getSystemService("alarm")).cancel(PendingIntent.getService(applicaionContext, 0, intent, 0));
    }

    public static void a(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public static void a(Context context, String str, String str2, int i) {
        z zVar = new z(context);
        zVar.a(context.getFilesDir().getAbsolutePath());
        zVar.b(str2);
        zVar.a(i);
        zVar.a(str, false);
    }

    public static boolean b(Context context, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("pm install " + str);
            return ScriptHelper.runScriptAsRoot(arrayList) == 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean c(Context context, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("mount -o remount,rw /");
            arrayList.add("chmod 0777 " + str);
            arrayList.add("rm " + str);
            int runScriptAsRoot = ScriptHelper.runScriptAsRoot(arrayList);
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            return runScriptAsRoot == 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void d(Context context, String str) {
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static boolean e(Context context, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("pm uninstall " + str);
            return ScriptHelper.runScriptAsRoot(arrayList) == 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean f(Context context, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("pm disable " + str);
            arrayList.add("pm enable " + str);
            return ScriptHelper.runScriptAsRoot(arrayList) == 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean g(Context context, String str) {
        try {
            if (ScriptHelper.runScriptAsRoot(str) == 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
