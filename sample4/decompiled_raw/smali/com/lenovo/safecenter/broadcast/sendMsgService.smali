.class public Lcom/lenovo/safecenter/broadcast/sendMsgService;
.super Landroid/app/Service;
.source "sendMsgService.java"


# static fields
.field public static final DELIVERED_SMS_ACTION:Ljava/lang/String; = "DELIVERED_SMS_ACTION"

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SENT_SMS_ACTION"

.field static a:I

.field static b:I

.field static final c:Ljava/lang/Object;

.field static d:Z

.field static e:Z

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Landroid/content/BroadcastReceiver;

.field private static l:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    sput v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    .line 30
    sput-object v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    .line 31
    sput-object v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    .line 32
    sput-object v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->k:Landroid/content/BroadcastReceiver;

    .line 35
    sput v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->c:Ljava/lang/Object;

    .line 37
    sput-object v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    .line 38
    sput-boolean v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->d:Z

    .line 39
    sput-boolean v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->k:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/sendMsgService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/sendMsgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/sendMsgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/sendMsgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/sendMsgService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/sendMsgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/sendMsgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static beginStartingService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    sget-object v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 227
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 228
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000001a

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    .line 229
    sget-object v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 231
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 232
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/broadcast/sendMsgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/sendMsgService;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->f:I

    return v0
.end method

.method public static finishStartingService()V
    .locals 2

    .prologue
    .line 218
    sget-object v1, Lcom/lenovo/safecenter/broadcast/sendMsgService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->l:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "test"

    const-string v1, "sendMsgService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 247
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 47
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->f:I

    .line 51
    new-instance v0, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;-><init>(Lcom/lenovo/safecenter/broadcast/sendMsgService;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/sendMsgService$1;->start()V

    .line 71
    iget v0, p0, Lcom/lenovo/safecenter/broadcast/sendMsgService;->f:I

    if-gtz v0, :cond_0

    .line 72
    const-string v0, "test"

    const-string v1, "type <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->stopSelf()V

    goto :goto_0
.end method

.method public sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v4, "test"

    const-string v5, "in the sendSMS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v17

    .line 83
    .local v17, "states":[I
    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 86
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->d:Z

    .line 92
    :cond_1
    :goto_0
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSMS simState0: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget v7, v17, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " simState1: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    aget v7, v17, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 95
    .local v3, "sms":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 96
    .local v6, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    .line 99
    new-instance v14, Landroid/content/Intent;

    const-string v4, "SENT_SMS_ACTION"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v14, "sentIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 101
    .local v15, "sentPI":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-string v4, "DELIVERED_SMS_ACTION"

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v10, "deliverIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v10, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 103
    .local v11, "deliverPI":Landroid/app/PendingIntent;
    sget-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v4, Lcom/lenovo/safecenter/broadcast/sendMsgService$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/lenovo/safecenter/broadcast/sendMsgService$2;-><init>(Lcom/lenovo/safecenter/broadcast/sendMsgService;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->k:Landroid/content/BroadcastReceiver;

    .line 138
    sget-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->k:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "SENT_SMS_ACTION"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    sget-boolean v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->d:Z

    if-eqz v4, :cond_5

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->beginStartingService(Landroid/content/Context;)V

    .line 143
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v3

    .end local v3    # "sms":Landroid/telephony/SmsManager;
    const/4 v5, 0x0

    sget-object v7, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    sget-object v8, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 148
    sget v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    .line 216
    .end local v17    # "states":[I
    :cond_2
    :goto_2
    return-void

    .line 87
    .end local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "deliverIntent":Landroid/content/Intent;
    .end local v11    # "deliverPI":Landroid/app/PendingIntent;
    .end local v14    # "sentIntent":Landroid/content/Intent;
    .end local v15    # "sentPI":Landroid/app/PendingIntent;
    .restart local v17    # "states":[I
    :cond_3
    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 90
    :cond_4
    const/4 v4, 0x1

    sput-boolean v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->e:Z

    goto/16 :goto_0

    .line 144
    .restart local v3    # "sms":Landroid/telephony/SmsManager;
    .restart local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "deliverIntent":Landroid/content/Intent;
    .restart local v11    # "deliverPI":Landroid/app/PendingIntent;
    .restart local v14    # "sentIntent":Landroid/content/Intent;
    .restart local v15    # "sentPI":Landroid/app/PendingIntent;
    :catch_0
    move-exception v12

    .line 145
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 149
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_5
    sget-boolean v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->e:Z

    if-eqz v4, :cond_2

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->beginStartingService(Landroid/content/Context;)V

    .line 152
    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v3

    .end local v3    # "sms":Landroid/telephony/SmsManager;
    const/4 v5, 0x0

    sget-object v7, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    sget-object v8, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    const/4 v9, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 157
    sget v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    goto :goto_2

    .line 153
    .restart local v3    # "sms":Landroid/telephony/SmsManager;
    :catch_1
    move-exception v12

    .line 154
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 160
    .end local v3    # "sms":Landroid/telephony/SmsManager;
    .end local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "deliverIntent":Landroid/content/Intent;
    .end local v11    # "deliverPI":Landroid/app/PendingIntent;
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "sentIntent":Landroid/content/Intent;
    .end local v15    # "sentPI":Landroid/app/PendingIntent;
    .end local v17    # "states":[I
    :cond_6
    const-string v4, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 161
    .local v13, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v16

    .line 162
    .local v16, "state":I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 163
    .restart local v3    # "sms":Landroid/telephony/SmsManager;
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 164
    .restart local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    .line 167
    new-instance v14, Landroid/content/Intent;

    const-string v4, "SENT_SMS_ACTION"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v14    # "sentIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v14, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 169
    .restart local v15    # "sentPI":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-string v4, "DELIVERED_SMS_ACTION"

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v10    # "deliverIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v10, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 171
    .restart local v11    # "deliverPI":Landroid/app/PendingIntent;
    sget-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v4, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/lenovo/safecenter/broadcast/sendMsgService$3;-><init>(Lcom/lenovo/safecenter/broadcast/sendMsgService;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->k:Landroid/content/BroadcastReceiver;

    .line 203
    sget-object v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->k:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "SENT_SMS_ACTION"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    .line 205
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->beginStartingService(Landroid/content/Context;)V

    .line 207
    const-wide/16 v4, 0x1388

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    :goto_4
    const/4 v5, 0x0

    sget-object v7, Lcom/lenovo/safecenter/broadcast/sendMsgService;->i:Ljava/util/ArrayList;

    sget-object v8, Lcom/lenovo/safecenter/broadcast/sendMsgService;->j:Ljava/util/ArrayList;

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 212
    sget v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    goto/16 :goto_2

    .line 208
    :catch_2
    move-exception v12

    .line 209
    .restart local v12    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method public sendSMS(Ljava/lang/String;)V
    .locals 4
    .param p1, "safeNumber"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMSG sendSMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0149

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPasswordWithJieMi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d014a

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/broadcast/sendMsgService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    return-void
.end method
