.class public Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
.super Landroid/app/Activity;
.source "TrafficStatisticsDoubleMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;
.implements Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

.field private E:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

.field private F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

.field private G:I

.field private H:Landroid/content/SharedPreferences;

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/Runnable;

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/net/support/TrafficDate;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/safecenter/net/support/TrafficDate;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/HorizontalScrollView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

.field private w:Landroid/content/Context;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$1;-><init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->I:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->J:Z

    .line 653
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$4;-><init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->K:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;)Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
    .param p1, "x1"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->E:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Lcom/lenovo/safecenter/net/support/TrafficStatsService;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
    .param p1, "x1"    # Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->v:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->m:Ljava/util/HashMap;

    return-object p1
.end method

.method private a()V
    .locals 12

    .prologue
    .line 123
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed()I

    move-result v8

    iput v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->B:I

    .line 124
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProgressTrafficMonthUsed2()I

    move-result v8

    iput v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->C:I

    .line 125
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic()J

    move-result-wide v3

    .line 126
    .local v3, "monthFree1":J
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthFreeTraffic2()J

    move-result-wide v5

    .line 127
    .local v5, "monthFree2":J
    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->B:I

    const/16 v9, 0x64

    if-ge v8, v9, :cond_0

    .line 128
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const-string v9, "#348213"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :goto_0
    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->C:I

    const/16 v9, 0x64

    if-ge v8, v9, :cond_1

    .line 133
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const-string v9, "#348213"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    :goto_1
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->E:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    sget-object v9, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    if-ne v8, v9, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e()V

    .line 143
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-ltz v8, :cond_3

    .line 144
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-ltz v8, :cond_4

    .line 150
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_4
    const-string v8, "4.0"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Const.getMonthLimitTraffic() ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Const.getMonthLimitTraffic2() ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Const.getHasNoticed2SetMonthLimit() ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getHasNoticed2SetMonthLimit()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v7, "\u2014"

    .line 168
    .local v7, "s":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 169
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const-string v9, "#2c96d6"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const v9, 0x7f0d07e4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const-string v9, "#2c96d6"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const v9, 0x7f0d07e4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07a9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d07a3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d07e3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_5
    return-void

    .line 130
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const-string v9, "#cd3737"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const-string v9, "#cd3737"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->f()V

    goto/16 :goto_2

    .line 146
    :cond_3
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    neg-long v10, v3

    invoke-static {p0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 152
    :cond_4
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    neg-long v10, v5

    invoke-static {p0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 179
    .restart local v7    # "s":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 181
    const-string v8, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 184
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const-string v9, "#dc5e2c"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const-string v9, "#dc5e2c"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07a9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d07a3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d07b2

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 194
    :cond_6
    const-string v8, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 195
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07ce

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const v9, 0x7f0d07b3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 198
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->c()V

    goto/16 :goto_5

    .line 203
    :cond_7
    const-string v8, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 204
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07ce

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const v9, 0x7f0d07b3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 207
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b()V

    goto/16 :goto_5

    .line 213
    :cond_8
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07ce

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->B:I

    const/16 v9, 0x5a

    if-ge v8, v9, :cond_9

    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->C:I

    const/16 v9, 0x5a

    if-ge v8, v9, :cond_9

    .line 218
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d07a3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d07b6

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 221
    :cond_9
    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->B:I

    const/16 v9, 0x5a

    if-lt v8, v9, :cond_a

    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->C:I

    const/16 v9, 0x5a

    if-lt v8, v9, :cond_a

    .line 222
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d07a3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d07b7

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 226
    :cond_a
    const v8, 0x7f0d07b8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "formaString":Ljava/lang/String;
    iget v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->B:I

    const/16 v9, 0x5a

    if-lt v8, v9, :cond_b

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0d07a3

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const v11, 0x7f0d07a5

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const v11, 0x7f0d07a6

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "finalInfo":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 235
    .end local v0    # "finalInfo":Ljava/lang/String;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0d07a3

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const v11, 0x7f0d07a6

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const v11, 0x7f0d07a5

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "finalInfo2":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 247
    .end local v1    # "finalInfo2":Ljava/lang/String;
    .end local v2    # "formaString":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 248
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const-string v9, "#2c96d6"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const v9, 0x7f0d07e4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 250
    const-string v8, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 251
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const v9, 0x7f0d07b3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 253
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d07a3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d07bf

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07a9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 260
    :cond_d
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->c()V

    .line 262
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07ce

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 266
    :cond_e
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const-string v9, "#2c96d6"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    const v9, 0x7f0d07e4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 268
    const-string v8, "-1"

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitTraffic()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 269
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const v9, 0x7f0d07b3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 271
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d07a3

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d07bf

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07a9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 278
    :cond_f
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b()V

    .line 280
    iget-object v8, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v9, 0x7f0d07ce

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5
.end method

.method private a(II)V
    .locals 2
    .param p1, "postion"    # I
    .param p2, "flag"    # I

    .prologue
    .line 525
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$3;-><init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;I)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
    .param p1, "x1"    # I

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->n:Ljava/util/HashMap;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    const v2, 0x7f0d07a3

    .line 288
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->B:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":SIM1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d07ba

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":SIM1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d07bb

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d()V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const v2, 0x7f0d07a3

    .line 301
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->C:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":SIM2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d07ba

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":SIM2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d07bb

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->H:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 507
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDate()I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->z:I

    .line 508
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->f:Landroid/widget/TextView;

    const-string v1, "0.00B"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->g:Landroid/widget/TextView;

    const-string v1, "0.00B"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_1
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthUsedTraffic2()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h:Landroid/widget/TextView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 644
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->i:Landroid/widget/TextView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 645
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->i:Landroid/widget/TextView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 650
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h:Landroid/widget/TextView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 651
    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->J:Z

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->I:Z

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->v:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->G:I

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->z:I

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->t:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method


# virtual methods
.method protected drawDayTrafficIsNotSetup(I)V
    .locals 24
    .param p1, "cardPostion"    # I

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 315
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDayCountInMonth()I

    move-result v4

    .line 316
    .local v4, "count":I
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentMonth()I

    move-result v10

    .line 317
    .local v10, "month":I
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getCurrentYear()I

    move-result v19

    .line 319
    .local v19, "year":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 320
    new-instance v8, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 321
    .local v8, "layout":Landroid/widget/RelativeLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->G:I

    move/from16 v21, v0

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v11, "re":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xe

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 330
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    .local v14, "text":Landroid/widget/TextView;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setId(I)V

    .line 333
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 334
    const/high16 v20, 0x41200000    # 10.0f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v8, v14, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 340
    .local v9, "li":Landroid/widget/RelativeLayout;
    const v20, 0x7f0200bd

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 341
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->G:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v12, "ri":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x2

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 345
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->m:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lenovo/safecenter/net/support/TrafficDate;

    move-object/from16 v18, v20

    .line 348
    .local v18, "trafficDate":Lcom/lenovo/safecenter/net/support/TrafficDate;
    :goto_1
    if-nez v18, :cond_1

    const/4 v5, 0x0

    .line 349
    .local v5, "height":I
    :goto_2
    if-nez v18, :cond_2

    const/16 v16, 0x0

    .line 351
    .local v16, "total":I
    :goto_3
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-direct {v13, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v13, "ri1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xe

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 354
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v7, "img_green":Landroid/widget/ImageView;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 359
    const v20, 0x7f020129

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    invoke-virtual {v9, v7, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v17, "tr":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xe

    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    const/16 v20, 0x2

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 368
    .local v15, "textTra":Landroid/widget/TextView;
    const/high16 v20, 0x41200000    # 10.0f

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->formatTraffic(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {v8, v9, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 345
    .end local v5    # "height":I
    .end local v7    # "img_green":Landroid/widget/ImageView;
    .end local v13    # "ri1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "textTra":Landroid/widget/TextView;
    .end local v16    # "total":I
    .end local v17    # "tr":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "trafficDate":Lcom/lenovo/safecenter/net/support/TrafficDate;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->n:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lenovo/safecenter/net/support/TrafficDate;

    move-object/from16 v18, v20

    goto/16 :goto_1

    .line 348
    .restart local v18    # "trafficDate":Lcom/lenovo/safecenter/net/support/TrafficDate;
    :cond_1
    move-object/from16 v0, v18

    iget v5, v0, Lcom/lenovo/safecenter/net/support/TrafficDate;->height:I

    goto/16 :goto_2

    .line 349
    .restart local v5    # "height":I
    :cond_2
    move-object/from16 v0, v18

    iget v0, v0, Lcom/lenovo/safecenter/net/support/TrafficDate;->total:I

    move/from16 v16, v0

    goto/16 :goto_3

    .line 377
    .end local v5    # "height":I
    .end local v8    # "layout":Landroid/widget/RelativeLayout;
    .end local v9    # "li":Landroid/widget/RelativeLayout;
    .end local v11    # "re":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "ri":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "text":Landroid/widget/TextView;
    .end local v18    # "trafficDate":Lcom/lenovo/safecenter/net/support/TrafficDate;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->K:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0d07ce

    const v2, 0x7f0d07b3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 576
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0d07a9

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    const/4 v1, 0x6

    invoke-static {p0, p0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->createSettingNumberDialog(Landroid/content/Context;Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener2;I)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showSetNetWorkDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showCorrectDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 589
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 590
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e()V

    goto :goto_0

    .line 593
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(II)V

    goto :goto_1

    .line 598
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 599
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 604
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->f()V

    goto :goto_0

    .line 602
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(II)V

    goto :goto_2

    .line 607
    :sswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    const-string v2, "type_traffic_monitor"

    const-string v3, "action_app_usenet_contorl"

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->removeActionToType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntentNetFilter(Landroid/content/Context;)V

    goto :goto_0

    .line 612
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->finish()V

    goto :goto_0

    .line 615
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    .local v0, "mSettingIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 619
    .end local v0    # "mSettingIntent":Landroid/content/Intent;
    :sswitch_6
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    const v1, 0x7f0905dd

    invoke-static {p0, v3, p0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showDailog(Landroid/app/Activity;ILcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V

    goto/16 :goto_0

    .line 623
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-static {v3, p0, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntent2TrafficCorrect(ILandroid/content/Context;I)V

    goto/16 :goto_0

    .line 629
    :sswitch_7
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 631
    const v1, 0x7f0905df

    invoke-static {p0, v4, p0, v1}, Lcom/lenovo/safecenter/net/doublemode/DoubleCardUtil;->showDailog(Landroid/app/Activity;ILcom/lenovo/safecenter/net/doublemode/DoubleCardUtil$SettingNumberDialogListener1;I)V

    goto/16 :goto_0

    .line 633
    :cond_6
    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-static {v4, p0, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntent2TrafficCorrect(ILandroid/content/Context;I)V

    goto/16 :goto_0

    .line 574
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0905ad -> :sswitch_4
        0x7f0905ae -> :sswitch_5
        0x7f0905dd -> :sswitch_6
        0x7f0905df -> :sswitch_7
        0x7f0905e1 -> :sswitch_0
        0x7f0905e2 -> :sswitch_1
        0x7f0905e3 -> :sswitch_2
        0x7f0905e6 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0201ec

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput-object p0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->mHandler:Landroid/os/Handler;

    sput-object v0, Lcom/lenovo/safecenter/utils/Const;->trafficHandler:Landroid/os/Handler;

    .line 105
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setMonthLimit(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/lenovo/safecenter/net/cache/NetCache;->getTraffic_view_width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->G:I

    .line 107
    const v0, 0x7f030120

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->setContentView(I)V

    .line 108
    sget-object v0, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/safecenter/net/cache/NetCache;->imsi2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->initNetCache(Landroid/content/Context;)V

    .line 112
    :cond_1
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .line 113
    const-string v0, "airtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi 1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imsi 2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v4, v4, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->H:Landroid/content/SharedPreferences;

    .line 115
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->H:Landroid/content/SharedPreferences;

    const-string v3, "THREAD_SLEEPED"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->I:Z

    .line 116
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->H:Landroid/content/SharedPreferences;

    const-string v3, "traffc_view_height"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->J:Z

    .line 117
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .line 118
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a:Landroid/widget/ImageView;

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b:Landroid/widget/ImageView;

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->c:Landroid/widget/TextView;

    const v3, 0x7f0d07ae

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0905d6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d:Landroid/widget/TextView;

    const v0, 0x7f0905d7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e:Landroid/widget/TextView;

    const v0, 0x7f0905d9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->f:Landroid/widget/TextView;

    const v0, 0x7f0905da

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->g:Landroid/widget/TextView;

    const v0, 0x7f0905e2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h:Landroid/widget/TextView;

    const v0, 0x7f0905e3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->i:Landroid/widget/TextView;

    const v0, 0x7f0905e5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->t:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0905e6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f0905d1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->j:Landroid/widget/TextView;

    const v0, 0x7f0905e1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    const v0, 0x7f0905dd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    const v0, 0x7f0905df

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905de

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->x:Landroid/view/View;

    const v0, 0x7f0905e0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->y:Landroid/view/View;

    const v0, 0x7f0905d3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->q:Landroid/widget/TextView;

    const v0, 0x7f0905d4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->r:Landroid/widget/TextView;

    const v0, 0x7f0905d2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->s:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getDataCardPosition(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->A:I

    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->A:I

    sput v0, Lcom/lenovo/safecenter/net/cache/NetCache;->data_id_postion:I

    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->A:I

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->b:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->E:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    :goto_1
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->s:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$2;-><init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d:Landroid/widget/TextView;

    const-string v1, "0.00B"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->F:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e:Landroid/widget/TextView;

    const-string v1, "0.00B"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d()V

    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->A:I

    invoke-direct {p0, v0, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->a(II)V

    .line 120
    return-void

    :cond_2
    move v0, v2

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_3
    sget-object v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->E:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->A:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getTodayUsedTraffic2()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 405
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 407
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 384
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "key":Ljava/lang/String;
    const-string v3, "s3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v3, "key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/MyUtils;->showLeSecNotification(Landroid/content/Context;)V

    .line 391
    :cond_0
    const v3, 0x7f0905e8

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 392
    .local v2, "mNewFeatureIcon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->w:Landroid/content/Context;

    const-string v4, "type_traffic_monitor"

    const-string v5, "action_app_usenet_contorl"

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/NewFunctionNoticeManager;->hasActionInType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    :goto_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 401
    return-void

    .line 397
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSettingNumberDialogCancel(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 725
    return-void
.end method

.method public onSettingNumberDialogCancel([II)V
    .locals 0
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    .line 730
    return-void
.end method

.method public onSettingNumberDialogOK(III)V
    .locals 2
    .param p1, "number"    # I
    .param p2, "id"    # I
    .param p3, "postion"    # I

    .prologue
    .line 706
    if-nez p3, :cond_0

    .line 707
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    .line 713
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$6;-><init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 720
    return-void

    .line 710
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSettingNumberDialogOK([II)V
    .locals 2
    .param p1, "number"    # [I
    .param p2, "flag"    # I

    .prologue
    .line 688
    sget v0, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic(Ljava/lang/String;)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;->D:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setMonthLimitTraffic2(Ljava/lang/String;)V

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$5;-><init>(Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 703
    return-void
.end method
