package com.tencent.tccdb;

public class MatchRule {
    public String postfix;
    public String prefix;
    public int type;
    public int unit;

    public MatchRule(int i, int i2, String str, String str2) {
        this.unit = i;
        this.type = i2;
        this.prefix = str;
        this.postfix = str2;
    }
}
