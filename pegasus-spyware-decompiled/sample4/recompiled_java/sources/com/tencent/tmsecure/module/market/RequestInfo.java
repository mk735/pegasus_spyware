package com.tencent.tmsecure.module.market;

import QQPIM.EModelID;
import com.tencent.tmsecure.common.BaseEntity;
import com.tencent.tmsecure.utils.PhoneInfoUtil;

public class RequestInfo extends BaseEntity {
    public int categoryID;
    public int fetchOffset;
    public int fetchSize;
    public String keyWord;
    public int pushType = 0;
    public int sort_type;
    public String time;
    public int type;

    public static int getCategoryId(int i) {
        switch (i) {
            case 2:
                return 10001;
            case 3:
            case 4:
            case 5:
            case 9:
            case 11:
            case 12:
            default:
                return 0;
            case 6:
                return 2000001;
            case 7:
                return 2000002;
            case 8:
                return 3000000;
            case 10:
                return EModelID._EMID_PhoneBook_Friend_Switch;
            case 13:
                return 2000011;
            case 14:
                return 20120413;
            case 15:
                return 2000010;
        }
    }

    public String getRequestCommand() {
        int i = this.sort_type == 0 ? 1 : 0;
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.type) {
            case 2:
            case 6:
            case 7:
            case 10:
            case 13:
            case 14:
            case 15:
                stringBuffer.append("categoryid=").append(getCategoryId(this.type)).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i);
                break;
            case 3:
                stringBuffer.append("categorytype=").append(0);
                break;
            case 4:
            case 12:
                stringBuffer.append("categoryid=").append(this.categoryID).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i);
                break;
            case 8:
                stringBuffer.append("categoryid=").append(3000000).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i).append("&qua=").append("AQQSecure_GA_2_0/011201&ADR&" + PhoneInfoUtil.getModelName() + "&V2").append("&guid=").append("0").append("&query=").append(this.keyWord);
                break;
            case 9:
                stringBuffer.append("categorytype=").append(3);
                break;
            case 11:
                stringBuffer.append("categorytype=").append(2).append("&time=").append(this.time).append("&pushtype=").append(this.pushType);
                break;
            case 16:
                stringBuffer.append("categorytype=").append(1);
                break;
        }
        return stringBuffer.toString();
    }
}
