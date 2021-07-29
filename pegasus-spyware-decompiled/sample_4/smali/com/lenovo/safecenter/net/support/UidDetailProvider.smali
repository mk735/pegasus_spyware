.class public Lcom/lenovo/safecenter/net/support/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lenovo/safecenter/net/support/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->b:Landroid/util/SparseArray;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUidDetail(IZ)Lcom/lenovo/safecenter/net/support/UidDetail;
    .locals 13
    .param p1, "uid"    # I
    .param p2, "blocking"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 57
    .local v10, "res":Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 59
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Lcom/lenovo/safecenter/net/support/UidDetail;

    invoke-direct {v2}, Lcom/lenovo/safecenter/net/support/UidDetail;-><init>()V

    .line 60
    .local v2, "detail":Lcom/lenovo/safecenter/net/support/UidDetail;
    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "packageNames":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v5, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .local v5, "length":I
    :cond_0
    if-ne v5, v12, :cond_3

    .line 90
    const/4 v11, 0x0

    :try_start_1
    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 91
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 115
    :cond_2
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v5    # "length":I
    .end local v8    # "packageNames":[Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 66
    :sswitch_0
    const v11, 0x7f0d044e

    :try_start_3
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 56
    .end local v2    # "detail":Lcom/lenovo/safecenter/net/support/UidDetail;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 71
    .restart local v2    # "detail":Lcom/lenovo/safecenter/net/support/UidDetail;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "res":Landroid/content/res/Resources;
    :sswitch_1
    const v11, 0x7f0d044f

    :try_start_4
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 76
    :sswitch_2
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->a:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 78
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v11, p0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 93
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "length":I
    .restart local v8    # "packageNames":[Ljava/lang/String;
    :cond_3
    if-le v5, v12, :cond_1

    .line 94
    :try_start_5
    new-array v11, v5, [Ljava/lang/CharSequence;

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 95
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 96
    aget-object v7, v8, v3

    .line 97
    .local v7, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 98
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 100
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    .line 101
    iget v11, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v11, :cond_4

    .line 102
    iget v11, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->label:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/lenovo/safecenter/net/support/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
