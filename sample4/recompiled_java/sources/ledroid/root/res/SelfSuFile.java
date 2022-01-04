package ledroid.root.res;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import ledroid.root.ICommandTransport;
import ledroid.root.ShellCommand;
import ledroid.utils.AndroidResourceFile;
import ledroid.utils.FileUtils;
import ledroid.utils.MountPoint;

public final class SelfSuFile {
    private Context a = null;
    private AndroidResourceFile b = null;
    private File c = null;

    public SelfSuFile(Context ctx, int resid) {
        this.a = ctx;
        this.b = new AndroidResourceFile(this.a.getResources(), resid);
        this.c = new File("/system/bin/cmcc_ps");
    }

    public final String getExecName() {
        return "/system/bin/cmcc_ps";
    }

    public final String getAbsolutePath() {
        return this.c.getAbsolutePath();
    }

    public final boolean hadDeployed() {
        if (this.c == null) {
            return false;
        }
        return this.c.exists();
    }

    public final boolean deployedIsUpToData() {
        if (hadDeployed() && this.c.length() == ((long) this.b.getLength())) {
            return true;
        }
        return false;
    }

    public final boolean deployedSelfSuToSystem(ICommandTransport cmdTransport) throws IOException {
        File locSuFile = new File(this.a.getFilesDir() + "/suser");
        try {
            if (this.b.writeTo(locSuFile)) {
                String absolutePath = locSuFile.getAbsolutePath();
                ShellCommand shellCommand = new ShellCommand(cmdTransport);
                shellCommand.setResponseCallBack(new ShellCommand.ShellCommandResponse() {
                    /* class ledroid.root.res.SelfSuFile.AnonymousClass1 */

                    @Override // ledroid.root.ShellCommand.ShellCommandResponse
                    public final void onShellCommandResponse(int exeId, String reply) {
                        Log.i("SelfRoot", "Self Su Response: " + reply);
                    }
                });
                String absolutePath2 = this.c.getAbsolutePath();
                shellCommand.addCommand("mount -oremount,rw", MountPoint.getDeviceName("/system"), "/system").addCommand("mount -oremount,rw /system /system");
                if (FileUtils.fileExist("/system/bin/busybox")) {
                    shellCommand.addCommand("busybox cp -v", absolutePath, absolutePath2);
                } else {
                    shellCommand.addCommand("cat", absolutePath, ">", absolutePath2);
                }
                shellCommand.addCommand("chown", "0:0", absolutePath2).addCommand("chmod", "6777", absolutePath2).addCommand("mount -oremount,ro", MountPoint.getDeviceName("/system"), "/system").addCommand("mount -oremount,ro /system /system").addCommand("ls", absolutePath2).exec().waitResponse(500L);
            }
            return hadDeployed();
        } finally {
            if (locSuFile.exists()) {
                locSuFile.delete();
            }
        }
    }

    public final void setToBad() {
        try {
            FileUtils.stringToFile(this.a.getCacheDir() + "/suf", "bad");
        } catch (IOException e1) {
            e1.printStackTrace();
        }
    }

    public final boolean isBadSelfSu() {
        return new File(this.a.getCacheDir() + "/suf").exists();
    }
}
