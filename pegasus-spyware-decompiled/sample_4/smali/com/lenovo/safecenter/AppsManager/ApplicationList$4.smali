.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;
.super Landroid/os/Handler;
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
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->n(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$4;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->o(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V

    .line 283
    return-void
.end method
