.class final Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;
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
    .line 332
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0d0178

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v5, v4}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->privateSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 391
    :goto_0
    sput-boolean v4, Lcom/lenovo/safecenter/utils/Const;->isTariff:Z

    .line 393
    new-instance v1, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v1}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 394
    .local v1, "sms":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 399
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Lcom/lenovo/safecenter/support/Contract;)V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/safecenter/support/SecurityService;->beginTime:J

    .line 403
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->initData()V

    .line 404
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->hand:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->f(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v2

    if-nez v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->backToSms(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)V

    .line 412
    :cond_0
    const-string v2, "size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "666"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    :goto_1
    return-void

    .line 375
    .restart local v0    # "content":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v5}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 386
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v3, v6}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
