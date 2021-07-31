package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;

public final class QQInfo extends JceStruct implements Cloneable {
    static ArrayList<ClientVersionInfo> a;
    static ServerCmdInfo b;
    static final /* synthetic */ boolean c = (!QQInfo.class.desiredAssertionStatus());
    public ServerCmdInfo cmdinfo;
    public String loginkey;
    public String username;
    public ArrayList<ClientVersionInfo> vecclient;

    public QQInfo() {
        this.username = "";
        this.loginkey = "";
        this.vecclient = null;
        this.cmdinfo = null;
        this.username = this.username;
        this.loginkey = this.loginkey;
        this.vecclient = this.vecclient;
        this.cmdinfo = this.cmdinfo;
    }

    public QQInfo(String str, String str2, ArrayList<ClientVersionInfo> arrayList, ServerCmdInfo serverCmdInfo) {
        this.username = "";
        this.loginkey = "";
        this.vecclient = null;
        this.cmdinfo = null;
        this.username = str;
        this.loginkey = str2;
        this.vecclient = arrayList;
        this.cmdinfo = serverCmdInfo;
    }

    public final String className() {
        return "QQPIM.QQInfo";
    }

    @Override // java.lang.Object
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.username, "username");
        jceDisplayer.display(this.loginkey, "loginkey");
        jceDisplayer.display((Collection) this.vecclient, "vecclient");
        jceDisplayer.display((JceStruct) this.cmdinfo, "cmdinfo");
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        QQInfo qQInfo = (QQInfo) obj;
        return JceUtil.equals(this.username, qQInfo.username) && JceUtil.equals(this.loginkey, qQInfo.loginkey) && JceUtil.equals(this.vecclient, qQInfo.vecclient) && JceUtil.equals(this.cmdinfo, qQInfo.cmdinfo);
    }

    public final String fullClassName() {
        return "QQPIM.QQInfo";
    }

    public final ServerCmdInfo getCmdinfo() {
        return this.cmdinfo;
    }

    public final String getLoginkey() {
        return this.loginkey;
    }

    public final String getUsername() {
        return this.username;
    }

    public final ArrayList<ClientVersionInfo> getVecclient() {
        return this.vecclient;
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.username = jceInputStream.readString(0, true);
        this.loginkey = jceInputStream.readString(1, true);
        if (a == null) {
            a = new ArrayList<>();
            a.add(new ClientVersionInfo());
        }
        setVecclient((ArrayList) jceInputStream.read((Object) a, 2, false));
        if (b == null) {
            b = new ServerCmdInfo();
        }
        setCmdinfo((ServerCmdInfo) jceInputStream.read((JceStruct) b, 3, false));
    }

    public final void setCmdinfo(ServerCmdInfo serverCmdInfo) {
        this.cmdinfo = serverCmdInfo;
    }

    public final void setLoginkey(String str) {
        this.loginkey = str;
    }

    public final void setUsername(String str) {
        this.username = str;
    }

    public final void setVecclient(ArrayList<ClientVersionInfo> arrayList) {
        this.vecclient = arrayList;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.username, 0);
        jceOutputStream.write(this.loginkey, 1);
        if (this.vecclient != null) {
            jceOutputStream.write((Collection) this.vecclient, 2);
        }
        if (this.cmdinfo != null) {
            jceOutputStream.write((JceStruct) this.cmdinfo, 3);
        }
    }
}
