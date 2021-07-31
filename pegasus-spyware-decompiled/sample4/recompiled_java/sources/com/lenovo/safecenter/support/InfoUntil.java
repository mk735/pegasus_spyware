package com.lenovo.safecenter.support;

import android.util.Log;
import com.lenovo.providers.querypermissions.QueryPermissions;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class InfoUntil {
    public String fetch_memory_info() {
        try {
            return new a().a(new String[]{"/system/bin/cat", "/proc/meminfo"}, "/system/bin");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String fetch_cpu_info() {
        try {
            StringTokenizer ss = new StringTokenizer(new a().a(new String[]{"/system/bin/cat", "/proc/stat"}, "/system/bin/"), "fpu_exception\t");
            Log.i(QueryPermissions.RECOMMENDEDACTION, "result====" + ss.nextToken());
            return ss.nextToken();
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public String computeCpu() {
        String[] strs = fetch_cpu_info().trim().split(" ");
        List<String> cpuNums = new ArrayList<>();
        for (int i = 0; i < strs.length; i++) {
            if (i > 0) {
                Log.i("cpumes", strs[i] + ">>>>" + strs.length);
                cpuNums.add(strs[i].trim());
            }
        }
        Long.parseLong("0");
        long total = 0;
        Log.i("cpumes", cpuNums.size() + "..............");
        for (int j = 0; j < cpuNums.size(); j++) {
            total += Long.parseLong(cpuNums.get(j));
        }
        Log.i("cpumes", total + "," + cpuNums.get(3));
        return total + "," + cpuNums.get(3);
    }

    public String formatSize(double size) {
        String suffix = null;
        double size2 = Math.abs(size);
        if (size2 >= 1024.0d) {
            suffix = " KB";
            size2 /= 1024.0d;
            if (size2 >= 1024.0d) {
                suffix = " M";
                size2 /= 1024.0d;
            }
        }
        DecimalFormat formatter = new DecimalFormat();
        formatter.setGroupingSize(3);
        String result = formatter.format(((double) Math.round(size2 * 100.0d)) / 100.0d);
        if (suffix != null) {
            return result + suffix;
        }
        return result;
    }
}
