.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;
.super Ljava/lang/Thread;
.source "AppPermManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;->initApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 534
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectTrafficSwitchState()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Z)Z

    .line 535
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectPeepSwitchState()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Z)Z

    .line 537
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/database/AppDatabase;->getUid(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;I)I

    .line 540
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v8}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->G(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/database/AppDatabase;->queryAllPermType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->F(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 543
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    array-length v2, v5

    .line 544
    .local v2, "len":I
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Ljava/util/List;)Ljava/util/List;

    .line 545
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    new-array v6, v2, [Landroid/widget/RelativeLayout;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Landroid/widget/RelativeLayout;)[Landroid/widget/RelativeLayout;

    .line 546
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    new-array v6, v2, [Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Landroid/widget/TextView;)[Landroid/widget/TextView;

    .line 547
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    new-array v6, v2, [Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;

    .line 548
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 549
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    new-array v6, v2, [I

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[I)[I

    .line 551
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 552
    .local v4, "resolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/safecenter/database/AppUtil;->getAppPermissionConfigurs(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 554
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 555
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v8}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/database/AppDatabase;->queryPerEnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-virtual {v7}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v8}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v9}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/safecenter/database/AppDatabase;->getAllPermDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 558
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I

    move-result-object v6

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v7}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v8}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->G(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/database/AppDatabase;->getRecentLogs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Ljava/util/List;)Ljava/util/List;

    .line 562
    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->a:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->a:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
