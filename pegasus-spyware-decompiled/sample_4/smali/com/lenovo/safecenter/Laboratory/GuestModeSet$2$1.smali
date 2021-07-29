.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;
.super Ljava/lang/Thread;
.source "GuestModeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 505
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->e(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->closeGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->q(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->i(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->openGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->r(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->q(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "child_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->q(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2$1;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$2;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->o(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
