.class final Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;
.super Landroid/os/Handler;
.source "LowLevelNetFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/LowLevelNetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    const v3, 0x7f0d00f0

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->alert(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    const v2, 0x7f0d07a1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "conn_count":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    sget-object v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1, v4}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)V

    .line 93
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    .line 95
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1, v4}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)V

    .line 98
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->f(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    goto :goto_0

    .line 102
    .end local v0    # "conn_count":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->g(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->h(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->bindStats(Ljava/util/ArrayList;)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->i(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
