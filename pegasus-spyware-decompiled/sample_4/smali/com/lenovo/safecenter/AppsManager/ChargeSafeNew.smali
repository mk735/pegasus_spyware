.class public Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;
.super Landroid/app/Activity;
.source "ChargeSafeNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:I

.field private q:Z

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->p:I

    .line 47
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$1;-><init>(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->p:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->p:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->b:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 10

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSmsSendNumCurrMonth()I

    move-result v5

    .line 200
    .local v5, "usedMonthSmsNum":I
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getMonthLimitSMS()I

    move-result v2

    .line 201
    .local v2, "monthLimit":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0d0361

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d0364

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "monthusedDecribe":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d0586

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "decribe":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v0    # "decribe":Ljava/lang/String;
    .end local v2    # "monthLimit":I
    .end local v3    # "monthusedDecribe":Ljava/lang/String;
    .end local v5    # "usedMonthSmsNum":I
    :goto_0
    return-void

    .line 212
    .restart local v2    # "monthLimit":I
    .restart local v3    # "monthusedDecribe":Ljava/lang/String;
    .restart local v5    # "usedMonthSmsNum":I
    :cond_0
    if-le v5, v2, :cond_1

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d03a8

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d0364

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0    # "decribe":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    .local v4, "spannable":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x10000

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 219
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "decribe":Ljava/lang/String;
    .end local v2    # "monthLimit":I
    .end local v3    # "monthusedDecribe":Ljava/lang/String;
    .end local v4    # "spannable":Landroid/text/SpannableString;
    .end local v5    # "usedMonthSmsNum":I
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "monthLimit":I
    .restart local v3    # "monthusedDecribe":Ljava/lang/String;
    .restart local v5    # "usedMonthSmsNum":I
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d03a9

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d0364

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0    # "decribe":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallIncommingDurationCurrMonth()I

    move-result v0

    .line 239
    .local v0, "callIncommingDuration":I
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getCallOutgoingDurationCurrMonth()I

    move-result v1

    .line 241
    .local v1, "callOutgoingDuration":I
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d0363

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->convertTimeFormat(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d0362

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/utils/WflUtils;->convertTimeFormat(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "callIncommingDuration":I
    .end local v1    # "callOutgoingDuration":I
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->r:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    packed-switch p2, :pswitch_data_0

    .line 193
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->r:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 147
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->finish()V

    goto :goto_0

    .line 151
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/AppsManager/SmsSettingsActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "it":Landroid/content/Intent;
    const-string v4, "permType"

    const-string v5, "sendmessage"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 161
    .end local v0    # "it":Landroid/content/Intent;
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v1, "it0":Landroid/content/Intent;
    const-string v4, "from"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 167
    .end local v1    # "it0":Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v2, "it1":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    .end local v2    # "it1":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v3, "it2":Landroid/content/Intent;
    const-string v4, "permType"

    const-string v5, "call_phone"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x7f0901fd -> :sswitch_5
        0x7f090270 -> :sswitch_4
        0x7f090273 -> :sswitch_2
        0x7f090277 -> :sswitch_3
        0x7f0905ad -> :sswitch_0
        0x7f0905ae -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->setContentView(I)V

    .line 72
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->q:Z

    .line 74
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->d:Landroid/widget/TextView;

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->i:Landroid/widget/ImageView;

    const v0, 0x7f0905ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->e:Landroid/widget/TextView;

    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->f:Landroid/widget/TextView;

    const v0, 0x7f090274

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a()V

    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->b()V

    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f090270

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->m:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901fd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0, p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->addObserver(Ljava/util/Observer;)V

    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$2;-><init>(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 140
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;-><init>(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$3;->start()V

    .line 136
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 251
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 252
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->a()V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->b()V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
