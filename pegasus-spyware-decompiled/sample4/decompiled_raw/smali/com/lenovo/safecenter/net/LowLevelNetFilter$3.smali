.class final Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;
.super Ljava/lang/Thread;
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
    .line 244
    iput-object p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->m(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->n(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->createShell(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)Z

    .line 250
    const-string v0, "nac"

    const-string v1, "touch applyRules"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    return-void
.end method
