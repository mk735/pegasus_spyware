.class final Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;
.super Ljava/lang/Object;
.source "WhiteSmsShowByNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/Contract;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 535
    packed-switch p2, :pswitch_data_0

    .line 587
    :goto_0
    return-void

    .line 550
    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 552
    .local v0, "callIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v0    # "callIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    const v3, 0x7f0d04c8

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 555
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteSms(I)V

    .line 561
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->g(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 562
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->initData()V

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 576
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/safecenter/support/SecurityService;->beginTime:J

    .line 577
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->a:Lcom/lenovo/safecenter/support/Contract;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->backToSms(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)V

    .line 578
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->a:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteSms(I)V

    .line 579
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->g(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 580
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 582
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->initData()V

    .line 584
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;->b:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
