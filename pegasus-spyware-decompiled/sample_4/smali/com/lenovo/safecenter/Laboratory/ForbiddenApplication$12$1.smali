.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;
.super Ljava/lang/Thread;
.source "ForbiddenApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/support/CMDHelper;->enableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$12;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
