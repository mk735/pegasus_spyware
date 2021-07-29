.class final Lcom/lenovo/safecenter/net/NetFilter$1;
.super Landroid/os/Handler;
.source "NetFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/NetFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/NetFilter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->a(Lcom/lenovo/safecenter/net/NetFilter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    const v3, 0x7f0d00f0

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/net/NetFilter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->alert(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    const v2, 0x7f0d07a1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/net/NetFilter;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v3}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "conn_count":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->c(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1, v4}, Lcom/lenovo/safecenter/net/NetFilter;->a(Lcom/lenovo/safecenter/net/NetFilter;Z)V

    .line 98
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->d(Lcom/lenovo/safecenter/net/NetFilter;)V

    .line 100
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1, v4}, Lcom/lenovo/safecenter/net/NetFilter;->b(Lcom/lenovo/safecenter/net/NetFilter;Z)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$1;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/NetFilter;->e(Lcom/lenovo/safecenter/net/NetFilter;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
