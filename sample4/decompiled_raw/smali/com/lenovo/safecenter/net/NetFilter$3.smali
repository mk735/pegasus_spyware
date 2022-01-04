.class final Lcom/lenovo/safecenter/net/NetFilter$3;
.super Ljava/lang/Thread;
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
    .line 222
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter$3;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$3;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->i(Lcom/lenovo/safecenter/net/NetFilter;)V

    .line 225
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$3;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->j(Lcom/lenovo/safecenter/net/NetFilter;)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$3;->a:Lcom/lenovo/safecenter/net/NetFilter;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter$3;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->createShell(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/NetFilter;->c(Lcom/lenovo/safecenter/net/NetFilter;Z)Z

    .line 227
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter$3;->a:Lcom/lenovo/safecenter/net/NetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/NetFilter;->k(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    return-void
.end method
