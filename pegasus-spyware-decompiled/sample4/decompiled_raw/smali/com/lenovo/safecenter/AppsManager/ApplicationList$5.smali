.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;
.super Ljava/lang/Thread;
.source "ApplicationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/ApplicationList;->initApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;->b:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;->b:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->p(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$5;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method
