.class public Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;
.super Landroid/widget/BaseAdapter;
.source "HealthCheckupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HealthCheckupAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

.field private b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 603
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->d:Landroid/os/Handler;

    .line 593
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->c:Landroid/view/LayoutInflater;

    .line 595
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-direct {v0}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    .line 598
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 661
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 662
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 663
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 903
    const v2, 0x7f09031c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 904
    .local v1, "text":Landroid/widget/TextView;
    const v2, 0x7f09031d

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 905
    .local v0, "buttonText":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 906
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;)V
    .locals 13
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;

    .prologue
    const/16 v7, 0x16

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 588
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumDangerItem()I

    move-result v1

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumManualItem()I

    move-result v2

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumCanOptimizationItem()I

    move-result v3

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumSafeItem()I

    move-result v4

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->l(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getNumHasOptimizationItem()I

    move-result v5

    if-nez v1, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_1

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    :goto_1
    if-nez v3, :cond_2

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    :goto_2
    if-nez v5, :cond_3

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    :goto_3
    if-nez v4, :cond_4

    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    :goto_4
    return-void

    :cond_0
    new-instance v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v6}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput v10, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iput v10, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iput v7, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-direct {p0, v11, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput v10, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iput v12, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/16 v0, 0x17

    iput v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-direct {p0, v11, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput v10, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    iput v9, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/16 v0, 0x18

    iput v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-direct {p0, v11, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput v10, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    const/4 v0, 0x6

    iput v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/16 v0, 0x19

    iput v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-direct {p0, v11, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    invoke-direct {v1}, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;-><init>()V

    iput v10, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    const/16 v0, 0x8

    iput v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/16 v0, 0x1a

    iput v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->m(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-direct {p0, v11, v1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public addData(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 1
    .param p1, "newData"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 655
    if-eqz p1, :cond_0

    .line 656
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(ILjava/lang/Object;)V

    .line 658
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->getValueByIndex(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 651
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->getValueByIndex(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v0

    .line 750
    .local v0, "item":Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;
    iget v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    if-nez v1, :cond_0

    .line 751
    const/4 v1, 0x1

    .line 755
    :goto_0
    return v1

    .line 752
    :cond_0
    iget v1, v0, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 753
    const/4 v1, 0x2

    goto :goto_0

    .line 755
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 785
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-virtual {v2, p1}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->getValueByIndex(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v2

    iget v1, v2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->view_type:I

    .line 787
    .local v1, "viewType":I
    if-nez p2, :cond_3

    .line 788
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f030084

    invoke-virtual {v2, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-array v2, v6, [Landroid/view/View;

    const v3, 0x7f09000c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 792
    .local v0, "v":Landroid/view/View;
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->b:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-virtual {v2, p1}, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;->getValueByIndex(I)Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    move-result-object v5

    if-nez v5, :cond_4

    .line 793
    :cond_0
    :goto_2
    return-object v0

    .line 788
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    if-ne v1, v4, :cond_2

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f030083

    invoke-virtual {v2, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-array v2, v7, [Landroid/view/View;

    const v3, 0x7f09031f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f09031b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f090321

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f090320

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f030082

    invoke-virtual {v2, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-array v2, v7, [Landroid/view/View;

    const v3, 0x7f09031f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x7f09031b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f090321

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v9

    const v3, 0x7f090320

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 790
    :cond_3
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_1

    .line 792
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    check-cast v2, [Landroid/view/View;

    if-nez v1, :cond_9

    aget-object v3, v2, v8

    check-cast v3, Landroid/widget/TextView;

    iget v4, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    aget-object v2, v2, v8

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    iget v4, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07001e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_6
    iget v4, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07001e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_7
    iget v4, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    if-ne v4, v7, :cond_8

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070022

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_9
    aget-object v3, v2, v8

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v3, v2, v6

    check-cast v3, Landroid/widget/LinearLayout;

    aget-object v2, v2, v9

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v2, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const v2, 0x7f020147

    invoke-static {v3, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    :pswitch_2
    const v2, 0x7f020148

    invoke-static {v3, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    :pswitch_3
    const v2, 0x7f020146

    invoke-static {v3, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->n(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v6, v5, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->action_description:Ljava/lang/String;

    const v2, 0x7f09031c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f09031d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0202e1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v2, 0x7f09031d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter$2;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->a:Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;->n(Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity;)I

    move-result v2

    if-ne v2, v9, :cond_0

    const v2, 0x7f09031d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthCheckupActivity$HealthCheckupAdapter;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 631
    return-void
.end method
