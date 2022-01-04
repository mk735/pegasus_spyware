.class final Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;
.super Ljava/lang/Thread;
.source "PerfWhitelistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->i(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->a(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 177
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->j(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity$3;->a:Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;->j(Lcom/lenovo/performancecenter/performance/PerfWhitelistActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method
