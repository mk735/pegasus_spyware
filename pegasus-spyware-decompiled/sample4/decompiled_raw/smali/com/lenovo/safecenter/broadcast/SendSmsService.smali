.class public Lcom/lenovo/safecenter/broadcast/SendSmsService;
.super Landroid/app/Service;
.source "SendSmsService.java"


# static fields
.field public static final DELIVERED_SMS_ACTION:Ljava/lang/String; = "DELIVERED_SMS_ACTION"

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SENT_SMS_ACTION"

.field static a:Z

.field static b:Z

.field static final c:Ljava/lang/Object;

.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    sput-boolean v0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->a:Z

    .line 21
    sput-boolean v0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->b:Z

    .line 22
    sput-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    .line 23
    sput-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->c:Ljava/lang/Object;

    .line 27
    sput-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/SendSmsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SendSmsService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/SendSmsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SendSmsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/SendSmsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SendSmsService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/SendSmsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SendSmsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static beginStartingService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 156
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 158
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000001a

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    .line 161
    sget-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 163
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static finishStartingService()V
    .locals 2

    .prologue
    .line 146
    sget-object v1, Lcom/lenovo/safecenter/broadcast/SendSmsService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/lenovo/safecenter/broadcast/SendSmsService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 150
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    return-void

    .line 150
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
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "test"

    const-string v1, "SendSmsService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 35
    const-string v0, "test"

    const-string v1, "in the SendSmsService sendSMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;-><init>(Lcom/lenovo/safecenter/broadcast/SendSmsService;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->start()V

    .line 41
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v2, "test"

    const-string v3, "in the SendSmsService sendSMS----Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v15

    .line 49
    .local v15, "states":[I
    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 52
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->a:Z

    .line 59
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 60
    .local v1, "sms":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 61
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    .line 64
    new-instance v12, Landroid/content/Intent;

    const-string v2, "SENT_SMS_ACTION"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v12, "sentIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 67
    .local v13, "sentPI":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string v2, "DELIVERED_SMS_ACTION"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v8, "deliverIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 70
    .local v9, "deliverPI":Landroid/app/PendingIntent;
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-boolean v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->a:Z

    if-eqz v2, :cond_5

    .line 73
    const-string v2, "test"

    const-string v3, "sim1 ready send sms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->beginStartingService(Landroid/content/Context;)V

    .line 81
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    .end local v1    # "sms":Landroid/telephony/SmsManager;
    const/4 v3, 0x0

    sget-object v5, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    sget-object v6, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 88
    sget v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    .line 142
    .end local v15    # "states":[I
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->stopSelf()V

    .line 143
    return-void

    .line 53
    .end local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "deliverIntent":Landroid/content/Intent;
    .end local v9    # "deliverPI":Landroid/app/PendingIntent;
    .end local v12    # "sentIntent":Landroid/content/Intent;
    .end local v13    # "sentPI":Landroid/app/PendingIntent;
    .restart local v15    # "states":[I
    :cond_3
    const/4 v2, 0x1

    aget v2, v15, v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    aget v2, v15, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    aget v2, v15, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 56
    :cond_4
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->b:Z

    goto/16 :goto_0

    .line 76
    .restart local v1    # "sms":Landroid/telephony/SmsManager;
    .restart local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "deliverIntent":Landroid/content/Intent;
    .restart local v9    # "deliverPI":Landroid/app/PendingIntent;
    .restart local v12    # "sentIntent":Landroid/content/Intent;
    .restart local v13    # "sentPI":Landroid/app/PendingIntent;
    :catch_0
    move-exception v10

    .line 77
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v10

    .line 83
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_5
    sget-boolean v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->b:Z

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "test"

    const-string v3, "sim2 ready send sms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-wide/16 v2, 0x7530

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->beginStartingService(Landroid/content/Context;)V

    .line 98
    const-wide/16 v2, 0x1388

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 102
    :goto_5
    invoke-static/range {p0 .. p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    .end local v1    # "sms":Landroid/telephony/SmsManager;
    const/4 v3, 0x0

    sget-object v5, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    sget-object v6, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/provider/MultiSIMUtils;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 105
    sget v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->a:I

    goto :goto_3

    .line 93
    .restart local v1    # "sms":Landroid/telephony/SmsManager;
    :catch_2
    move-exception v10

    .line 94
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 99
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v10

    .line 100
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 108
    .end local v1    # "sms":Landroid/telephony/SmsManager;
    .end local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "deliverIntent":Landroid/content/Intent;
    .end local v9    # "deliverPI":Landroid/app/PendingIntent;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "sentIntent":Landroid/content/Intent;
    .end local v13    # "sentPI":Landroid/app/PendingIntent;
    .end local v15    # "states":[I
    :cond_6
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 110
    .local v11, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v14

    .line 111
    .local v14, "state":I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 112
    .restart local v1    # "sms":Landroid/telephony/SmsManager;
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 113
    .restart local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    .line 116
    new-instance v12, Landroid/content/Intent;

    const-string v2, "SENT_SMS_ACTION"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v12    # "sentIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 119
    .restart local v13    # "sentPI":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string v2, "DELIVERED_SMS_ACTION"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v8    # "deliverIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 122
    .restart local v9    # "deliverPI":Landroid/app/PendingIntent;
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const/4 v2, 0x5

    if-ne v14, v2, :cond_2

    .line 127
    const-wide/16 v2, 0x7530

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 131
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->beginStartingService(Landroid/content/Context;)V

    .line 133
    const-wide/16 v2, 0x1388

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 137
    :goto_7
    const/4 v3, 0x0

    sget-object v5, Lcom/lenovo/safecenter/broadcast/SendSmsService;->f:Ljava/util/ArrayList;

    sget-object v6, Lcom/lenovo/safecenter/broadcast/SendSmsService;->g:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 139
    sget v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lenovo/safecenter/broadcast/sendMsgService;->b:I

    goto/16 :goto_3

    .line 128
    :catch_4
    move-exception v10

    .line 129
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 134
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v10

    .line 135
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method
