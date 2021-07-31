package com.lenovo.safecenter.floatwindow.view;

import android.util.Log;
import com.lenovo.performancecenter.framework.DatabaseTables;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ProcessMemoryUtil {
    private List<String[]> a = null;

    public ProcessMemoryUtil() {
        initPMUtil();
    }

    private static String a() {
        Log.i("fetch_process_info", "start. . . . ");
        try {
            return new CMDExecute().run(new String[]{"/system/bin/top", "-n", DatabaseTables.SYSTEM_MARK}, "/system/bin/");
        } catch (IOException ex) {
            Log.i("fetch_process_info", "ex=" + ex.toString());
            return null;
        }
    }

    private int a(String infoString) {
        boolean bIsProcInfo = false;
        String[] rows = infoString.split("[\n]+");
        Log.d("yhh", "rows" + rows.length);
        for (String tempString : rows) {
            if (tempString.indexOf("PID") != -1) {
                bIsProcInfo = true;
            } else if (bIsProcInfo) {
                String[] columns = tempString.trim().split("[ ]+");
                if (columns.length == 9) {
                    this.a.add(columns);
                }
            }
        }
        return this.a.size();
    }

    public void initPMUtil() {
        this.a = new ArrayList();
        a(a());
    }

    public String getMemInfoByName(String procName) {
        initPMUtil();
        String result = "";
        Iterator<String[]> iterator = this.a.iterator();
        while (true) {
            if (iterator.hasNext()) {
                String[] item = iterator.next();
                String tempString = item[8];
                if (tempString != null && tempString.equals(procName)) {
                    result = "CPU:" + item[1] + "  Mem:" + item[5];
                    break;
                }
            } else {
                break;
            }
        }
        Log.d("yhh", "memoryresult" + result);
        return result;
    }

    public String getMemInfoByPid(int pid) {
        int count = this.a.size();
        for (int i = 0; i < count; i++) {
            String[] item = this.a.get(i);
            String tempPidString = item[0];
            if (tempPidString != null && Integer.parseInt(tempPidString) == pid) {
                return "CPU:" + item[1] + "  Mem:" + item[5];
            }
        }
        return "";
    }
}
