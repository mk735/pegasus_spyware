.class final Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;
.super Ljava/lang/Thread;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Z

.field final synthetic d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;ZLandroid/content/ContentResolver;Z)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    iput-boolean p2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->a:Z

    iput-object p3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->b:Landroid/content/ContentResolver;

    iput-boolean p4, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 413
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->a:Z

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.lenovo.kidmode"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/lenovo/safecenter/test/SafeCenter;->closeGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->startKidMode(Landroid/content/Context;)V

    .line 463
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->a:Z

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->closeGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->i(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->b:Landroid/content/ContentResolver;

    const-string v1, "child_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->b:Landroid/content/ContentResolver;

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 438
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->c:Z

    if-eqz v0, :cond_7

    .line 439
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->i(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->openGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->i(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->b:Landroid/content/ContentResolver;

    const-string v1, "child_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->b:Landroid/content/ContentResolver;

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 456
    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->i(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/test/SafeCenter;->closeGuestMode(Landroid/content/Context;ZLcom/lenovo/safecenter/database/AppDatabase;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 459
    :cond_8
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->b:Landroid/content/ContentResolver;

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->d:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
