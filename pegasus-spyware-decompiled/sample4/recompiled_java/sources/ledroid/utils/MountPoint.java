package ledroid.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public final class MountPoint {
    private static HashMap<String, String> a = new HashMap<>(5);

    private MountPoint() {
    }

    public static String getDeviceName(String mountPoint) {
        Throwable th;
        if (mountPoint == null) {
            return null;
        }
        if (a.containsKey(mountPoint)) {
            return a.get(mountPoint);
        }
        String deviceName = null;
        BufferedReader mountPointReader = null;
        try {
            BufferedReader mountPointReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
            while (true) {
                try {
                    String buffer = mountPointReader2.readLine();
                    if (buffer != null) {
                        if (buffer.contains(mountPoint)) {
                            deviceName = buffer.split(" ")[0];
                            a.put(mountPoint, deviceName);
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (IOException e) {
                    mountPointReader = mountPointReader2;
                    FileUtils.closeIOCloseable(mountPointReader);
                    return deviceName;
                } catch (Throwable th2) {
                    th = th2;
                    mountPointReader = mountPointReader2;
                    FileUtils.closeIOCloseable(mountPointReader);
                    throw th;
                }
            }
            FileUtils.closeIOCloseable(mountPointReader2);
        } catch (IOException e2) {
            FileUtils.closeIOCloseable(mountPointReader);
            return deviceName;
        } catch (Throwable th3) {
            th = th3;
            FileUtils.closeIOCloseable(mountPointReader);
            throw th;
        }
        return deviceName;
    }
}
