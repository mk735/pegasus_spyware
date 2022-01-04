.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;
.super Ljava/lang/Thread;
.source "ForbiddenApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 604
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/lenovo/safecenter/test/SafeCenter;->closeGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->e(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "child_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->q(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
