.class public Lcom/lenovo/safecenter/net/doublemode/NetSetting;
.super Landroid/app/Activity;
.source "NetSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;,
        Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;
    }
.end annotation


# static fields
.field public static final NORMAL_SETTINGS_TRAFFIC_LIMIT:I = 0x6

.field public static final SETTINGS_TRAFFIC_LIMIT:I = 0x7


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/widget/CheckedTextView;

.field private C:Landroid/widget/CheckedTextView;

.field private D:Landroid/widget/CheckedTextView;

.field private E:Landroid/widget/CheckedTextView;

.field private F:Landroid/widget/CheckedTextView;

.field private G:Landroid/widget/CheckedTextView;

.field private H:Landroid/view/View;

.field private I:I

.field private J:I

.field private K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

.field private L:Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

.field private O:Landroid/provider/MultiSIMUtils;

.field private P:I

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Landroid/widget/EditText;

.field private T:Landroid/widget/EditText;

.field private U:I

.field private V:Landroid/content/SharedPreferences;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/view/View$OnClickListener;

.field private Y:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field public final mHandler:Landroid/os/Handler;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$1;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->mHandler:Landroid/os/Handler;

    .line 472
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$2;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->X:Landroid/view/View$OnClickListener;

    .line 509
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$3;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->S:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 14

    .prologue
    const v13, 0x7f0d003a

    const v12, 0x7f0d03a3

    const v11, 0x7f0d07b1

    const/4 v10, 0x4

    const v9, 0x7f0d048d

    .line 175
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "package1":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "package2":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v7, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v6, v7, :cond_3

    .line 178
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const-string v6, "s3"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "month used ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    .line 186
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    const v7, 0x7f0d07e4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 192
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :cond_0
    :goto_1
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetEverydayLimit()J

    move-result-wide v1

    .line 307
    .local v1, "mDailyNotice":J
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-nez v6, :cond_13

    .line 308
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->i:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    .line 313
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c()V

    .line 314
    return-void

    .line 187
    .end local v1    # "mDailyNotice":J
    :cond_1
    const-string v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d()V

    .line 196
    const-string v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "-1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a5

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_3
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 260
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    const v7, 0x7f0d07e4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 204
    :cond_4
    const-string v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "-1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 205
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a7

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a5

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn2()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 213
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 216
    :cond_5
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 221
    :cond_6
    const-string v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "-1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 222
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a7

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 228
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a5

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_4
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 231
    :cond_7
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a5

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 237
    :cond_8
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a7

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 243
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a5

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_5
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn2()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 250
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 246
    :cond_9
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a5

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 253
    :cond_a
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d07a6

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 265
    :cond_b
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 266
    const-string v6, "-1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    .local v0, "flag":Z
    if-eqz v0, :cond_f

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "trafficPackage":Ljava/lang/String;
    :goto_6
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn2()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 273
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_7
    if-eqz v0, :cond_c

    .line 280
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_c
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    .end local v0    # "flag":Z
    .end local v5    # "trafficPackage":Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    const-string v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 287
    .restart local v0    # "flag":Z
    const-string v6, "-1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5    # "trafficPackage":Ljava/lang/String;
    :goto_8
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 292
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v13}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_9
    if-eqz v0, :cond_e

    .line 299
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_e
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 267
    .end local v5    # "trafficPackage":Ljava/lang/String;
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 276
    .restart local v5    # "trafficPackage":Ljava/lang/String;
    :cond_10
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 287
    .end local v5    # "trafficPackage":Ljava/lang/String;
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 295
    .restart local v5    # "trafficPackage":Ljava/lang/String;
    :cond_12
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 310
    .end local v0    # "flag":Z
    .end local v5    # "trafficPackage":Ljava/lang/String;
    .restart local v1    # "mDailyNotice":J
    :cond_13
    iget-object v6, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private a(I)V
    .locals 13
    .param p1, "card"    # I

    .prologue
    .line 965
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v2

    .line 966
    .local v2, "info":Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    if-nez p1, :cond_2

    .line 967
    iget-object v9, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 969
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 972
    const v9, 0x7f0d083c

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const v9, 0x7f0d07e5

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 981
    :cond_2
    iget-object v9, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 982
    const v9, 0x7f0d07e5

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 987
    :cond_3
    if-nez p1, :cond_5

    .line 988
    const-string v9, "SIM1_properties_safecenter"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    .line 994
    :goto_1
    const-string v9, ""

    iget-object v10, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v11, "sms_message"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, ""

    iget-object v10, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v11, "sms_address"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    const/4 v1, 0x1

    .line 996
    .local v1, "codeHasChanged":Z
    :goto_2
    iget-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v10, "config_has_setted"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 997
    .local v4, "locationHasChanged":Z
    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    .line 998
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 999
    .local v5, "mIntent":Landroid/content/Intent;
    const-string v9, "card"

    invoke-virtual {v5, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1000
    const-string v9, "correct_type"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 991
    .end local v1    # "codeHasChanged":Z
    .end local v4    # "locationHasChanged":Z
    .end local v5    # "mIntent":Landroid/content/Intent;
    :cond_5
    const-string v9, "SIM2_properties_safecenter"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    goto :goto_1

    .line 994
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1004
    .restart local v1    # "codeHasChanged":Z
    .restart local v4    # "locationHasChanged":Z
    :cond_7
    iput p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->U:I

    .line 1005
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0300b9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1007
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f090428

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1009
    .local v3, "layout":Landroid/widget/RelativeLayout;
    new-instance v9, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;

    invoke-direct {v9, p0, p1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    const v9, 0x7f090429

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->W:Landroid/widget/TextView;

    .line 1020
    const v9, 0x7f09042b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->S:Landroid/widget/EditText;

    .line 1022
    const v9, 0x7f09042a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->T:Landroid/widget/EditText;

    .line 1024
    iget-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->S:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v11, "sms_message"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->T:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v11, "sms_address"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    const v9, 0x7f09042c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1029
    .local v7, "update":Landroid/widget/TextView;
    new-instance v9, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;

    invoke-direct {v9, p0, p1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .local v6, "sb":Ljava/lang/StringBuilder;
    const v9, 0x7f0d0833

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v11, "SIM_CARD_CITY_DESC"

    const-string v12, "default"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    const-string v11, "SIM_CARD_CARRY_DESC"

    const-string v12, "default"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    iget-object v9, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->W:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1057
    .local v0, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    invoke-virtual {v0, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 1058
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 1059
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 1060
    const v9, 0x7f0d083b

    invoke-virtual {v0, v9}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 1062
    const v9, 0x7f0d03c7

    new-instance v10, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;

    invoke-direct {v10, p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$7;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    invoke-virtual {v0, v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 1084
    const v9, 0x7f0d0832

    new-instance v10, Lcom/lenovo/safecenter/net/doublemode/NetSetting$8;

    invoke-direct {v10, p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$8;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    invoke-virtual {v0, v9, v10}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 1090
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1091
    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5
    .param p1, "correct"    # I
    .param p2, "sim"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0d07db

    const v3, 0x7f0d07d7

    const v2, 0x7f0d07d6

    const/16 v1, 0xc

    .line 871
    if-nez p1, :cond_1

    .line 872
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 878
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 880
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 886
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->I:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->T:Landroid/widget/EditText;

    return-object v0
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 778
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->trafficHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 779
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->trafficHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 781
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->U:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->J:I

    return p1
.end method

.method private c()V
    .locals 9

    .prologue
    const v8, 0x7f0d07db

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 839
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle()I

    move-result v0

    .line 840
    .local v0, "correct1":I
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle2()I

    move-result v1

    .line 841
    .local v1, "correct2":I
    const-string v2, "SIM1:"

    invoke-direct {p0, v0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(ILjava/lang/String;)V

    .line 843
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d07d6

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    :goto_0
    iget v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_6

    .line 846
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 848
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    const v3, 0x7f0d07e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 849
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 863
    :goto_1
    if-ne v0, v7, :cond_0

    if-ne v1, v7, :cond_0

    .line 864
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 865
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    :cond_0
    return-void

    .line 843
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d07d7

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 850
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    const-string v2, "SIM2:"

    invoke-direct {p0, v1, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(ILjava/lang/String;)V

    .line 852
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 853
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 854
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 856
    :cond_5
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 861
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->V:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const v2, 0x7f0d07e4

    const/4 v3, 0x0

    .line 904
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 905
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 908
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->s:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic2()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic2()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 929
    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 930
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 931
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 936
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 933
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 938
    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;
    .param p1, "x1"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$9;->start()V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->W:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->B:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->D:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->F:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->C:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->E:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->G:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->I:I

    return v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->J:I

    return v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 686
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 688
    .local v0, "id":I
    const v1, 0x7f0905c4

    if-ne v0, v1, :cond_0

    .line 689
    if-eqz p2, :cond_6

    const-string v1, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 690
    const/4 v1, 0x7

    invoke-static {p0, p0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    .line 692
    sget v1, Lcom/lenovo/safecenter/net/cache/NetCache;->traffic_mode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 696
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    .line 703
    :cond_0
    :goto_0
    const v1, 0x7f0905cb

    if-ne v0, v1, :cond_2

    .line 704
    if-eqz p2, :cond_7

    .line 705
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v1, :cond_1

    .line 706
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    invoke-static {p0, v4}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_status(Landroid/content/Context;Z)V

    .line 710
    invoke-static {v4}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportTrafficFloatwindowSwitchChanged(Z)V

    .line 720
    :cond_2
    :goto_1
    const v1, 0x7f0905ce

    if-ne v0, v1, :cond_4

    .line 721
    if-eqz p2, :cond_9

    .line 722
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v1, :cond_3

    .line 723
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    .line 725
    :cond_3
    invoke-static {p0, v4}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_immove_state(Landroid/content/Context;Z)V

    .line 734
    :cond_4
    :goto_2
    const v1, 0x7f0905d0

    if-ne v0, v1, :cond_5

    .line 735
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setIsAutoDeny(Landroid/content/Context;Z)V

    .line 736
    invoke-static {p2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportTrafficOutLimitDisableNetSwitchChanged(Z)V

    .line 739
    :cond_5
    return-void

    .line 699
    :cond_6
    invoke-static {p2}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    goto :goto_0

    .line 712
    :cond_7
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v1, :cond_8

    .line 713
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowVisibility(I)V

    .line 715
    :cond_8
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 716
    invoke-static {p0, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_status(Landroid/content/Context;Z)V

    .line 717
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportTrafficFloatwindowSwitchChanged(Z)V

    goto :goto_1

    .line 727
    :cond_9
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    if-eqz v1, :cond_a

    .line 728
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/support/SecurityService;->setFlowIsFixed(Z)V

    .line 730
    :cond_a
    invoke-static {p0, v3}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->save_flow_immove_state(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 643
    :goto_0
    return-void

    .line 613
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->finish()V

    goto :goto_0

    .line 617
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {p0, p0, v0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    goto :goto_0

    .line 621
    :sswitch_2
    invoke-static {p0, p0, v5, v2}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog2(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;ILjava/lang/String;)V

    goto :goto_0

    .line 625
    :sswitch_3
    const/4 v0, 0x5

    invoke-static {p0, p0, v0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingCheckBoxDialog(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V

    goto :goto_0

    .line 630
    :sswitch_4
    const/4 v0, 0x4

    invoke-static {p0, p0, v0}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingFloatDialog(Landroid/app/Activity;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingFloatNumberDialogListener;I)V

    goto :goto_0

    .line 634
    :sswitch_5
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/cache/NetCache;->setNetSettingHandler(Landroid/os/Handler;)V

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(I)V

    goto :goto_0

    .line 638
    :sswitch_6
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/cache/NetCache;->setNetSettingHandler(Landroid/os/Handler;)V

    .line 639
    invoke-direct {p0, v5}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(I)V

    goto :goto_0

    .line 642
    :sswitch_7
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d07e3

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v1, 0x7f09041f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v2, 0x7f090424

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v3, 0x7f090420

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v4, 0x7f090421

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->B:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v4, 0x7f090425

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->C:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v4, 0x7f090422

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->D:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v4, 0x7f090426

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->E:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v4, 0x7f090423

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->F:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    const v4, 0x7f090427

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->G:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v4, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->C:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->E:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->G:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    :cond_1
    :goto_1
    const-string v0, "4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim1 correct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sim2 correct ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->B:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_2
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle2()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->C:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_3
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->I:I

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle2()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->J:I

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->B:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->X:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->D:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->X:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->F:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->X:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->C:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->E:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->G:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d07da

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$4;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->D:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->F:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getNetCorrectCycle2()I

    move-result v0

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->E:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->G:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_3

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x7f0905ad -> :sswitch_0
        0x7f0905b1 -> :sswitch_1
        0x7f0905b4 -> :sswitch_5
        0x7f0905b7 -> :sswitch_6
        0x7f0905ba -> :sswitch_7
        0x7f0905bd -> :sswitch_4
        0x7f0905c0 -> :sswitch_3
        0x7f0905c5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    const v5, 0x7f0d07d5

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v0, 0x7f03011f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->setContentView(I)V

    .line 126
    iput-object p0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    .line 127
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .line 128
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    .line 129
    const v0, 0x7f0d07a7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->Q:Ljava/lang/String;

    .line 130
    const v0, 0x7f0d07a8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->R:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_0

    .line 133
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->O:Landroid/provider/MultiSIMUtils;

    .line 135
    :cond_0
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d07c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905b0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->v:Landroid/widget/TextView;

    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->P:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    const v0, 0x7f0905b3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->e:Landroid/widget/TextView;

    const v0, 0x7f0905b2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f:Landroid/widget/TextView;

    const v0, 0x7f0905c2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->g:Landroid/widget/TextView;

    const v0, 0x7f0905c1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->h:Landroid/widget/TextView;

    const v0, 0x7f0905b1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905c5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905c8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->i:Landroid/widget/TextView;

    const v0, 0x7f0905c0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905bd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905c3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905c4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    const v0, 0x7f0905cb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b:Landroid/widget/CheckBox;

    const v0, 0x7f0905ce

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0905cc

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905d0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c:Landroid/widget/CheckBox;

    const-string v0, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_immove_state(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getIsAutoDeny(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->O:Landroid/provider/MultiSIMUtils;

    invoke-virtual {v0, v4}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->O:Landroid/provider/MultiSIMUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    :goto_4
    const v0, 0x7f0905bf

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->r:Landroid/widget/TextView;

    const v0, 0x7f0905be

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->s:Landroid/widget/TextView;

    const v0, 0x7f0905ba

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905b4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905b7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905bc

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->t:Landroid/widget/TextView;

    const v0, 0x7f0905bb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    const v0, 0x7f0905b5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->w:Landroid/widget/TextView;

    const v0, 0x7f0905b8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->x:Landroid/widget/TextView;

    const v0, 0x7f0905b6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->y:Landroid/widget/TextView;

    const v0, 0x7f0905b9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    :cond_3
    :goto_6
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a()V

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->L:Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;

    invoke-direct {v0, p0, v4}, Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;-><init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->L:Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;

    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.lenovo.safecenter.flowrefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->L:Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void

    .line 131
    :cond_5
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    :goto_7
    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->a:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    goto :goto_7

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getIsNetMonthFreeNoticeOn1()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->w:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d07a5

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d07a6

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 953
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 954
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->L:Lcom/lenovo/safecenter/net/doublemode/NetSetting$b;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 955
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 606
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 608
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const v8, 0x7f0d03a3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 570
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 572
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getSIMCarryInfo(ILandroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4, p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getSIMCarryInfo(ILandroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_status(Landroid/content/Context;)Z

    move-result v3

    .line 588
    .local v3, "flowFlag":Z
    if-eqz v3, :cond_0

    .line 589
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 590
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 595
    :goto_2
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/safecenter/floatwindow/data/SaveData;->get_flow_immove_state(Landroid/content/Context;)Z

    move-result v2

    .line 596
    .local v2, "flowFixedFlag":Z
    if-eqz v2, :cond_1

    .line 597
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 602
    :goto_3
    return-void

    .line 575
    .end local v2    # "flowFixedFlag":Z
    .end local v3    # "flowFlag":Z
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 583
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 584
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "flowFlag":Z
    :cond_0
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 593
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->M:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 599
    .restart local v2    # "flowFixedFlag":Z
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method

.method public onSettingFloatNumberDialogCancel(I[Ljava/lang/Float;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "number"    # [Ljava/lang/Float;

    .prologue
    .line 836
    return-void
.end method

.method public onSettingFloatNumberDialogOK(I[Ljava/lang/Float;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "number"    # [Ljava/lang/Float;

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 820
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v0

    .line 822
    .local v0, "mAppDatabase":Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v1

    long-to-float v1, v1

    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    aget-object v1, p2, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    .line 823
    aget-object v1, p2, v3

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1, v0, v2, v3}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->checkTraffic(Ljava/lang/Float;Lcom/lenovo/safecenter/net/support/TrafficStatsService;Landroid/content/Context;I)V

    .line 826
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic2()J

    move-result-wide v1

    long-to-float v1, v1

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    aget-object v1, p2, v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_1

    .line 827
    aget-object v1, p2, v4

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v1, v0, v2, v4}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->checkTraffic(Ljava/lang/Float;Lcom/lenovo/safecenter/net/support/TrafficStatsService;Landroid/content/Context;I)V

    .line 830
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d()V

    .line 831
    invoke-static {}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b()V

    .line 832
    return-void
.end method

.method public onSettingNumberDialogCancel(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 817
    return-void
.end method

.method public onSettingNumberDialogCancel([II)V
    .locals 3
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x0

    .line 944
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 947
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    .line 949
    :cond_0
    return-void
.end method

.method public onSettingNumberDialogOK(III)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "id"    # I
    .param p3, "postion"    # I

    .prologue
    .line 784
    packed-switch p2, :pswitch_data_0

    .line 808
    :goto_0
    :pswitch_0
    return-void

    .line 786
    :pswitch_1
    const-string v0, "4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Const;->setNetEverydayLimit(J)V

    .line 789
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->i:Landroid/widget/TextView;

    const v1, 0x7f0d03a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d07b1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 796
    :pswitch_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 797
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    .line 799
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 800
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic2(Ljava/lang/String;)V

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 803
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a()V

    .line 804
    invoke-static {}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b()V

    goto :goto_0

    .line 807
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a()V

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSettingNumberDialogOK([II)V
    .locals 5
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->N:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting$a;

    if-ne v0, v1, :cond_3

    .line 743
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->K:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    aget v0, p1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic2(Ljava/lang/String;)V

    .line 763
    :cond_1
    :goto_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 764
    aget v0, p1, v2

    if-ne v0, v4, :cond_6

    .line 765
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 766
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    .line 772
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->statsTrafficMobile(Landroid/content/Context;)V

    .line 773
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a()V

    .line 774
    invoke-static {}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->b()V

    .line 775
    return-void

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTrafficMode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    .line 752
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 753
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    .line 758
    :cond_4
    :goto_2
    aget v0, p1, v2

    if-ne v0, v4, :cond_1

    .line 759
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 760
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    goto :goto_0

    .line 756
    :cond_5
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    goto :goto_2

    .line 768
    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 769
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setIsNetMonthFreeNoticeOn1(Z)V

    goto :goto_1
.end method
