.class public Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;
.super Ljava/lang/Object;
.source "DoubleCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;,
        Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;,
        Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;
    }
.end annotation


# static fields
.field public static final SET_DAILY_NOTICE:I = 0x1

.field public static final SET_MONTH_CHECK:I = 0x4

.field public static final SET_MONTH_FREE_NOTICE:I = 0x5

.field public static final SET_MONTH_NOTICE:I = 0x2

.field public static final SET_MONTH_PACKAGE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static checkTraffic(JLcom/lenovo/safecenter/net/support/TrafficStatsService;Landroid/content/Context;I)V
    .locals 9
    .param p0, "number"    # J
    .param p2, "mAppDatabase"    # Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "postion"    # I

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    .line 419
    invoke-static {p3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v2

    .line 422
    .local v2, "mode":I
    if-eq v2, v7, :cond_0

    if-ne v2, v6, :cond_1

    .line 423
    :cond_0
    invoke-static {p3, p4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSystemMonthTraffic(Landroid/content/Context;I)J

    move-result-wide v4

    .line 428
    .local v4, "sysMonthUsedTraffic":J
    :goto_0
    sub-long v0, p0, v4

    .line 429
    .local v0, "inaccuracyTraffic":J
    if-ne v2, v7, :cond_2

    .line 431
    invoke-static {p3}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "simSubscriberId":Ljava/lang/String;
    :goto_1
    const-string v6, "testtrafficbug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTraffic long inaccuracy= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",simSubscriberId ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->updateTrafficCheck(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {p3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 441
    return-void

    .line 425
    .end local v0    # "inaccuracyTraffic":J
    .end local v3    # "simSubscriberId":Ljava/lang/String;
    .end local v4    # "sysMonthUsedTraffic":J
    :cond_1
    invoke-static {p3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSettingUiMonthTrafficLowLevel(Landroid/content/Context;)J

    move-result-wide v4

    .restart local v4    # "sysMonthUsedTraffic":J
    goto :goto_0

    .line 432
    .restart local v0    # "inaccuracyTraffic":J
    :cond_2
    if-ne v2, v6, :cond_3

    .line 433
    invoke-static {p3}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "simSubscriberId":Ljava/lang/String;
    goto :goto_1

    .line 435
    .end local v3    # "simSubscriberId":Ljava/lang/String;
    :cond_3
    const-string v3, "dev"

    .restart local v3    # "simSubscriberId":Ljava/lang/String;
    goto :goto_1
.end method

.method public static checkTraffic(Ljava/lang/Float;Lcom/lenovo/safecenter/net/support/TrafficStatsService;Landroid/content/Context;I)V
    .locals 11
    .param p0, "number"    # Ljava/lang/Float;
    .param p1, "mAppDatabase"    # Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "postion"    # I

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x44800000    # 1024.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x44800000    # 1024.0f

    mul-float/2addr v8, v9

    float-to-long v0, v8

    .line 394
    .local v0, "checkMonthUsedTraffic":J
    invoke-static {p2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v4

    .line 396
    .local v4, "mode":I
    const/16 v8, 0xc

    if-eq v4, v8, :cond_0

    const/16 v8, 0xa

    if-ne v4, v8, :cond_1

    .line 397
    :cond_0
    invoke-static {p2, p3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSystemMonthTraffic(Landroid/content/Context;I)J

    move-result-wide v6

    .line 401
    .local v6, "sysMonthUsedTraffic":J
    :goto_0
    const-string v8, "checkTraffic"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sysMonthUsedTraffic ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",checkMonthUsedTraffic ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sub-long v2, v0, v6

    .line 404
    .local v2, "inaccuracyTraffic":J
    const/16 v8, 0xc

    if-ne v4, v8, :cond_2

    .line 406
    invoke-static {p2}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "simSubscriberId":Ljava/lang/String;
    :goto_1
    const-string v8, "testtrafficbug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkTraffic float inaccuracy= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",simSubscriberId ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->updateTrafficCheck(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {p2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 416
    return-void

    .line 399
    .end local v2    # "inaccuracyTraffic":J
    .end local v5    # "simSubscriberId":Ljava/lang/String;
    .end local v6    # "sysMonthUsedTraffic":J
    :cond_1
    invoke-static {p2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsSettingUiMonthTrafficLowLevel(Landroid/content/Context;)J

    move-result-wide v6

    .restart local v6    # "sysMonthUsedTraffic":J
    goto :goto_0

    .line 407
    .restart local v2    # "inaccuracyTraffic":J
    :cond_2
    const/16 v8, 0xa

    if-ne v4, v8, :cond_3

    .line 408
    invoke-static {p2}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "simSubscriberId":Ljava/lang/String;
    goto :goto_1

    .line 410
    .end local v5    # "simSubscriberId":Ljava/lang/String;
    :cond_3
    const-string v5, "dev"

    .restart local v5    # "simSubscriberId":Ljava/lang/String;
    goto :goto_1
.end method

.method public static createSettingCheckBoxDialog(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V
    .locals 14
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;
    .param p2, "id"    # I

    .prologue
    .line 232
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v8

    .line 233
    .local v8, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v9

    .line 234
    .local v9, "mode":I
    const/16 v0, 0xc

    if-ne v9, v0, :cond_0

    .line 235
    iget-object v0, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const v0, 0x7f0d07e5

    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 303
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const v0, 0x7f0d07e5

    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0300b5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 248
    .local v12, "view":Landroid/view/View;
    const v0, 0x7f09040b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 249
    .local v10, "sim1View":Landroid/widget/RelativeLayout;
    const v0, 0x7f09040d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 250
    .local v11, "sim2View":Landroid/widget/RelativeLayout;
    iget-object v0, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    :cond_2
    iget-object v0, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    :cond_3
    const v0, 0x7f09040c

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 258
    .local v1, "mCheckBox1":Landroid/widget/CheckBox;
    const v0, 0x7f09040e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 260
    .local v2, "mCheckBox2":Landroid/widget/CheckBox;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "limit2":Ljava/lang/String;
    const-string v0, "-1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    :goto_1
    const-string v0, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 269
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn2()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    :goto_2
    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v7, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    const v0, 0x7f0d07c3

    invoke-virtual {v7, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 275
    invoke-virtual {v7, v12}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 276
    const v0, 0x7f0d0047

    new-instance v4, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$11;

    invoke-direct {v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$11;-><init>()V

    invoke-virtual {v7, v0, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 281
    const v13, 0x7f0d0046

    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$12;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ljava/lang/String;Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;Ljava/lang/String;)V

    invoke-virtual {v7, v13, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 302
    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 265
    .end local v7    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 271
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public static createSettingFloatDialog(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;I)V
    .locals 18
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;
    .param p2, "id"    # I

    .prologue
    .line 307
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v8

    .line 308
    .local v8, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v13

    .line 309
    .local v13, "mode":I
    const/16 v1, 0xc

    if-ne v13, v1, :cond_0

    .line 310
    iget-object v1, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const v1, 0x7f0d07e5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    :goto_0
    return-void

    .line 315
    :cond_0
    const/16 v1, 0xa

    if-ne v13, v1, :cond_1

    .line 316
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const v1, 0x7f0d07e5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0300b7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 323
    .local v16, "view":Landroid/view/View;
    const v1, 0x7f09041c

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 324
    .local v10, "layout2":Landroid/widget/LinearLayout;
    const v1, 0x7f090419

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 325
    .local v9, "layout1":Landroid/widget/LinearLayout;
    const v1, 0x7f090418

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 326
    .local v15, "textView":Landroid/widget/TextView;
    const v1, 0x7f09041a

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 327
    .local v11, "mText":Landroid/widget/TextView;
    const v1, 0x7f09041d

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 328
    .local v12, "mText2":Landroid/widget/TextView;
    const v1, 0x7f09041b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 330
    .local v2, "editText":Landroid/widget/EditText;
    const v1, 0x7f09041e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 332
    .local v3, "editText2":Landroid/widget/EditText;
    const/16 v1, 0xc

    if-eq v13, v1, :cond_3

    .line 333
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 352
    :goto_2
    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .local v7, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    const v1, 0x7f0d03c9

    invoke-virtual {v7, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 358
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 359
    const v17, 0x7f0d0046

    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$13;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;I)V

    move/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 382
    const v1, 0x7f0d0047

    new-instance v4, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$14;

    invoke-direct {v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$14;-><init>()V

    invoke-virtual {v7, v1, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 388
    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 335
    .end local v7    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    :cond_3
    const/16 v1, 0xc

    if-ne v13, v1, :cond_2

    .line 336
    invoke-static/range {p0 .. p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v14

    .line 337
    .local v14, "multiSIMUtils":Landroid/provider/MultiSIMUtils;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 346
    .end local v14    # "multiSIMUtils":Landroid/provider/MultiSIMUtils;
    :pswitch_0
    const/16 v1, 0xc

    if-ne v13, v1, :cond_5

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d07a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f0d07cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d07a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f0d07cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 349
    :cond_5
    const v1, 0x7f0d07cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;
    .param p2, "flag"    # I

    .prologue
    .line 62
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v5

    .line 63
    .local v5, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v10

    .line 64
    .local v10, "mode":I
    const-string v13, "trafficmode"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mode ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v13, 0xc

    if-ne v10, v13, :cond_0

    .line 66
    iget-object v13, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 68
    const v13, 0x7f0d07e5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 150
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v13, 0xa

    if-ne v10, v13, :cond_1

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 73
    const v13, 0x7f0d07e5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f0300bc

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 79
    .local v12, "view":Landroid/view/View;
    const v13, 0x7f09041c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 80
    .local v7, "layoutSim2":Landroid/widget/LinearLayout;
    const v13, 0x7f090419

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 81
    .local v6, "layoutSim1":Landroid/widget/LinearLayout;
    const/16 v13, 0xc

    if-eq v10, v13, :cond_5

    .line 82
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    const v13, 0x7f09041a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 84
    .local v11, "textView":Landroid/widget/TextView;
    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0d07af

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v11    # "textView":Landroid/widget/TextView;
    :cond_2
    :goto_1
    const v13, 0x7f09041b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 97
    .local v3, "editText":Landroid/widget/EditText;
    const v13, 0x7f09041e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 99
    .local v4, "editText2":Landroid/widget/EditText;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "limit2":Ljava/lang/String;
    const-string v13, "-1"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 102
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_3
    const-string v13, "-1"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 105
    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_4
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportSetTrafficLimit()V

    .line 108
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    const v13, 0x7f0d07af

    invoke-virtual {v2, v13}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 110
    invoke-virtual {v2, v12}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 111
    const v13, 0x7f0d0046

    new-instance v14, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v14, v3, v4, v0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    invoke-virtual {v2, v13, v14}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 143
    const v13, 0x7f0d0047

    new-instance v14, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$8;-><init>(Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    invoke-virtual {v2, v13, v14}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 149
    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 87
    .end local v2    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v4    # "editText2":Landroid/widget/EditText;
    .end local v8    # "limit":Ljava/lang/String;
    .end local v9    # "limit2":Ljava/lang/String;
    :cond_5
    iget-object v13, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 88
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    :cond_6
    iget-object v13, v5, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 91
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public static createSettingNumberDialog2(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;ILjava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;
    .param p2, "id"    # I
    .param p3, "card"    # Ljava/lang/String;

    .prologue
    .line 154
    const v1, 0x7f0d07a5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 155
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300bb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 157
    .local v12, "view":Landroid/view/View;
    const v1, 0x7f09041b

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 159
    .local v4, "editText":Landroid/widget/EditText;
    const v1, 0x7f090434

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 160
    .local v10, "mTextView":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 161
    .local v8, "mString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 162
    .local v11, "title":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 172
    :goto_0
    const-string v1, "-1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_1
    new-instance v7, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v7, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    invoke-virtual {v7, v11}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 183
    invoke-virtual {v7, v12}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 184
    const v13, 0x7f0d0046

    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;

    move-object v2, p0

    move-object/from16 v3, p3

    move/from16 v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$9;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/EditText;ILcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;)V

    invoke-virtual {v7, v13, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 221
    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$10;

    invoke-direct {v2}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$10;-><init>()V

    invoke-virtual {v7, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 227
    invoke-virtual {v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 228
    return-void

    .line 164
    .end local v7    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    :pswitch_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 165
    const v1, 0x7f0d07ca

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 166
    const v1, 0x7f0d07c8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    const v1, 0x7f0d07c9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "mString1":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d07af

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 179
    .end local v9    # "mString1":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showCorrectDialog(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->IsAirModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const v2, 0x7f0d07f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 605
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v1

    .line 556
    .local v1, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 557
    .local v0, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 558
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNeutralButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 559
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 560
    const v2, 0x7f0d03c9

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 561
    const v2, 0x7f0d07e1

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 562
    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 563
    const v2, 0x7f0d07df

    new-instance v3, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;

    invoke-direct {v3, v1, p0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$3;-><init>(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 579
    :cond_1
    iget-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 580
    const v2, 0x7f0d07e0

    new-instance v3, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$4;

    invoke-direct {v3, v1, p0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$4;-><init>(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 597
    :cond_2
    const v2, 0x7f0d0047

    new-instance v3, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$5;

    invoke-direct {v3}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$5;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 604
    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto :goto_0
.end method

.method public static showDailog(Landroid/app/Activity;ILcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V
    .locals 12
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "cardPostion"    # I
    .param p2, "listener"    # Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;
    .param p3, "viewId"    # I

    .prologue
    .line 504
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300bc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 506
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f09041c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 507
    .local v7, "layout":Landroid/widget/LinearLayout;
    const v0, 0x7f09041a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 508
    .local v9, "textView":Landroid/widget/TextView;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    const v0, 0x7f09041b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 511
    .local v1, "editText":Landroid/widget/EditText;
    if-nez p1, :cond_1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v8

    .line 512
    .local v8, "limit":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    const v0, 0x7f0d07a7

    :goto_1
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 513
    const-string v0, "-1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_0
    new-instance v6, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v6, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    const v0, 0x7f0d07af

    invoke-virtual {v6, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 518
    invoke-virtual {v6, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 519
    const v11, 0x7f0d0046

    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$15;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;II)V

    invoke-virtual {v6, v11, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 538
    const v0, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$2;

    invoke-direct {v2}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$2;-><init>()V

    invoke-virtual {v6, v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 544
    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 546
    return-void

    .line 511
    .end local v6    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .end local v8    # "limit":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 512
    .restart local v8    # "limit":Ljava/lang/String;
    :cond_2
    const v0, 0x7f0d07a8

    goto :goto_1
.end method

.method public static showSetNetWorkDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0d03be

    .line 608
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 611
    const v1, 0x7f0d07e8

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 612
    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 618
    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$7;

    invoke-direct {v2}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 625
    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 626
    return-void
.end method

.method public static showTariffOutLimitNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    .line 445
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 447
    .local v1, "manager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 448
    .local v2, "notification":Landroid/app/Notification;
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 450
    const v5, 0x7f0201fa

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 451
    const/4 v5, 0x1

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 452
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v4

    .line 456
    .local v4, "trafficMod":I
    sparse-switch p3, :sswitch_data_0

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    sget v5, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_3

    .line 490
    const-string v5, "android.settings.SETTINGS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    :goto_0
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 498
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 499
    invoke-virtual {v1, p3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 500
    return-void

    .line 466
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :sswitch_0
    if-ne v4, v8, :cond_0

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 473
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    if-ne v4, v8, :cond_1

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 476
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 480
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 481
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 483
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/net/TrafficStatistics;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 492
    :cond_3
    const-string v5, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x16 -> :sswitch_2
        0x18 -> :sswitch_1
    .end sparse-switch
.end method
