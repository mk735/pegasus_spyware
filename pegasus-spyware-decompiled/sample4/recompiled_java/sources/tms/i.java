package tms;

import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.SMSUtil;
import java.text.DecimalFormat;

/* access modifiers changed from: package-private */
public final class i implements QLBSNotification {
    final /* synthetic */ String a;
    final /* synthetic */ al b;

    i(al alVar, String str) {
        this.b = alVar;
        this.a = str;
    }

    @Override // com.tencent.lbsapi.QLBSNotification
    public final void onLocationNotification(int i) {
        if (i != 1) {
            SMSUtil.sendSMS(this.a, this.b.b.tips4LocateFaild(), this.b.a);
            al.c(this.b);
            return;
        }
        this.b.d.requestGetCurrentPosition(101, PhoneInfoUtil.getIMEI(this.b.a), 3);
    }

    @Override // com.tencent.lbsapi.QLBSNotification
    public final void onResponseError(int i, int i2, String str) {
        SMSUtil.sendSMS(this.a, this.b.b.tips4LocateFaild(), this.b.a);
        al.c(this.b);
    }

    @Override // com.tencent.lbsapi.QLBSNotification
    public final void onResponseGetCurPosition(int i, QLBSPosition qLBSPosition) {
        if (qLBSPosition != null) {
            DecimalFormat decimalFormat = new DecimalFormat("#.00");
            String format = decimalFormat.format(qLBSPosition.getGps().getLat());
            String format2 = decimalFormat.format(qLBSPosition.getGps().getLon());
            SMSUtil.sendSMS(this.a, this.b.b.tips4LocateSuccess() + ("http://msm.qq.com/1?" + format + "," + format2 + " \n" + qLBSPosition.getCity() + qLBSPosition.getDistrict() + qLBSPosition.getRoad() + "（纬度：" + format + ", " + "经度：" + format2 + "）"), this.b.a);
        } else {
            SMSUtil.sendSMS(this.a, this.b.b.tips4LocateFaild(), this.b.a);
        }
        al.c(this.b);
    }

    @Override // com.tencent.lbsapi.QLBSNotification
    public final void onResponseGetNearPoiList(int i, QLBSPoiInfoBatch qLBSPoiInfoBatch) {
    }

    @Override // com.tencent.lbsapi.QLBSNotification
    public final void onResponseSearchNearPoiList(int i, QLBSPoiInfoBatch qLBSPoiInfoBatch) {
    }
}
