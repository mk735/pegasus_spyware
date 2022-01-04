.class public Lcom/lenovo/safecenter/platform/AgainstTheftSet;
.super Landroid/app/Activity;
.source "AgainstTheftSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;
    }
.end annotation


# static fields
.field public static sendMail:Z


# instance fields
.field a:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/ImageView;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/content/SharedPreferences;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/telephony/TelephonyManager;

.field private r:I

.field private s:Landroid/widget/TextView;

.field private t:Landroid/app/ActivityManager;

.field private u:Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;

.field private v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->sendMail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 483
    new-instance v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$13;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->r:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->q:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const v5, 0x7f070015

    const v4, 0x7f070008

    const/4 v3, 0x0

    .line 71
    const-string v1, "ydp"

    const-string v2, "init~"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->q:Landroid/telephony/TelephonyManager;

    .line 73
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->t:Landroid/app/ActivityManager;

    .line 74
    const-string v1, "antitheft"

    invoke-virtual {p0, v1, v3}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->k:Landroid/content/SharedPreferences;

    .line 75
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, "topBar":Landroid/widget/TextView;
    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$1;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->n:Landroid/widget/RelativeLayout;

    .line 84
    const v1, 0x7f090094

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->o:Landroid/widget/RelativeLayout;

    .line 85
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->p:Landroid/widget/LinearLayout;

    .line 86
    const v1, 0x7f09008c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b:Landroid/widget/CheckBox;

    .line 87
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c:Landroid/widget/CheckBox;

    .line 88
    const v1, 0x7f090082

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d:Landroid/widget/ImageView;

    .line 89
    const v1, 0x7f090087

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f090081

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->j:Landroid/widget/TextView;

    .line 98
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafePhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->l:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafeMail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->m:Ljava/lang/String;

    .line 101
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a()V

    .line 109
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->k:Landroid/content/SharedPreferences;

    const-string v2, "theft_preference"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->e:Z

    .line 128
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->k:Landroid/content/SharedPreferences;

    const-string v2, "sim_alarm_sms"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->f:Z

    .line 129
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->k:Landroid/content/SharedPreferences;

    const-string v2, "sim_alarm_screen"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->g:Z

    .line 130
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->r:I

    .line 135
    iget-boolean v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->e:Z

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d:Landroid/widget/ImageView;

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_1
    iget-boolean v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->e:Z

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Z)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->f:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->g:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h:Landroid/widget/TextView;

    const v2, 0x7f0d009d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i:Landroid/widget/TextView;

    const v2, 0x7f0d00b7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :goto_3
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->n:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$7;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->o:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$8;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$8;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->p:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$9;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$10;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$11;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c:Landroid/widget/CheckBox;

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$12;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->r:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03e6

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$2;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d05fe

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$5;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d05fd

    new-instance v2, Lcom/lenovo/safecenter/platform/AgainstTheftSet$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$4;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic h(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->c:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 514
    sget-boolean v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->sendMail:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method final a(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 547
    const-string v0, "ydp"

    const-string v1, "updateswitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->j:Landroid/widget/TextView;

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 550
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->j:Landroid/widget/TextView;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->j:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 604
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 605
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->finish()V

    .line 609
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b()V

    .line 65
    new-instance v1, Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->u:Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->u:Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->u:Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshProtectThiefDetail()V

    .line 528
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 529
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->t:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->finish()V

    .line 532
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 533
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 545
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 537
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 538
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b()V

    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 540
    return-void
.end method
