.class public Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;
.super Ljava/lang/Object;
.source "InterceptUtils.java"


# static fields
.field public static final AD_SWITCH:Ljava/lang/String; = "ad_switch"

.field public static final FIRST_NOTIFY:Ljava/lang/String; = "first_notify"

.field public static final FLAG_IACTIVITY:I = 0x12

.field public static final FLAG_INOTIFICATION:I = 0xf

.field public static final FLAG_NOTIFICATION_NOT_NULL:I = 0x1

.field public static final FLAG_NOTIFICATION_NULL:I = 0x0

.field public static final INTERCEPT_NEW_COUNT:Ljava/lang/String; = "intercept_new_count"

.field public static final NOTIFY_ID:I = 0x208d3

.field public static final NOTIFY_ID_EMPTY:I = 0x208d4

.field public static final NOTIFY_ID_SCAN:I = 0x208d5

.field public static final NOTIFY_SWITCH:Ljava/lang/String; = "notify_switch"

.field public static final PERMISSION_ALLOW:I = 0x1

.field public static final PERMISSION_DEFAULT_ALLOW:I = 0x3

.field public static final PERMISSION_FIRST_ALLOW:I = 0x0

.field public static final PERMISSION_FORBID:I = 0x2

.field private static a:Z

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    .line 87
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.lenovo.safecenter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.tencent.mm:push"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.tencent.android.pad"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.duomi.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.kugou.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "cn.com.fetion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.xiaomi.channel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.lenovo.safe.powercenter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.dianxinos.powermanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.qihoo360.mobilesafe.opti.powerctl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.zhimahu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.gau.go.launcherex.gowidget.gopowermaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.yxlk.taskmanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.antutu.powersaver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.snda.aipowermanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.ijinshan.kbatterydoctor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.tencent.powermanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.d1android.BatteryManager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    const-string v1, "com.anguanjia.safe.battery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Notification;)Ljava/lang/String;
    .locals 11
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 512
    iget-object v2, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 513
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const-string v7, ""

    .line 514
    .local v7, "notificationSummary":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 516
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "mActions"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 517
    .local v3, "declaredField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_2

    .line 518
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 519
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 520
    .local v0, "actions":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 521
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "methodName"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 522
    .local v6, "methodName":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 523
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "setText"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 524
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "value"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 525
    .local v8, "value":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 526
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 527
    .local v1, "charSequence":Ljava/lang/CharSequence;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 520
    .end local v1    # "charSequence":Ljava/lang/CharSequence;
    .end local v8    # "value":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v6    # "methodName":Ljava/lang/reflect/Field;
    :cond_1
    move-object v9, v7

    .line 538
    .end local v0    # "actions":Ljava/util/ArrayList;
    .end local v3    # "declaredField":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    :goto_1
    return-object v9

    .line 534
    :catch_0
    move-exception v4

    .line 535
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v9, ""

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v1, ""

    .line 422
    .local v1, "applicationLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 424
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 425
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 429
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 426
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationLabel"    # Ljava/lang/String;
    .param p2, "isToRecord"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # I
    .param p5, "handleNotification"    # Z

    .prologue
    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " showInterceptNotification Label="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isToRecord = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " handleNotification = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 370
    if-nez p2, :cond_1

    if-nez p5, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 376
    .local v1, "df_prefs":Landroid/content/SharedPreferences;
    if-eqz p5, :cond_2

    const-string v6, "notify_switch"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " show first Lable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 379
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 380
    .local v3, "mNotification":Landroid/app/Notification;
    const v6, 0x7f020205

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 381
    const v6, 0x7f0d0647

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 383
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300cb

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 384
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/safecenter/notificationintercept/NotificationTabActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "tab"

    const-string v7, "noti_permission"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/high16 v6, 0x14000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 389
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v6, 0x7f090467

    const v7, 0x7f0d0631

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 390
    iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 391
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 392
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 393
    .local v4, "manager":Landroid/app/NotificationManager;
    const v6, 0x208d3

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 395
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mNotification":Landroid/app/Notification;
    .end local v4    # "manager":Landroid/app/NotificationManager;
    .end local v5    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_2
    const/4 v6, 0x2

    if-ne p4, v6, :cond_0

    const-string v6, "notify_switch"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 397
    .restart local v3    # "mNotification":Landroid/app/Notification;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300cc

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 398
    .restart local v5    # "remoteViews":Landroid/widget/RemoteViews;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 399
    .restart local v2    # "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 400
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    const v6, 0x7f020205

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 401
    const v6, 0x7f0d0630

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 403
    iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 404
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 405
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 406
    .restart local v4    # "manager":Landroid/app/NotificationManager;
    const v6, 0x208d4

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 408
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_1
    const v6, 0x208d4

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 475
    const-string v1, "com.lenovo.safecenter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;I)Z
    .locals 15
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "permission"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "applicationLabel"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "recordDB"    # Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;
    .param p6, "notificationId"    # I

    .prologue
    .line 282
    sget-object v12, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 283
    .local v10, "size":I
    const/4 v2, 0x0

    .line 284
    .local v2, "count":I
    const/4 v8, -0x1

    .line 285
    .local v8, "lastIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 286
    sget-object v12, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;

    .line 287
    .local v1, "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    iget-object v12, v1, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->recordContent:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 288
    add-int/lit8 v2, v2, 0x1

    .line 289
    move v8, v7

    .line 285
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    :cond_1
    if-eqz v2, :cond_2

    sget-object v12, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;

    iget v12, v12, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->recordPermission:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 294
    const/4 v12, 0x1

    .line 319
    :goto_1
    return v12

    .line 296
    :cond_2
    sget-object v13, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    monitor-enter v13

    .line 297
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 299
    .local v3, "currentTimeMillis":J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "pkgname"

    move-object/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v12, "applabel"

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v12, "notification_content"

    invoke-virtual {v11, v12, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v12, "timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string v12, "notification_id"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v12, "record_permission"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->insert(Landroid/content/ContentValues;)V

    .line 308
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 309
    .local v5, "dfPrefs":Landroid/content/SharedPreferences;
    const-string v12, "intercept_new_count"

    const/4 v14, 0x0

    invoke-interface {v5, v12, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 310
    .local v9, "mCount":I
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 311
    .local v6, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v12, "intercept_new_count"

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v6, v12, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    sget-object v12, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x3

    if-lt v12, v14, :cond_3

    .line 315
    sget-object v12, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    :cond_3
    move/from16 v0, p1

    invoke-static {p0, v0, v3, v4}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->updateRecordListAdd(Ljava/lang/String;IJ)V

    .line 318
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    const/4 v12, 0x0

    goto :goto_1

    .line 318
    .end local v3    # "currentTimeMillis":J
    .end local v5    # "dfPrefs":Landroid/content/SharedPreferences;
    .end local v6    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "mCount":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12
.end method

.method public static adApkInsert(Ljava/lang/String;Landroid/content/Context;)I
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 592
    invoke-static {p1, p0}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->killProcess(Landroid/content/Context;Ljava/lang/String;)V

    .line 593
    new-instance v2, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v2, p1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 594
    .local v2, "permissionDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v2, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 595
    .local v1, "findByName":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    if-nez v1, :cond_0

    .line 596
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "pkgname"

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v4, "permission"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->insert(Landroid/content/ContentValues;)V

    .line 600
    invoke-virtual {v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 601
    const v4, 0x7f0d0651

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p0}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 609
    :goto_0
    return v3

    .line 604
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 605
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v3, "pkgname"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v3, "permission"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    iget v3, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->update(ILandroid/content/ContentValues;)V

    .line 608
    invoke-virtual {v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 609
    iget v3, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    goto :goto_0
.end method

.method public static appInit(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 618
    const-string v0, " appInit !! scanAll "

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$1;->start()V

    .line 625
    return-void
.end method

.method public static appInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 632
    const-string v0, " appInstall !! scan "

    invoke-static {v0}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 634
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$2;->start()V

    .line 640
    return-void
.end method

.method public static appRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v3, " appInstall !! scan "

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 644
    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;-><init>(Landroid/content/Context;)V

    .line 645
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;
    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    move-result-object v2

    .line 646
    .local v2, "findByName":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {v2}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->delete(I)V

    .line 649
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v0    # "db":Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;
    .end local v2    # "findByName":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Pkg remove Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->e(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 460
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 461
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 462
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    sget-object v3, Lcom/lenovo/safecenter/support/WhiteAppsList;->md5s:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getCretMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/support/WhiteAppsList;->contains([Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 465
    :catch_0
    move-exception v2

    .line 467
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 489
    const-string v3, "%"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    :goto_0
    return v1

    .line 492
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 493
    goto :goto_0

    .line 495
    :cond_1
    const-string v3, "%"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 498
    goto :goto_0

    .line 500
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static bootCompleted(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/notification"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "filepath":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dumpsys notification > "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/support/CMDHelper;->exeCmd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 663
    .local v6, "exeCmd":Z
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " bootCompleted exeCMD "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 664
    if-eqz v6, :cond_5

    .line 665
    const/4 v14, 0x0

    .line 667
    .local v14, "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 668
    .local v18, "reader":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 669
    .local v11, "line":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    .end local v14    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 671
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, "NotificationRecord"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 674
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 675
    .local v19, "split":[Ljava/lang/String;
    move-object/from16 v2, v19

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v13, v2, v8

    .line 676
    .local v13, "mSplit":Ljava/lang/String;
    const-string v21, "pkg"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 677
    const-string v21, "="

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 678
    .local v20, "substring":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 675
    .end local v20    # "substring":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "mSplit":Ljava/lang/String;
    .end local v19    # "split":[Ljava/lang/String;
    :cond_2
    move-object v14, v15

    .line 688
    .end local v11    # "line":Ljava/lang/String;
    .end local v15    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    if-eqz v21, :cond_5

    .line 689
    new-instance v4, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 690
    .local v4, "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findAll()Ljava/util/List;

    move-result-object v16

    .line 691
    .local v16, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 692
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 693
    .local v17, "pkg":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 694
    .local v12, "mPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    iget-object v0, v12, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    iget v0, v12, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 696
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->clearnNotification(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 683
    .end local v4    # "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "mPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    .end local v16    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    .end local v17    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 684
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 685
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 686
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 702
    .end local v5    # "e":Ljava/io/IOException;
    .end local v14    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 685
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v15    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    move-object v14, v15

    .end local v15    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 683
    .end local v14    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v5

    move-object v14, v15

    .end local v15    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "notifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public static checkScannedAd(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    new-instance v6, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 788
    .local v6, "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v6}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findAll()Ljava/util/List;

    move-result-object v8

    .line 789
    .local v8, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-virtual {v6}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 790
    new-instance v4, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;-><init>(Landroid/content/Context;)V

    .line 791
    .local v4, "nDB":Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;
    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->findAll()Ljava/util/List;

    move-result-object v5

    .line 792
    .local v5, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;>;"
    invoke-virtual {v4}, Lcom/lenovo/safecenter/notificationintercept/support/NotificationDB;->closeDatabase()V

    .line 793
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v3, "mPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;

    .line 795
    .local v0, "adBean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 796
    .local v7, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;->getPkgName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->pkgname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v7, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 797
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 801
    .end local v0    # "adBean":Lcom/lenovo/safecenter/notificationintercept/support/NotiAdBean;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_2
    return-object v3
.end method

.method public static getInterceptPermission([BILandroid/content/Context;Ljava/io/DataOutputStream;)Z
    .locals 26
    .param p0, "buffer"    # [B
    .param p1, "flag"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v25

    .line 128
    .local v25, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    array-length v3, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 129
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 130
    const/16 v24, 0x0

    .line 131
    .local v24, "notification":Landroid/app/Notification;
    const-string v5, ""

    .line 132
    .local v5, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 133
    .local v14, "notificationId":I
    const/16 v2, 0xf

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 134
    const-string v2, "android.app.INotificationManager"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 147
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v5}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    :cond_1
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    .line 149
    const/4 v2, 0x1

    .line 200
    :goto_1
    return v2

    .line 139
    :cond_2
    const/16 v2, 0x12

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 140
    const-string v2, "android.app.IActivityManager"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v18

    .line 142
    .local v18, "className":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 144
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v14

    goto :goto_0

    .line 152
    .end local v18    # "className":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    :try_start_0
    sget-object v2, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/Notification;

    move-object/from16 v24, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    .line 162
    :cond_4
    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_6

    .line 163
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 157
    :catch_0
    move-exception v20

    .line 158
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 166
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v2, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v3

    if-nez v3, :cond_8

    const/16 v17, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "pkgname"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "permission"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->insert(Landroid/content/ContentValues;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 167
    .local v17, "checkPermission":I
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkPermission pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 168
    const/4 v7, 0x0

    .line 169
    .local v7, "handleNotification":Z
    if-nez v17, :cond_7

    .line 170
    const/4 v7, 0x1

    .line 172
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    const/4 v6, 0x2

    .line 174
    .local v6, "mPermission":I
    :goto_4
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v15, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v19, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    .local v19, "data":Ljava/io/DataOutputStream;
    sget-boolean v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a:Z

    if-eqz v2, :cond_d

    .line 178
    sget-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v23

    .line 179
    .local v23, "len":I
    const/4 v2, 0x1

    if-ne v6, v2, :cond_a

    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 180
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 181
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 182
    sget-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 183
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_6

    .line 166
    .end local v6    # "mPermission":I
    .end local v7    # "handleNotification":Z
    .end local v15    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "checkPermission":I
    .end local v19    # "data":Ljava/io/DataOutputStream;
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "len":I
    :cond_8
    iget v0, v3, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    move/from16 v17, v0

    invoke-virtual {v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    goto/16 :goto_3

    .line 172
    .restart local v7    # "handleNotification":Z
    .restart local v17    # "checkPermission":I
    :cond_9
    const/4 v6, 0x1

    goto :goto_4

    .line 179
    .restart local v6    # "mPermission":I
    .restart local v15    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "data":Ljava/io/DataOutputStream;
    .restart local v23    # "len":I
    :cond_a
    const/4 v2, 0x1

    goto :goto_5

    .line 186
    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a:Z

    .line 192
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "len":I
    :goto_7
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 193
    .local v16, "byteArray":[B
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V

    .line 194
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 195
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Ljava/io/DataOutputStream;->flush()V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pkg === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->i(Ljava/lang/String;)V

    .line 199
    if-nez v24, :cond_f

    .line 200
    :cond_c
    :goto_8
    const/4 v2, 0x1

    if-ne v6, v2, :cond_17

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 188
    .end local v16    # "byteArray":[B
    :cond_d
    const/4 v2, 0x1

    if-ne v6, v2, :cond_e

    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_7

    .line 188
    :cond_e
    const/4 v2, 0x1

    goto :goto_9

    .line 199
    .restart local v16    # "byteArray":[B
    :cond_f
    invoke-static/range {v24 .. v24}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    const-string v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v7, :cond_c

    :cond_10
    const-string v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v7, :cond_11

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V

    goto :goto_8

    :cond_11
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    new-instance v13, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v13, v5}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->findByPackage(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    if-lez v3, :cond_12

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ne v6, v2, :cond_12

    invoke-virtual {v13}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->closeDatabase()V

    goto :goto_8

    :cond_12
    invoke-virtual {v13}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->getCount()I

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_13
    :goto_a
    invoke-virtual {v13, v5}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->findByPackage(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x1

    if-ne v6, v3, :cond_16

    const/4 v3, 0x0

    aget v3, v2, v3

    if-lez v3, :cond_16

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_14

    move v9, v6

    move-object/from16 v10, p2

    move-object v12, v5

    invoke-static/range {v8 .. v14}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;I)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v4, 0x1

    :cond_14
    invoke-virtual {v13}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->closeDatabase()V

    move-object/from16 v2, p2

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IZ)V

    goto/16 :goto_8

    :cond_15
    sget-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v13}, Lcom/lenovo/safecenter/notificationintercept/support/RecordDB;->getLast()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    goto :goto_a

    :cond_16
    const/4 v2, 0x1

    goto :goto_b

    .line 200
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public static getNotificationAllow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 826
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 827
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 828
    .local v1, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 829
    if-nez v1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initWhiteListUid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 548
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 550
    :cond_0
    :try_start_0
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 552
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 554
    .local v4, "pkg":Ljava/lang/String;
    const/16 v6, 0x2000

    :try_start_1
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 555
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 556
    .local v5, "uid":I
    if-lez v5, :cond_1

    .line 557
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 559
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "uid":I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 562
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_2
    sput-boolean v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 583
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_1
    return-void

    .line 566
    :cond_4
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->c:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 568
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 569
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 570
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 571
    .restart local v5    # "uid":I
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_6

    .line 572
    :cond_5
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->d:Ljava/util/Map;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_6
    const/4 v6, 0x1

    sput-boolean v6, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "uid":I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 564
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public static notificationAllow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pkgname"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v3, "permission"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 746
    .local v1, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    if-nez v1, :cond_0

    .line 747
    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->insert(Landroid/content/ContentValues;)V

    .line 752
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 753
    return-void

    .line 749
    :cond_0
    const-string v3, "_id"

    iget v4, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    iget v3, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v0, v3, v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->update(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public static notificationAllow(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isAllow"    # Z

    .prologue
    .line 761
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 762
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pkgname"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v4, "permission"

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 765
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 766
    .local v1, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    if-nez v1, :cond_2

    .line 767
    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->insert(Landroid/content/ContentValues;)V

    .line 772
    :goto_1
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 773
    if-nez p2, :cond_0

    .line 774
    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;

    invoke-direct {v3, p1, p0}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;->start()V

    .line 780
    :cond_0
    return-void

    .line 763
    .end local v0    # "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    .end local v1    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 769
    .restart local v0    # "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    .restart local v1    # "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_2
    const-string v3, "_id"

    iget v4, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    iget v3, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v0, v3, v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->update(ILandroid/content/ContentValues;)V

    goto :goto_1
.end method

.method public static notificationFilter(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notificationForbid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 721
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pkgname"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v3, "permission"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 725
    .local v0, "db":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v0, p1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->findByName(Ljava/lang/String;)Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    move-result-object v1

    .line 726
    .local v1, "permission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    if-nez v1, :cond_0

    .line 727
    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->insert(Landroid/content/ContentValues;)V

    .line 732
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V

    .line 733
    return-void

    .line 729
    :cond_0
    const-string v3, "_id"

    iget v4, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    iget v3, v1, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->_id:I

    invoke-virtual {v0, v3, v2}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->update(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public static setScannedAdForbid(Landroid/content/Context;Ljava/util/List;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;

    .line 805
    .local v2, "mPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    const/4 v4, 0x2

    iput v4, v2, Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;->permission:I

    goto :goto_0

    .line 808
    .end local v2    # "mPermission":Lcom/lenovo/safecenter/notificationintercept/support/InterceptPermission;
    :cond_0
    :try_start_0
    new-instance v3, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;-><init>(Landroid/content/Context;)V

    .line 809
    .local v3, "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    invoke-virtual {v3, p1}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->updateList(Ljava/util/List;)V

    .line 810
    invoke-virtual {v3}, Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    const/4 v4, 0x1

    .end local v3    # "pDB":Lcom/lenovo/safecenter/notificationintercept/support/PermissionDB;
    :goto_1
    return v4

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, " update Error"

    invoke-static {v4}, Lcom/lenovo/safecenter/notificationintercept/support/LogUtils;->e(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static updateRecordListAdd(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "permission"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 328
    new-instance v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;

    invoke-direct {v0}, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;-><init>()V

    .line 329
    .local v0, "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    iput-object p0, v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->recordContent:Ljava/lang/String;

    .line 330
    iput p1, v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->recordPermission:I

    .line 331
    iput-wide p2, v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->currentTimeMillis:J

    .line 332
    sget-object v1, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public static updateRecordListRemove(J)V
    .locals 4
    .param p0, "currentTimeMillis"    # J

    .prologue
    .line 339
    sget-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;

    .line 340
    .local v0, "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    iget-wide v2, v0, Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;->currentTimeMillis:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 341
    sget-object v2, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    .end local v0    # "bean":Lcom/lenovo/safecenter/notificationintercept/support/RecordBean;
    :cond_1
    return-void
.end method
