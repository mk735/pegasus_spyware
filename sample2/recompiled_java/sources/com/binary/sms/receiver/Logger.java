package com.binary.sms.receiver;

import android.app.Activity;
import android.text.Html;
import android.util.Log;
import android.widget.EditText;

public class Logger {
    private static final String PEGASUS = "pegasus";
    private static Activity activity;
    private static EditText editor = null;
    private static boolean isDebug = true;
    private static Logger logger = new Logger();

    public static Logger getDefault() {
        return logger;
    }

    public static boolean isDebug() {
        return isDebug;
    }

    public void error(Throwable e) {
        Log.e(PEGASUS, e.getMessage(), e);
    }

    public static void e(Throwable e) {
        Log.e(PEGASUS, e.getMessage(), e);
    }

    public static void error(String message, Throwable e) {
        Log.e(PEGASUS, message, e);
    }

    public void debug(String message) {
        if (isDebug) {
            Log.d(PEGASUS, message);
        }
    }

    public static void info(String message) {
        info(message, false);
    }

    public void trace(String message) {
        if (isDebug) {
            Log.d(PEGASUS, message);
        }
    }

    public static void error(String message) {
        if (isDebug) {
            Log.e(PEGASUS, message);
        }
        editor.append("error: " + message + "\n");
    }

    public static void setTextField(EditText mEditor, Activity skeletonActivity) {
        editor = mEditor;
        activity = skeletonActivity;
    }

    public static void info(final String message, boolean printToScreen) {
        if (isDebug) {
            Log.i(PEGASUS, message);
            if (printToScreen && editor != null && activity != null) {
                activity.runOnUiThread(new Runnable() {
                    /* class com.binary.sms.receiver.Logger.AnonymousClass1 */

                    public void run() {
                        Logger.editor.append(String.valueOf(message) + "\n");
                    }
                });
            }
        }
    }

    public static void addLine() {
        if (isDebug) {
            Log.d(PEGASUS, "_____________________________________");
            if (editor != null && activity != null) {
                activity.runOnUiThread(new Runnable() {
                    /* class com.binary.sms.receiver.Logger.AnonymousClass2 */

                    public void run() {
                        Logger.editor.append("\n");
                        Logger.editor.append(Html.fromHtml("<font color='#FF0000'>___________________________________</font>"));
                        Logger.editor.append("\n");
                    }
                });
            }
        }
    }
}
