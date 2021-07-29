.class final Ltms/cw;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Ltms/de;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltms/cw;->a:Landroid/content/Context;

    iget-object v0, p0, Ltms/cw;->a:Landroid/content/Context;

    const-string v1, "traffic_xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltms/cw;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ltms/cw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ltms/de;

    invoke-direct {v0}, Ltms/de;-><init>()V

    iput-object v0, p0, Ltms/cw;->d:Ltms/de;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    new-instance v1, Ltms/cx;

    invoke-direct {v1, p0}, Ltms/cx;-><init>(Ltms/cw;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method private f(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ltms/cw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ltms/cw;->f(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Ltms/cw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->fromString(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 9

    const-wide/16 v7, 0x0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Ltms/cw;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Ltms/cw;->d:Ltms/de;

    invoke-virtual {v5, v3}, Ltms/de;->b(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iget-object v5, p0, Ltms/cw;->d:Ltms/de;

    invoke-virtual {v5, v3}, Ltms/de;->a(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    iput-wide v7, v4, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    iget-object v3, p0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "EMPTY"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a([Ljava/lang/String;Z)V
    .locals 17

    const-class v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "wifi"

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ltms/cw;->b:Landroid/content/SharedPreferences;

    const-string v3, "last_connection_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move-object v2, v1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v3, v4, :cond_10

    aget-object v14, p1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ltms/cw;->f(Ljava/lang/String;)I

    move-result v6

    const/4 v4, 0x0

    if-nez v5, :cond_11

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    new-instance v5, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    iput-object v14, v5, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    const/4 v4, 0x1

    move v7, v4

    move-object v13, v5

    :goto_2
    if-eqz v13, :cond_a

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/cw;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_connection_type"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/cw;->d:Ltms/de;

    invoke-virtual {v5, v6}, Ltms/de;->b(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v5, v0, Ltms/cw;->d:Ltms/de;

    invoke-virtual {v5, v6}, Ltms/de;->a(I)J

    move-result-wide v5

    if-eqz v7, :cond_1

    iput-wide v5, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v9, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    :cond_1
    const-wide/16 v7, -0x1

    cmp-long v7, v9, v7

    if-nez v7, :cond_3

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-gtz v7, :cond_2

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-lez v7, :cond_3

    :cond_2
    const-wide/16 v9, 0x0

    :cond_3
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_5

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-gtz v7, :cond_4

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-lez v7, :cond_5

    :cond_4
    const-wide/16 v5, 0x0

    :cond_5
    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    sub-long v11, v9, v7

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    sub-long v7, v5, v7

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gez v15, :cond_6

    move-wide v11, v9

    :cond_6
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-gez v15, :cond_7

    move-wide v7, v9

    :cond_7
    const-wide/16 v15, -0x1

    cmp-long v15, v9, v15

    if-eqz v15, :cond_8

    const-wide/16 v15, -0x1

    cmp-long v15, v5, v15

    if-nez v15, :cond_e

    :cond_8
    const-wide/16 v7, 0x0

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v7, 0x0

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v7, 0x0

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v7, 0x0

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    :cond_9
    :goto_4
    iput-wide v9, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iput-wide v5, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    move-object/from16 v0, p0

    iget-object v4, v0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    invoke-static {v13}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v14, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v1, "mobile"

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    :goto_5
    return-void

    :cond_d
    move-object v4, v2

    goto/16 :goto_3

    :cond_e
    const-string v15, "mobile"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    iget-wide v15, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    add-long/2addr v7, v15

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    add-long/2addr v7, v11

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    goto :goto_4

    :cond_f
    const-string v15, "wifi"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-wide v15, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    add-long/2addr v7, v15

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    iget-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    add-long/2addr v7, v11

    iput-wide v7, v13, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    const-string v3, "last_connection_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v1, v0, Ltms/cw;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    :cond_11
    move v7, v4

    move-object v13, v5

    goto/16 :goto_2
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Ltms/cw;->d:Ltms/de;

    invoke-virtual {v0}, Ltms/de;->a()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ltms/cw;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
