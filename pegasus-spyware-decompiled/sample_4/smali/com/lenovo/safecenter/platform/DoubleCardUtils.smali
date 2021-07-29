.class public Lcom/lenovo/safecenter/platform/DoubleCardUtils;
.super Ljava/lang/Object;
.source "DoubleCardUtils.java"


# static fields
.field public static final DELIVERED_SMS_ACTION:Ljava/lang/String; = "DELIVERED_SMS_ACTION"

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SENT_SMS_ACTION"

.field static a:Z

.field static b:Z

.field static final c:Ljava/lang/Object;

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/content/BroadcastReceiver;

.field private static g:I

.field private static h:I

.field private static i:I

.field public static info:Z

.field public static isAlarm:Z

.field public static isAll:Z

.field public static isDestroy:Z

.field public static isLocate:Z

.field public static isLocked:Z

.field private static j:Landroid/os/PowerManager$WakeLock;

.field public static lat:D

.field public static lon:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    sput-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    .line 33
    sput-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    .line 34
    sput-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f:Landroid/content/BroadcastReceiver;

    .line 36
    sput v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g:I

    .line 38
    sput v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h:I

    sput v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i:I

    .line 39
    sput-boolean v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->a:Z

    .line 40
    sput-boolean v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->b:Z

    .line 51
    sput-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h:I

    return v0
.end method

.method public static beginStartingService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v2, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 60
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 61
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000001a

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    .line 62
    sget-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 64
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 65
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static cleanNotifications()V
    .locals 3

    .prologue
    .line 43
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 46
    .local v1, "mBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e()I
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i:I

    return v0
.end method

.method public static finishStartingService()V
    .locals 2

    .prologue
    .line 73
    sget-object v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic g()I
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g:I

    return v0
.end method

.method static synthetic i()I
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g:I

    return v0
.end method

