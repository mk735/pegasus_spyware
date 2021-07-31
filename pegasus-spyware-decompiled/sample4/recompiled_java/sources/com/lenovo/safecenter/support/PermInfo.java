package com.lenovo.safecenter.support;

public class PermInfo {
    public String description_cn;
    public String description_en;
    public String description_tw;
    public int isDisable = 0;
    public String permName;
    public String type;
    public int uid;

    public PermInfo(int uid2, String permName2, int isDisable2, String descriptionCn, String type2, String descriptionEn, String descriptionTw) {
        this.uid = uid2;
        this.permName = permName2;
        this.isDisable = isDisable2;
        this.description_cn = descriptionCn;
        this.type = type2;
        this.description_en = descriptionEn;
        this.description_tw = descriptionTw;
    }

    public PermInfo() {
    }
}
