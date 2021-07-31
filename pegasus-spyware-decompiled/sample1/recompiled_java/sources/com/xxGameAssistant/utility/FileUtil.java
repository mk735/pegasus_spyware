package com.xxGameAssistant.utility;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileUtil {
    static Context mContext;
    static FileOutputStream mFileStream;
    static String mfileName;

    public FileUtil(Context context, String fileName) {
        mContext = context;
        mfileName = fileName;
        mFileStream = null;
    }

    public void fprintf(String content) {
        try {
            mFileStream = mContext.openFileOutput(mfileName, 32768);
            mFileStream.write(content.getBytes());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public void fflush() {
        try {
            mFileStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    public void fclose() {
        try {
            if (mFileStream != null) {
                mFileStream.write(("==Terminated at " + new SimpleDateFormat("yyyy-MM-dd#HH:mm:ss").format(new Date()).toString() + "==\n\n").getBytes());
                mFileStream.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
