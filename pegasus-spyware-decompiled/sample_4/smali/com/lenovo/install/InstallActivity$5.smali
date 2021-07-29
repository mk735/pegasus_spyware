.class final Lcom/lenovo/install/InstallActivity$5;
.super Ljava/lang/Thread;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 422
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->x(Lcom/lenovo/install/InstallActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v6}, Lcom/lenovo/install/InstallActivity;->w(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppperms(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 423
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->y(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionInfo;

    .line 424
    .local v4, "perm":Landroid/content/pm/PermissionInfo;
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    const-string v6, "privacy"

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->z(Lcom/lenovo/install/InstallActivity;)Z

    .line 427
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 428
    .local v0, "app":Lcom/lenovo/safecenter/support/AppInfo;
    const-string v5, "privacy"

    iput-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 429
    const-string v5, "privacy"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 430
    iput v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 435
    :goto_1
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_1
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    const-string v6, "location"

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 440
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->z(Lcom/lenovo/install/InstallActivity;)Z

    .line 442
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 443
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    const-string v5, "location"

    iput-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 444
    const-string v5, "location"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    .line 445
    iput v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 450
    :goto_2
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    const-string v6, "device"

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 455
    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, "android.permission.CAMERA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->z(Lcom/lenovo/install/InstallActivity;)Z

    .line 458
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 459
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    const-string v5, "device"

    iput-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 460
    const-string v5, "device"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a

    .line 461
    iput v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 466
    :goto_3
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_4
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    const-string v6, "call_phone"

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 471
    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, "android.permission.CALL_PHONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, "android.permission.CALL_PRIVILEGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 473
    :cond_5
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->z(Lcom/lenovo/install/InstallActivity;)Z

    .line 474
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 475
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    const-string v5, "call_phone"

    iput-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 476
    const-string v5, "call_phone"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b

    .line 477
    iput v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 482
    :goto_4
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_6
    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, "android.permission.SEND_SMS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 487
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->z(Lcom/lenovo/install/InstallActivity;)Z

    .line 488
    new-instance v0, Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {v0}, Lcom/lenovo/safecenter/support/AppInfo;-><init>()V

    .line 489
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    const-string v5, "sendmessage"

    iput-object v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 490
    const-string v5, "sendmessage"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    .line 491
    iput v7, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 495
    :goto_5
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_7
    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 499
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->A(Lcom/lenovo/install/InstallActivity;)Z

    goto/16 :goto_0

    .line 432
    .restart local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    :cond_8
    const-string v5, "privacy"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto/16 :goto_1

    .line 447
    :cond_9
    const-string v5, "location"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto/16 :goto_2

    .line 463
    :cond_a
    const-string v5, "device"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto/16 :goto_3

    .line 479
    :cond_b
    const-string v5, "call_phone"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto/16 :goto_4

    .line 493
    :cond_c
    const-string v5, "sendmessage"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    goto :goto_5

    .line 503
    .end local v0    # "app":Lcom/lenovo/safecenter/support/AppInfo;
    .end local v4    # "perm":Landroid/content/pm/PermissionInfo;
    :cond_d
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->B(Lcom/lenovo/install/InstallActivity;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 504
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 505
    .local v2, "len":I
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    new-array v6, v2, [Landroid/widget/RelativeLayout;

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/RelativeLayout;)[Landroid/widget/RelativeLayout;

    .line 506
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    new-array v6, v2, [Landroid/widget/LinearLayout;

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/LinearLayout;)[Landroid/widget/LinearLayout;

    .line 507
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    new-array v6, v2, [Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;

    .line 508
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    new-array v6, v2, [Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/lenovo/install/InstallActivity;->a(Lcom/lenovo/install/InstallActivity;[Landroid/widget/TextView;)[Landroid/widget/TextView;

    .line 510
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v6}, Lcom/lenovo/install/InstallActivity;->v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    .end local v2    # "len":I
    :goto_6
    return-void

    .line 512
    :cond_e
    iget-object v5, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v5}, Lcom/lenovo/install/InstallActivity;->v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/install/InstallActivity$5;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v6}, Lcom/lenovo/install/InstallActivity;->v(Lcom/lenovo/install/InstallActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method
