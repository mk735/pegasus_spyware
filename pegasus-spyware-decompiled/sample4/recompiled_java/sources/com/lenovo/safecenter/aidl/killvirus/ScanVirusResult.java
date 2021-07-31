package com.lenovo.safecenter.aidl.killvirus;

public class ScanVirusResult {
    public int advice;
    public int apkType;
    public String certMd5;
    public String discription;
    public String label;
    public int malwareid;
    public String name;
    public String packageName;
    public String path;
    public int size;
    public String softName;
    public int type;
    public String url;
    public String version;
    public int versionCode;

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("type=").append(this.type);
        sb.append(",packageName=").append(this.packageName);
        sb.append(",softName=").append(this.softName);
        sb.append(",discription=").append(this.discription);
        sb.append(",version=").append(this.version);
        sb.append(",versionCode=").append(this.versionCode);
        sb.append(",apkType=").append(this.apkType);
        sb.append(",path=").append(this.path);
        sb.append(",certMd5=").append(this.certMd5);
        sb.append(",size=").append(this.size);
        sb.append(",advice=").append(this.advice);
        sb.append(",malwareid=").append(this.malwareid);
        sb.append(",name=").append(this.name);
        sb.append(",label=").append(this.label);
        sb.append(",url=").append(this.url);
        return sb.toString();
    }
}
