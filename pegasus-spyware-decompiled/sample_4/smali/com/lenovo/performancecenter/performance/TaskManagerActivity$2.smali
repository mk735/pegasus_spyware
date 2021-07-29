.class final Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;
.super Ljava/lang/Thread;
.source "TaskManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/TaskManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 167
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-virtual {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 168
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "TaskManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "initListData start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v3, v1}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->a(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 170
    .local v2, "totalDisplayAppCount":I
    const-string v3, "TaskManagerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "initListData end"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 173
    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/TaskManagerActivity$2;->a:Lcom/lenovo/performancecenter/performance/TaskManagerActivity;

    invoke-static {v3}, Lcom/lenovo/performancecenter/performance/TaskManagerActivity;->i(Lcom/lenovo/performancecenter/performance/TaskManagerActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method
