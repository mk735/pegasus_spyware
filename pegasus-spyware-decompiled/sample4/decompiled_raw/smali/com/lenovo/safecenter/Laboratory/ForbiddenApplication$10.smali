.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;
.super Ljava/lang/Thread;
.source "ForbiddenApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->p(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$10;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method
