.class public final Ltms/al;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

.field private c:Ltms/ao;

.field private d:Lcom/tencent/lbsapi/QLBSService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method static synthetic a(Ltms/al;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/al;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Ltms/al;)Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;
    .locals 1

    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    return-object v0
.end method

.method private b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "custom:3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Ltms/al;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AntitheftManagerImpl"

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Ltms/al;)V
    .locals 1

    iget-object v0, p0, Ltms/al;->d:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/QLBSService;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltms/al;->d:Lcom/tencent/lbsapi/QLBSService;

    return-void
.end method

.method static synthetic d(Ltms/al;)Lcom/tencent/lbsapi/QLBSService;
    .locals 1

    iget-object v0, p0, Ltms/al;->d:Lcom/tencent/lbsapi/QLBSService;

    return-object v0
.end method


# virtual methods
.method public final a()Ltms/ao;
    .locals 1

    iget-object v0, p0, Ltms/al;->c:Ltms/ao;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Ltms/al;->c:Ltms/ao;

    invoke-virtual {v3, v6}, Ltms/ao;->a(Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ltms/al;->c:Ltms/ao;

    invoke-virtual {v3}, Ltms/ao;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_c

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "#qqdeleteall#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "#qqdeleteall#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v0

    :goto_1
    if-ne v3, v2, :cond_6

    move v1, v2

    :cond_2
    :goto_2
    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :goto_3
    move v0, v6

    goto :goto_0

    :cond_3
    const-string v5, "#qqlocate#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v3, "#qqlocate#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const-string v5, "#qqlock#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "#qqlock#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v6

    goto :goto_1

    :cond_5
    const-string v5, "#qqpin#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "#qqpin#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_1

    :cond_6
    if-ne v3, v1, :cond_8

    iget-object v3, p0, Ltms/al;->c:Ltms/ao;

    invoke-virtual {v3}, Ltms/ao;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_7
    const/4 v1, 0x5

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ltms/al;->c:Ltms/ao;

    invoke-virtual {v5, v6}, Ltms/ao;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Ltms/al;->c:Ltms/ao;

    invoke-virtual {v4, v0}, Ltms/ao;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    move v1, v3

    goto :goto_2

    :cond_a
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4DeletingData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltms/e;

    invoke-direct {v1, p0, p2}, Ltms/e;-><init>(Ltms/al;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->getLockPhoneIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4LockPhoneSuccess()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4Locating()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Ltms/al;->b()Z

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, v6}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    :cond_b
    new-instance v0, Lcom/tencent/lbsapi/QLBSService;

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    new-instance v2, Ltms/i;

    invoke-direct {v2, p0, p2}, Ltms/i;-><init>(Ltms/al;Ljava/lang/String;)V

    const-string v3, "B1_msecure_android"

    const-string v4, "C7tLv_Yaf"

    const-string v5, "msecure_sdk_1.1"

    invoke-direct/range {v0 .. v5}, Lcom/tencent/lbsapi/QLBSService;-><init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltms/al;->d:Lcom/tencent/lbsapi/QLBSService;

    iget-object v0, p0, Ltms/al;->d:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0, v6}, Lcom/tencent/lbsapi/QLBSService;->setGpsEnabled(Z)V

    iget-object v0, p0, Ltms/al;->d:Lcom/tencent/lbsapi/QLBSService;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/lbsapi/QLBSService;->startLocation(I)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4GetPasswordSuccess()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4PasswordError()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, p0, Ltms/al;->b:Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;->tips4GetPasswordFailed()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltms/al;->a:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_c
    move v3, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Ltms/al;->a:Landroid/content/Context;

    new-instance v0, Ltms/ao;

    invoke-direct {v0}, Ltms/ao;-><init>()V

    iput-object v0, p0, Ltms/al;->c:Ltms/ao;

    return-void
.end method
