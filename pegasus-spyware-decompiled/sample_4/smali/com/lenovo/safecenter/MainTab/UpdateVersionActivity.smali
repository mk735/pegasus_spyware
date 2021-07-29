.class public Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;
.super Landroid/app/Activity;
.source "UpdateVersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;
.implements Lcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;
.implements Ljava/util/Observer;


# static fields
.field public static final DIALOG_MANUAL_ALL_NEW:I = 0x3

.field public static final DIALOG_MANUAL_MOBILE_UPDATE:I = 0x2

.field public static final DIALOG_MANUAL_NO_NET:I = 0x4

.field private static h:Landroid/content/Context;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/pm/PackageManager;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/pm/PackageInfo;

.field private i:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 519
    new-instance v0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$4;-><init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h:Landroid/content/Context;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->g:Landroid/content/pm/PackageInfo;

    .line 105
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->f:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 109
    const v1, 0x7f0d0327

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 170
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->isAutoUpdate(Landroid/content/Context;)Z

    move-result v0

    .line 171
    .local v0, "istrue":Z
    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->a:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getSelectedUpdateModeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->a:Landroid/widget/TextView;

    const v2, 0x7f0d037a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 14

    .prologue
    const v13, 0x7f0d03a0

    const v12, 0x7f070008

    .line 181
    const v9, 0x7f09006b

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 182
    .local v6, "updateTimeVirusLabTv":Landroid/widget/TextView;
    const v9, 0x7f09006e

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 183
    .local v4, "updateTimeBlacklistLabTv":Landroid/widget/TextView;
    const v9, 0x7f090071

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 189
    .local v5, "updateTimeSignCallLabTv":Landroid/widget/TextView;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/qv_base.amf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "virustime":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    :cond_0
    const-string v7, "2012.11.13"

    .line 202
    .local v7, "virusLabVersion":Ljava/lang/String;
    :goto_0
    const-string v9, "wu0wu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "virusLabVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    const-string v9, "lastintag"

    invoke-static {v9, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "blackLabTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 218
    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "blacklistLabVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v1    # "blacklistLabVersion":Ljava/lang/String;
    :goto_2
    const-string v9, "sign_lastin"

    invoke-static {v9, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "signCallLabTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 232
    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "signCallLabVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .end local v3    # "signCallLabVersion":Ljava/lang/String;
    :goto_3
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->f()V

    .line 245
    return-void

    .line 197
    .end local v0    # "blackLabTime":Ljava/lang/String;
    .end local v2    # "signCallLabTime":Ljava/lang/String;
    .end local v7    # "virusLabVersion":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy.MM.dd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/utils/WflUtils;->convertLongTime2DateFormat(Ljava/lang/Long;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "virusLabVersion":Ljava/lang/String;
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 224
    .restart local v0    # "blackLabTime":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 238
    .restart local v2    # "signCallLabTime":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    const-string v9, "2012.07.01"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0d039d

    const v4, 0x7f07000d

    .line 249
    const v3, 0x7f09006b

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 250
    .local v2, "updateTimeVirusLabTv":Landroid/widget/TextView;
    const v3, 0x7f09006e

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, "updateTimeBlacklistLabTv":Landroid/widget/TextView;
    const v3, 0x7f090071

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 252
    .local v1, "updateTimeSignCallLabTv":Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    invoke-static {v7}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    invoke-static {v7}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_1
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 273
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_2
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isUpdateingLab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 285
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->i()V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h()V

    goto :goto_0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 453
    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isUpdateingLab()Z

    move-result v4

    if-nez v4, :cond_0

    .line 454
    const v4, 0x7f090072

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 455
    .local v1, "note_isUpdating_lab_layout":Landroid/widget/LinearLayout;
    const v4, 0x7f09006c

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 456
    .local v0, "blacklist_lab_layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f090069

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 457
    .local v3, "virus_lab_layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f09006f

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 458
    .local v2, "signCall_lab_layout":Landroid/widget/RelativeLayout;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 460
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 461
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    .end local v0    # "blacklist_lab_layout":Landroid/widget/RelativeLayout;
    .end local v1    # "note_isUpdating_lab_layout":Landroid/widget/LinearLayout;
    .end local v2    # "signCall_lab_layout":Landroid/widget/RelativeLayout;
    .end local v3    # "virus_lab_layout":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 466
    const v4, 0x7f090072

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 467
    .local v1, "note_isUpdating_lab_layout":Landroid/widget/LinearLayout;
    const v4, 0x7f09006c

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 468
    .local v0, "blacklist_lab_layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f090069

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 469
    .local v3, "virus_lab_layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f09006f

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 470
    .local v2, "signCall_lab_layout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 473
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    return-void
.end method


# virtual methods
.method final a()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 478
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->i:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    if-nez v0, :cond_0

    .line 479
    const/4 v3, 0x0

    .line 482
    .local v3, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 484
    .local v10, "packageinfo":Landroid/content/pm/PackageInfo;
    iget v3, v10, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v10    # "packageinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    sget-object v1, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->SUS_CHANNEL:Ljava/lang/String;

    new-instance v8, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$3;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$3;-><init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZZLcom/lenovo/safecenter/utils/update/LeSafeUpdate$LeSafeUpdateListenser;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->i:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    .line 516
    .end local v3    # "versionCode":I
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->i:Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;

    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/utils/update/LeSafeUpdate;->upDate(Z)V

    .line 517
    return-void

    .line 485
    .restart local v3    # "versionCode":I
    :catch_0
    move-exception v9

    .line 486
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public canExecute(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, "i":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v1, "file":Ljava/io/File;
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 543
    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const-string v3, "ydp"

    const-string v4, "canExecute()...true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v3, 0x1

    .line 557
    :goto_1
    return v3

    .line 547
    :cond_0
    const-string v3, "ydp"

    const-string v4, "canExecute()...false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-wide/16 v3, 0x5dc

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 557
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 300
    :sswitch_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isAllNewVersionLab()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isQueryedLab()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h:Landroid/content/Context;

    sget-object v1, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h:Landroid/content/Context;

    const v2, 0x7f0d068e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v3, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceUpdateLab(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->showDialog(I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->showDialog(I)V

    goto :goto_0

    .line 308
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->removeDialog(I)V

    .line 309
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->showDialog(I)V

    goto :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x7f090064 -> :sswitch_1
        0x7f090074 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->setContentView(I)V

    .line 91
    sput-object p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->e:Landroid/content/pm/PackageManager;

    .line 95
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0368

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    .line 97
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d0324

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->e()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->g()V

    .line 98
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 368
    packed-switch p1, :pswitch_data_0

    .line 378
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 370
    :pswitch_0
    invoke-static {p0, p1, p0}, Lcom/lenovo/safecenter/utils/DialogUtil;->createAutoUpdateRatechoice(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$SettingNumberDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-static {p0, p1, p0}, Lcom/lenovo/safecenter/utils/DialogUtil;->createManualUpdateDialog(Landroid/content/Context;ILcom/lenovo/safecenter/utils/DialogUtil$WarnDialogListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "ydp"

    const-string v1, "update onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 352
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 337
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->finish()V

    .line 341
    :cond_0
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 356
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 358
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 363
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 364
    return-void
.end method

.method public onSettingNumberDialogCancel(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "choiceMode"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onSettingNumberDialogOK(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "choiceMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 384
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto update choiceMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {p2, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setAutoUpdateMode(ILandroid/content/Context;)V

    .line 388
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 389
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setIsAutoUpdate(ZLandroid/content/Context;)V

    .line 390
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->cancelNoticeUpdateLab(Landroid/content/Context;)V

    .line 395
    :goto_0
    if-eq p2, v3, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 396
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->cancelNoticeUpdateLab(Landroid/content/Context;)V

    .line 397
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AlarmManageUtils;->noticeUpdateLab(Landroid/content/Context;)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->d()V

    .line 401
    return-void

    .line 392
    :cond_2
    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->setIsAutoUpdate(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public onWarnDialogCancel(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 427
    return-void
.end method

.method public onWarnDialogOk(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 412
    packed-switch p1, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 414
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    .line 415
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceUpdateLab(Landroid/content/Context;)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 431
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 432
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "wu0wu"

    const-string v1, "UpdateAndPasswordActivity LeSafeObservable.OBSERVER_UPDATED_LAB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->g()V

    .line 437
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->e()V

    .line 438
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->h()V

    .line 439
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    .line 441
    :cond_0
    const/4 v1, 0x1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->f()V

    .line 444
    :cond_1
    const/16 v0, 0xb

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->g()V

    .line 446
    invoke-direct {p0}, Lcom/lenovo/safecenter/MainTab/UpdateVersionActivity;->i()V

    .line 450
    :cond_2
    return-void
.end method
