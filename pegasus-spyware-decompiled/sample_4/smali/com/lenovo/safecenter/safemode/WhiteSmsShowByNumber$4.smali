.class final Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;
.super Ljava/lang/Object;
.source "WhiteSmsShowByNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 420
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v3, v3, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->privateSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 430
    sput-boolean v4, Lcom/lenovo/safecenter/utils/Const;->isTariff:Z

    .line 432
    new-instance v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 433
    .local v0, "sms":Lcom/lenovo/safecenter/support/Contract;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 434
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 438
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Lcom/lenovo/safecenter/support/Contract;)V

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/lenovo/safecenter/support/SecurityService;->beginTime:J

    .line 442
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->initData()V

    .line 443
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->hand:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->f(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->backToSms(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)V

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .end local v0    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    const v3, 0x7f0d0178

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
