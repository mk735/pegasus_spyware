package QQPIM;

import com.lenovo.providers.querypermissions.QueryPermissions;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.software.AppEntity;
import java.util.ArrayList;
import java.util.Collection;

public final class Category extends JceStruct implements Cloneable {
    static ArrayList<String> a;
    static byte[] b;
    static final /* synthetic */ boolean c = (!Category.class.desiredAssertionStatus());
    public int autoalert;
    public int categorytype;
    public int count;
    public String description;
    public int endtime;
    public byte[] expand;
    public String icon;
    public int id;
    public String name;
    public int sign;
    public int source;
    public int state;
    public ArrayList<String> vecSubtitle;
    public int viewtimes;
    public String welcome;

    public Category() {
        this.id = 0;
        this.name = "";
        this.icon = "";
        this.count = 0;
        this.welcome = "";
        this.autoalert = 0;
        this.endtime = 0;
        this.categorytype = 0;
        this.source = 1;
        this.vecSubtitle = null;
        this.description = "";
        this.sign = 0;
        this.state = 0;
        this.viewtimes = 0;
        this.expand = null;
        this.id = this.id;
        this.name = this.name;
        this.icon = this.icon;
        this.count = this.count;
        this.welcome = this.welcome;
        this.autoalert = this.autoalert;
        this.endtime = this.endtime;
        this.categorytype = this.categorytype;
        this.source = this.source;
        this.vecSubtitle = this.vecSubtitle;
        this.description = this.description;
        this.sign = this.sign;
        this.state = this.state;
        this.viewtimes = this.viewtimes;
        this.expand = this.expand;
    }

    public Category(int i, String str, String str2, int i2, String str3, int i3, int i4, int i5, int i6, ArrayList<String> arrayList, String str4, int i7, int i8, int i9, byte[] bArr) {
        this.id = 0;
        this.name = "";
        this.icon = "";
        this.count = 0;
        this.welcome = "";
        this.autoalert = 0;
        this.endtime = 0;
        this.categorytype = 0;
        this.source = 1;
        this.vecSubtitle = null;
        this.description = "";
        this.sign = 0;
        this.state = 0;
        this.viewtimes = 0;
        this.expand = null;
        this.id = i;
        this.name = str;
        this.icon = str2;
        this.count = i2;
        this.welcome = str3;
        this.autoalert = i3;
        this.endtime = i4;
        this.categorytype = i5;
        this.source = i6;
        this.vecSubtitle = arrayList;
        this.description = str4;
        this.sign = i7;
        this.state = i8;
        this.viewtimes = i9;
        this.expand = bArr;
    }

    public final String className() {
        return "QQPIM.Category";
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
        jceDisplayer.display(this.id, QueryPermissions.ID);
        jceDisplayer.display(this.name, "name");
        jceDisplayer.display(this.icon, AppEntity.KEY_ICON_DRAWABLE);
        jceDisplayer.display(this.count, "count");
        jceDisplayer.display(this.welcome, "welcome");
        jceDisplayer.display(this.autoalert, "autoalert");
        jceDisplayer.display(this.endtime, "endtime");
        jceDisplayer.display(this.categorytype, "categorytype");
        jceDisplayer.display(this.source, "source");
        jceDisplayer.display((Collection) this.vecSubtitle, "vecSubtitle");
        jceDisplayer.display(this.description, "description");
        jceDisplayer.display(this.sign, "sign");
        jceDisplayer.display(this.state, "state");
        jceDisplayer.display(this.viewtimes, "viewtimes");
        jceDisplayer.display(this.expand, MarketManager.JCE_EXPAND_KEY);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Category category = (Category) obj;
        return JceUtil.equals(this.id, category.id) && JceUtil.equals(this.name, category.name) && JceUtil.equals(this.icon, category.icon) && JceUtil.equals(this.count, category.count) && JceUtil.equals(this.welcome, category.welcome) && JceUtil.equals(this.autoalert, category.autoalert) && JceUtil.equals(this.endtime, category.endtime) && JceUtil.equals(this.categorytype, category.categorytype) && JceUtil.equals(this.source, category.source) && JceUtil.equals(this.vecSubtitle, category.vecSubtitle) && JceUtil.equals(this.description, category.description) && JceUtil.equals(this.sign, category.sign) && JceUtil.equals(this.state, category.state) && JceUtil.equals(this.viewtimes, category.viewtimes) && JceUtil.equals(this.expand, category.expand);
    }

