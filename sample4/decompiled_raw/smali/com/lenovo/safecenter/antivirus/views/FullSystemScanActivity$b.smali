.class final Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "FullSystemScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->a:Landroid/content/Context;

    .line 486
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 490
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->H(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 493
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->H(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->H(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->H(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v3, v8}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setOperate(Z)V

    .line 497
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->I(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 493
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 492
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "k":I
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->x(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeKilledVirus()V

    .line 507
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->I(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 508
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->J(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const v5, 0x7f0d0414

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->J(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->K(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->L(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->M(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0d0415

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 514
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->N(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->C(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    const v5, 0x7f0d0417

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->f(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity$b;->b:Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;->O(Lcom/lenovo/safecenter/antivirus/views/FullSystemScanActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02032d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 522
    :cond_3
    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->removeConfig(Ljava/lang/String;Landroid/content/Context;)V

    .line 525
    .end local v0    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    return-void
.end method
