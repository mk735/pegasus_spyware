.class final Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;
.super Ljava/lang/Thread;
.source "BootSpeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootItem(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 122
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootAllowCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;I)I

    .line 123
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;I)I

    .line 125
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->a:Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    invoke-static {v1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