    public final String fullClassName() {
        return "QQPIM.Category";
    }

    public final int getAutoalert() {
        return this.autoalert;
    }

    public final int getCategorytype() {
        return this.categorytype;
    }

    public final int getCount() {
        return this.count;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getEndtime() {
        return this.endtime;
    }

    public final byte[] getExpand() {
        return this.expand;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getSign() {
        return this.sign;
    }

    public final int getSource() {
        return this.source;
    }

    public final int getState() {
        return this.state;
    }

    public final ArrayList<String> getVecSubtitle() {
        return this.vecSubtitle;
    }

    public final int getViewtimes() {
        return this.viewtimes;
    }

    public final String getWelcome() {
        return this.welcome;
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
        this.id = jceInputStream.read(this.id, 0, true);
        this.name = jceInputStream.readString(1, true);
        this.icon = jceInputStream.readString(2, true);
        this.count = jceInputStream.read(this.count, 3, true);
        this.welcome = jceInputStream.readString(4, false);
        this.autoalert = jceInputStream.read(this.autoalert, 5, false);
        this.endtime = jceInputStream.read(this.endtime, 6, false);
        this.categorytype = jceInputStream.read(this.categorytype, 7, false);
        this.source = jceInputStream.read(this.source, 8, false);
        if (a == null) {
            a = new ArrayList<>();
            a.add("");
        }
        setVecSubtitle((ArrayList) jceInputStream.read((Object) a, 9, false));
        setDescription(jceInputStream.readString(10, false));
        setSign(jceInputStream.read(this.sign, 11, false));
        setState(jceInputStream.read(this.state, 12, false));
        setViewtimes(jceInputStream.read(this.viewtimes, 13, false));
        if (b == null) {
            b = new byte[1];
            b[0] = 0;
        }
        setExpand(jceInputStream.read(b, 14, false));
    }

    public final void setAutoalert(int i) {
        this.autoalert = i;
    }

    public final void setCategorytype(int i) {
        this.categorytype = i;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setEndtime(int i) {
        this.endtime = i;
    }

    public final void setExpand(byte[] bArr) {
        this.expand = bArr;
    }

    public final void setIcon(String str) {
        this.icon = str;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setSign(int i) {
        this.sign = i;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setState(int i) {
        this.state = i;
    }

    public final void setVecSubtitle(ArrayList<String> arrayList) {
        this.vecSubtitle = arrayList;
    }

    public final void setViewtimes(int i) {
        this.viewtimes = i;
    }

    public final void setWelcome(String str) {
        this.welcome = str;
    }

    @Override // com.qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.id, 0);
        jceOutputStream.write(this.name, 1);
        jceOutputStream.write(this.icon, 2);
        jceOutputStream.write(this.count, 3);
        if (this.welcome != null) {
            jceOutputStream.write(this.welcome, 4);
        }
        jceOutputStream.write(this.autoalert, 5);
        jceOutputStream.write(this.endtime, 6);
        jceOutputStream.write(this.categorytype, 7);
        jceOutputStream.write(this.source, 8);
        if (this.vecSubtitle != null) {
            jceOutputStream.write((Collection) this.vecSubtitle, 9);
        }
        if (this.description != null) {
            jceOutputStream.write(this.description, 10);
        }
        jceOutputStream.write(this.sign, 11);
        jceOutputStream.write(this.state, 12);
        jceOutputStream.write(this.viewtimes, 13);
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 14);
        }
    }
}
