.class final Ltms/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/lbsapi/QLBSNotification;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ltms/al;


# direct methods
.method constructor <init>(Ltms/al;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltms/i;->b:Ltms/al;

    iput-object p2, p0, Ltms/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationNotification(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ltms/i;->a:Ljava/lang/String;

    iget-object v1, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v1}, Ltms/al;->b(Ltms/al;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v2}, Ltms/al;->a(Ltms/al;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v0}, Ltms/al;->c(Ltms/al;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v0}, Ltms/al;->d(Ltms/al;)Lcom/tencent/lbsapi/QLBSService;

    move-result-object v0

    const/16 v1, 0x65

    iget-object v2, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v2}, Ltms/al;->a(Ltms/al;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/lbsapi/QLBSService;->requestGetCurrentPosition(ILjava/lang/String;I)Z

    goto :goto_0
.end method

.method public final onResponseError(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ltms/i;->a:Ljava/lang/String;

    iget-object v1, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v1}, Ltms/al;->b(Ltms/al;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v2}, Ltms/al;->a(Ltms/al;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v0}, Ltms/al;->c(Ltms/al;)V

    return-void
.end method

.method public final onResponseGetCurPosition(ILcom/tencent/lbsapi/model/QLBSPosition;)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getGps()Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getGps()Lcom/tencent/lbsapi/model/QLBSGPSInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/lbsapi/model/QLBSGPSInfo;->getLon()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://msm.qq.com/1?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/lbsapi/model/QLBSPosition;->getRoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff08\u7eac\u5ea6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ecf\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v3}, Ltms/al;->b(Ltms/al;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateSuccess()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v2}, Ltms/al;->a(Ltms/al;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v0}, Ltms/al;->c(Ltms/al;)V

    return-void

    :cond_0
    iget-object v0, p0, Ltms/i;->a:Ljava/lang/String;

    iget-object v1, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v1}, Ltms/al;->b(Ltms/al;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltms/i;->b:Ltms/al;

    invoke-static {v2}, Ltms/al;->a(Ltms/al;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final onResponseGetNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    .locals 0

    return-void
.end method

.method public final onResponseSearchNearPoiList(ILcom/tencent/lbsapi/model/QLBSPoiInfoBatch;)V
    .locals 0

    return-void
.end method
