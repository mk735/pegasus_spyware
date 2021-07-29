.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;
.super Landroid/os/Handler;
.source "AppPermManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;->initApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 467
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "sendmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v3, 0x7f0901f4

    const v4, 0x7f0901f8

    const v5, 0x7f0901f5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;IIII)V

    .line 470
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f0901f6

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/widget/TextView;I)V

    .line 497
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 498
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 466
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "call_phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 474
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v3, 0x7f0901fe

    const v4, 0x7f090202

    const v5, 0x7f0901ff

    invoke-static {v2, v1, v3, v4, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;IIII)V

    .line 476
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f090200

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 479
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "privacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v3, 0x7f090205

    const v4, 0x7f090209

    const v5, 0x7f090206

    invoke-static {v2, v1, v3, v4, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;IIII)V

    .line 482
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f090207

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 485
    :cond_7
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 486
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    :cond_8
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v3, 0x7f09020b

    const v4, 0x7f09020f

    const v5, 0x7f09020c

    invoke-static {v2, v1, v3, v4, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;IIII)V

    .line 488
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f09020d

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 491
    :cond_9
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "device"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_a
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v3, 0x7f090211

    const v4, 0x7f090215

    const v5, 0x7f090212

    invoke-static {v2, v1, v3, v4, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;IIII)V

    .line 494
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const v4, 0x7f090213

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I

    move-result-object v4

    aget v4, v4, v1

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 502
    :cond_b
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getApp_isupload(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 505
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 512
    :goto_4
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->D(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->E(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    goto/16 :goto_2

    .line 508
    :cond_c
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0162

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 509
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    .line 518
    :cond_d
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->o(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    .line 521
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->F(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 522
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->n(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 524
    :cond_e
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;->a:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->n(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