.method public static privateSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isInfo"    # Z
    .param p4, "simCardNum"    # I

    .prologue
    .line 311
    sput-boolean p3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->info:Z

    .line 312
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in the sendmessage info:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 314
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 315
    .local v1, "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "SENT_SMS_ACTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 316
    .local v10, "sentPI":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "DELIVERED_SMS_ACTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 317
    .local v8, "deliverPI":Landroid/app/PendingIntent;
    invoke-virtual {v1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 318
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v12

    .line 324
    .local v12, "states":[I
    if-nez p4, :cond_3

    .line 326
    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 328
    :cond_0
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    .end local v1    # "sms":Landroid/telephony/SmsManager;
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 360
    .end local v12    # "states":[I
    :cond_1
    :goto_0
    return-void

    .line 330
    .restart local v1    # "sms":Landroid/telephony/SmsManager;
    .restart local v12    # "states":[I
    :cond_2
    const v2, 0x7f0d0178

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 332
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 334
    const/4 v2, 0x1

    aget v2, v12, v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    aget v2, v12, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    aget v2, v12, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 336
    :cond_4
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    .end local v1    # "sms":Landroid/telephony/SmsManager;
    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 338
    .restart local v1    # "sms":Landroid/telephony/SmsManager;
    :cond_5
    const v2, 0x7f0d0178

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 343
    .end local v1    # "sms":Landroid/telephony/SmsManager;
    .end local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v6    # "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v8    # "deliverPI":Landroid/app/PendingIntent;
    .end local v10    # "sentPI":Landroid/app/PendingIntent;
    .end local v12    # "states":[I
    :cond_6
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 344
    .local v9, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    .line 345
    .local v11, "state":I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 346
    .restart local v1    # "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "SENT_SMS_ACTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 347
    .restart local v10    # "sentPI":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "DELIVERED_SMS_ACTION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {p0, v2, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 348
    .restart local v8    # "deliverPI":Landroid/app/PendingIntent;
    invoke-virtual {v1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 349
    .restart local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v5    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .restart local v6    # "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const/4 v2, 0x5

    if-ne v11, v2, :cond_7

    .line 355
    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 357
    :cond_7
    const v2, 0x7f0d0178

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public static sendInfoMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isInfo"    # Z

    .prologue
    .line 364
    sput-boolean p3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->info:Z

    .line 365
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 366
    .local v0, "sms":Landroid/telephony/SmsManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "SENT_SMS_ACTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 367
    .local v8, "sentPI":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "DELIVERED_SMS_ACTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 368
    .local v7, "deliverPI":Landroid/app/PendingIntent;
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 369
    .local v3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 374
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v9

    .line 375
    .local v9, "states":[I
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 377
    :cond_0
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    .end local v0    # "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 385
    .end local v9    # "states":[I
    :cond_1
    :goto_0
    return-void

    .line 378
    .restart local v0    # "sms":Landroid/telephony/SmsManager;
    .restart local v9    # "states":[I
    :cond_2
    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 380
    :cond_3
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    .end local v0    # "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 383
    .end local v9    # "states":[I
    .restart local v0    # "sms":Landroid/telephony/SmsManager;
    :cond_4
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isInfo"    # Z

    .prologue
    .line 267
    sput-boolean p3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->info:Z

    .line 268
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in the sendmessage info:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 271
    .local v0, "sms":Landroid/telephony/SmsManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "SENT_SMS_ACTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 272
    .local v9, "sentPI":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "DELIVERED_SMS_ACTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 273
    .local v7, "deliverPI":Landroid/app/PendingIntent;
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 274
    .local v3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v11

    .line 280
    .local v11, "states":[I
    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    .end local v0    # "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 307
    .end local v11    # "states":[I
    :goto_0
    return-void

    .line 283
    .restart local v0    # "sms":Landroid/telephony/SmsManager;
    .restart local v11    # "states":[I
    :cond_1
    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 285
    :cond_2
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    .end local v0    # "sms":Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 287
    .restart local v0    # "sms":Landroid/telephony/SmsManager;
    :cond_3
    const v1, 0x7f0d0178

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    .end local v0    # "sms":Landroid/telephony/SmsManager;
    .end local v3    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v5    # "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v7    # "deliverPI":Landroid/app/PendingIntent;
    .end local v9    # "sentPI":Landroid/app/PendingIntent;
    .end local v11    # "states":[I
    :cond_4
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 291
    .local v8, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    .line 292
    .local v10, "state":I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 293
    .restart local v0    # "sms":Landroid/telephony/SmsManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "SENT_SMS_ACTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 294
    .restart local v9    # "sentPI":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "DELIVERED_SMS_ACTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 295
    .restart local v7    # "deliverPI":Landroid/app/PendingIntent;
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 296
    .restart local v3    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .restart local v4    # "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .restart local v5    # "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const/4 v1, 0x5

    if-ne v10, v1, :cond_5

    .line 302
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 304
    :cond_5
    const v1, 0x7f0d0178

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public static sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v3, "test"

    const-string v4, "in the sendSMS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v16

    .line 86
    .local v16, "states":[I
    const/4 v3, 0x0

    aget v3, v16, v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    aget v3, v16, v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    aget v3, v16, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 88
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->a:Z

    .line 93
    :cond_1
    :goto_0
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSMS simState0: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget v6, v16, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " simState1: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget v6, v16, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 96
    .local v2, "sms":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 97
    .local v5, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    .line 100
    new-instance v13, Landroid/content/Intent;

    const-string v3, "SENT_SMS_ACTION"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v13, "sentIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 102
    .local v14, "sentPI":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/Intent;

    const-string v3, "DELIVERED_SMS_ACTION"

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v9, "deliverIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 104
    .local v10, "deliverPI":Landroid/app/PendingIntent;
    sget-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v5}, Lcom/lenovo/safecenter/platform/DoubleCardUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    sput-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f:Landroid/content/BroadcastReceiver;

    .line 168
    sget-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "SENT_SMS_ACTION"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    sget-boolean v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->a:Z

    if-eqz v3, :cond_5

    .line 172
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->beginStartingService(Landroid/content/Context;)V

    .line 174
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    .end local v2    # "sms":Landroid/telephony/SmsManager;
    const/4 v4, 0x0

    sget-object v6, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    sget-object v7, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 179
    sget v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->h:I

    .line 264
    .end local v16    # "states":[I
    :cond_2
    :goto_2
    return-void

    .line 89
    .end local v5    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "deliverIntent":Landroid/content/Intent;
    .end local v10    # "deliverPI":Landroid/app/PendingIntent;
    .end local v13    # "sentIntent":Landroid/content/Intent;
    .end local v14    # "sentPI":Landroid/app/PendingIntent;
    .restart local v16    # "states":[I
    :cond_3
    const/4 v3, 0x1

    aget v3, v16, v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v3, 0x1

    aget v3, v16, v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v3, 0x1

    aget v3, v16, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 91
    :cond_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->b:Z

    goto/16 :goto_0

    .line 175
    .restart local v2    # "sms":Landroid/telephony/SmsManager;
    .restart local v5    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "deliverIntent":Landroid/content/Intent;
    .restart local v10    # "deliverPI":Landroid/app/PendingIntent;
    .restart local v13    # "sentIntent":Landroid/content/Intent;
    .restart local v14    # "sentPI":Landroid/app/PendingIntent;
    :catch_0
    move-exception v11

    .line 176
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_5
    sget-boolean v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->b:Z

    if-eqz v3, :cond_2

    .line 181
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->beginStartingService(Landroid/content/Context;)V

    .line 183
    const-wide/16 v3, 0x1388

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :goto_3
    invoke-static/range {p0 .. p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    .end local v2    # "sms":Landroid/telephony/SmsManager;
    const/4 v4, 0x0

    sget-object v6, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    sget-object v7, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 188
    sget v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->i:I

    goto :goto_2

    .line 184
    .restart local v2    # "sms":Landroid/telephony/SmsManager;
    :catch_1
    move-exception v11

    .line 185
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 191
    .end local v2    # "sms":Landroid/telephony/SmsManager;
    .end local v5    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "deliverIntent":Landroid/content/Intent;
    .end local v10    # "deliverPI":Landroid/app/PendingIntent;
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "sentIntent":Landroid/content/Intent;
    .end local v14    # "sentPI":Landroid/app/PendingIntent;
    .end local v16    # "states":[I
    :cond_6
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 192
    .local v12, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    .line 193
    .local v15, "state":I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 194
    .restart local v2    # "sms":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 195
    .restart local v5    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    .line 198
    new-instance v13, Landroid/content/Intent;

    const-string v3, "SENT_SMS_ACTION"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v13    # "sentIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 200
    .restart local v14    # "sentPI":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/Intent;

    const-string v3, "DELIVERED_SMS_ACTION"

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v9    # "deliverIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 202
    .restart local v10    # "deliverPI":Landroid/app/PendingIntent;
    sget-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v2, v1, v5}, Lcom/lenovo/safecenter/platform/DoubleCardUtils$2;-><init>(Landroid/content/Context;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    sput-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f:Landroid/content/BroadcastReceiver;

    .line 250
    sget-object v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->f:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "SENT_SMS_ACTION"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    const/4 v3, 0x5

    if-ne v15, v3, :cond_2

    .line 253
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->beginStartingService(Landroid/content/Context;)V

    .line 255
    const-wide/16 v3, 0x1388

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 259
    :goto_4
    const/4 v4, 0x0

    sget-object v6, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->d:Ljava/util/ArrayList;

    sget-object v7, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->e:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 260
    sget v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->g:I

    goto/16 :goto_2

    .line 256
    :catch_2
    move-exception v11

    .line 257
    .restart local v11    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
