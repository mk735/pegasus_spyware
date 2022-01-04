.class public Lcom/lenovo/safecenter/support/SecurityService;
.super Lcom/tencent/tmsecure/common/TMSService;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;,
        Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;,
        Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;,
        Lcom/lenovo/safecenter/support/SecurityService$b;,
        Lcom/lenovo/safecenter/support/SecurityService$a;,
        Lcom/lenovo/safecenter/support/SecurityService$CallInfo;,
        Lcom/lenovo/safecenter/support/SecurityService$e;,
        Lcom/lenovo/safecenter/support/SecurityService$d;,
        Lcom/lenovo/safecenter/support/SecurityService$c;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.lenovo.safecenter.traffic.correction"

.field public static final DELIVERED_SMS_ACTION:Ljava/lang/String; = "DELIVERED_SMS_ACTION"

.field private static final E:[Ljava/lang/Class;

.field private static final F:[Ljava/lang/Class;

.field public static final MSG_RECEIVED_SMS:I = 0x1

.field private static P:J = 0x0L

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SENT_SMS_ACTION"

.field public static final TAG:Ljava/lang/String; = "TrafficCorrectPlugin"

.field public static final Virus_lock:Ljava/lang/Object;

.field public static beginTime:J

.field public static config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

.field static final h:[Ljava/lang/String;

.field public static instance:Lcom/lenovo/safecenter/support/SecurityService;

.field public static isRinging:Z

.field public static localBlackPerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final lock:Ljava/lang/Object;

.field public static message:Ljava/lang/String;

.field public static netBlackPerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static phoneNumber:Ljava/lang/String;

.field public static secutityPerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sil:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static whitePerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/lenovo/safecenter/support/SecurityService$c;

.field private C:Lcom/lenovo/safecenter/support/SecurityService$d;

.field private D:Landroid/content/BroadcastReceiver;

.field private G:Ljava/lang/reflect/Method;

.field private H:Ljava/lang/reflect/Method;

.field private I:[Ljava/lang/Object;

.field private J:[Ljava/lang/Object;

.field private K:J

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/support/SecurityService$CallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

.field private N:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

.field private O:Z

.field private Q:Landroid/content/BroadcastReceiver;

.field private R:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

.field private S:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field private T:Ljava/lang/String;

.field private U:Landroid/provider/MultiSIMUtils;

.field private V:Landroid/telephony/SmsManager;

.field private W:Z

.field private X:Landroid/app/PendingIntent;

.field private Y:Landroid/app/PendingIntent;

.field a:Lcom/android/internal/telephony/ITelephony;

.field b:Landroid/media/AudioManager;

.field c:Lcom/lenovo/safecenter/support/MMSReceiver;

.field d:Landroid/telephony/TelephonyManager;

.field public di:Lcom/lenovo/safecenter/adapter/DaoImpl;

.field e:Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;

.field f:Lcom/lenovo/safecenter/support/SecurityService$a;

.field g:Lcom/lenovo/safecenter/support/SecurityService$b;

.field i:Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CorrectionDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;

.field m:Landroid/content/BroadcastReceiver;

.field private n:Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;

.field private o:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

.field private p:Z

.field private q:Z

.field private r:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field private s:Lcom/lenovo/safecenter/database/AppDatabase;

.field private t:Landroid/content/SharedPreferences;

.field private u:Z

.field private v:I

.field private w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

.field private x:Landroid/net/ConnectivityManager;

.field private y:I

.field private z:Lcom/lenovo/safecenter/support/CallInfoWin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->netBlackPerson:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    .line 128
    sput-boolean v2, Lcom/lenovo/safecenter/support/SecurityService;->isRinging:Z

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/safecenter/support/SecurityService;->beginTime:J

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->lock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->Virus_lock:Ljava/lang/Object;

    .line 389
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->E:[Ljava/lang/Class;

    .line 391
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->F:[Ljava/lang/Class;

    .line 866
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/safecenter/support/SecurityService;->P:J

    .line 885
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/tencent/tmsecure/common/TMSService;-><init>()V

    .line 124
    iput-boolean v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->p:Z

    .line 125
    iput-boolean v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->q:Z

    .line 134
    iput v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->v:I

    .line 147
    iput v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    .line 152
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$e;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/support/SecurityService$e;-><init>(Lcom/lenovo/safecenter/support/SecurityService;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->A:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$c;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/support/SecurityService$c;-><init>(Lcom/lenovo/safecenter/support/SecurityService;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->B:Lcom/lenovo/safecenter/support/SecurityService$c;

    .line 155
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$d;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/support/SecurityService$d;-><init>(Lcom/lenovo/safecenter/support/SecurityService;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->C:Lcom/lenovo/safecenter/support/SecurityService$d;

    .line 193
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$1;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->D:Landroid/content/BroadcastReceiver;

    .line 394
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->I:[Ljava/lang/Object;

    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->J:[Ljava/lang/Object;

    .line 418
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;-><init>(Lcom/lenovo/safecenter/support/SecurityService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->e:Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;

    .line 419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->K:J

    .line 420
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$a;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/support/SecurityService$a;-><init>(Lcom/lenovo/safecenter/support/SecurityService;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->f:Lcom/lenovo/safecenter/support/SecurityService$a;

    .line 421
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$b;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/safecenter/support/SecurityService$b;-><init>(Lcom/lenovo/safecenter/support/SecurityService;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->g:Lcom/lenovo/safecenter/support/SecurityService$b;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->L:Ljava/util/ArrayList;

    .line 1532
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->i:Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;

    .line 2131
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$5;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$5;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->Q:Landroid/content/BroadcastReceiver;

    .line 2234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->j:Ljava/util/ArrayList;

    .line 2235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->k:Ljava/util/ArrayList;

    .line 2240
    iput-boolean v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->W:Z

    .line 2242
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->l:Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;

    .line 2243
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$6;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$6;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->m:Landroid/content/BroadcastReceiver;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SecurityService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    return p1
.end method

.method static synthetic a(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 114
    sput-wide p0, Lcom/lenovo/safecenter/support/SecurityService;->P:J

    return-wide p0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SecurityService;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;
    .param p1, "x1"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService;->x:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->S:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SecurityService;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;
    .param p1, "x1"    # Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService;->S:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/SecurityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/lenovo/safecenter/support/SecurityService;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/support/SecurityService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/lenovo/safecenter/support/SecurityService;->v:I

    return p1
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 114
    sget-wide v0, Lcom/lenovo/safecenter/support/SecurityService;->P:J

    return-wide v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->W:Z

    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$7;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$7;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService$7;->start()V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    const-string v0, "SIM1_properties_safecenter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "phoneNumber"

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/support/SecurityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->W:Z

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$4;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService$4;->start()V

    return-void
.end method

.method public static findBlack(Ljava/lang/String;)I
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2029
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2031
    const/4 v0, 0x1

    .line 2044
    :cond_0
    :goto_0
    return v0

    .line 2034
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->netBlackPerson:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 2036
    const/4 v0, 0x2

    goto :goto_0

    .line 2044
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1491
    if-eqz p0, :cond_0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1494
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1495
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1497
    :cond_1
    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/support/SecurityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->O:Z

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "alreadyanswer"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    const-string v1, "alreadyanswer"

    const-string v2, "has"

    invoke-virtual {v0, v1, v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/ShowConfirm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "nullnumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/support/SecurityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->L:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/support/SecurityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->p:Z

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/support/SecurityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->q:Z

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->s:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method public static mSIL()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->sil:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->sil:Ljava/util/Map;

    .line 428
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/support/SecurityService;->sil:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/support/SecurityService;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->K:J

    return-wide v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/support/SecurityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->v:I

    return v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "phone"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->a:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "wastetime"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "wastetime"

    const-string v1, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->x:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/support/SecurityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->W:Z

    return v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->R:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    return-object v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->X:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->Y:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic w(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->U:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method static synthetic x(Lcom/lenovo/safecenter/support/SecurityService;)Landroid/telephony/SmsManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/SecurityService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->V:Landroid/telephony/SmsManager;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/CallInfoWin;->hide()V

    .line 1014
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 2385
    const-string v0, "\u6821\u51c6\u5931\u8d25"

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    .line 2386
    sparse-switch p1, :sswitch_data_0

    .line 2415
    const v0, 0x7f0d0826

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    .line 2419
    :goto_0
    const-string v0, "TrafficCorrectPlugin"

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    return-void

    .line 2388
    :sswitch_0
    const v0, 0x7f0d081e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2391
    :sswitch_1
    const v0, 0x7f0d081f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2394
    :sswitch_2
    const v0, 0x7f0d0820

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2397
    :sswitch_3
    const v0, 0x7f0d0821

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2400
    :sswitch_4
    const v0, 0x7f0d0822

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2403
    :sswitch_5
    const v0, 0x7f0d0823

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2406
    :sswitch_6
    const v0, 0x7f0d0824

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2409
    :sswitch_7
    const v0, 0x7f0d0825

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2412
    :sswitch_8
    const v0, 0x7f0d0827

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->T:Ljava/lang/String;

    goto :goto_0

    .line 2386
    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_8
        -0x7 -> :sswitch_6
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_1
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_7
    .end sparse-switch
.end method

.method final a(Ljava/lang/String;)V
    .locals 11
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f070022

    const/16 v9, 0x21

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 938
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    if-eqz v6, :cond_0

    .line 939
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/CallInfoWin;->hide()V

    .line 941
    :cond_0
    if-nez p1, :cond_4

    .line 943
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isShowTaost()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 947
    :cond_2
    new-instance v6, Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/support/CallInfoWin;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    .line 948
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget v7, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    if-ne v7, v4, :cond_3

    :goto_1
    invoke-virtual {v6, v8, v4, v8, v8}, Lcom/lenovo/safecenter/support/CallInfoWin;->show(Landroid/text/SpannableString;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 953
    :cond_4
    const/4 v1, 0x0

    .line 955
    .local v1, "sign":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->r:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v6, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCall(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 960
    :goto_2
    if-nez v1, :cond_9

    .line 964
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->N:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-virtual {v6, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;->local_netSign(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    move-result-object v1

    .line 965
    if-nez v1, :cond_5

    .line 967
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->N:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-virtual {v6, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;->get_netSign(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 972
    :cond_5
    :goto_3
    if-nez v1, :cond_7

    sget-object v6, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v7, "anti_tapping"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 974
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isShowTaost()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 978
    new-instance v6, Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/support/CallInfoWin;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    .line 979
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget v7, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    if-ne v7, v4, :cond_6

    :goto_4
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService;->getPhoneAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v4, p1, v5}, Lcom/lenovo/safecenter/support/CallInfoWin;->show(Landroid/text/SpannableString;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 969
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 970
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v4, v5

    .line 979
    goto :goto_4

    .line 980
    :cond_7
    if-eqz v1, :cond_1

    .line 982
    new-instance v6, Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/support/CallInfoWin;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    .line 983
    const v6, 0x7f0d0593

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getTotalCall()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "text":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 985
    .local v2, "spannable":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 987
    const-string v6, "leg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text.length()=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "getDescFromType(sign.getsType()).length()=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget v7, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    if-ne v7, v4, :cond_8

    :goto_5
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService;->getPhoneAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v4, p1, v5}, Lcom/lenovo/safecenter/support/CallInfoWin;->show(Landroid/text/SpannableString;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_5

    .line 992
    .end local v2    # "spannable":Landroid/text/SpannableString;
    .end local v3    # "text":Ljava/lang/String;
    :cond_9
    new-instance v6, Lcom/lenovo/safecenter/support/CallInfoWin;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/support/CallInfoWin;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    .line 993
    const v6, 0x7f0d0594

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 994
    .restart local v3    # "text":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 995
    .restart local v2    # "spannable":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 997
    const-string v6, "leg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDescFromType(sign.getsType())=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "text.length()=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "getDescFromType(sign.getsType()).length()=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getsType()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/support/SecurityService;->getDescFromType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v6, p0, Lcom/lenovo/safecenter/support/SecurityService;->z:Lcom/lenovo/safecenter/support/CallInfoWin;

    iget v7, p0, Lcom/lenovo/safecenter/support/SecurityService;->y:I

    if-ne v7, v4, :cond_a

    :goto_6
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/support/SecurityService;->getPhoneAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v4, p1, v5}, Lcom/lenovo/safecenter/support/CallInfoWin;->show(Landroid/text/SpannableString;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto :goto_6
.end method

.method public deleteLastestCall(Ljava/lang/String;)V
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "number=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 356
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 358
    .local v7, "id":I
    const-string v1, "whiteperson"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "-1"

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    new-array v3, v9, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    .end local v7    # "id":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    return-void
.end method

.method public endCall()V
    .locals 5

    .prologue
    .line 799
    :try_start_0
    sget-boolean v2, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSimEnabled:Z

    if-eqz v2, :cond_0

    .line 801
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v2

    invoke-virtual {v2}, Landroid/provider/MultiSIMUtils;->endDulCall()Z

    move-result v0

    .line 802
    .local v0, "bool":Z
    const-string v2, "msg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==MyMultiSIMUtils.isMultiSimEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v0    # "bool":Z
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->a:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDescFromType(I)Ljava/lang/String;
    .locals 2
    .param p1, "stype"    # I

    .prologue
    const v1, 0x7f0d04e6

    .line 913
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 915
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 932
    :goto_0
    return-object v0

    .line 916
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 918
    const v0, 0x7f0d04e7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 919
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 921
    const v0, 0x7f0d04e8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 922
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 924
    const v0, 0x7f0d04e9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 925
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 927
    const v0, 0x7f0d04ea

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 928
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 930
    const v0, 0x7f0d04eb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_5
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHarssStatus()Z
    .locals 2

    .prologue
    .line 842
    const/4 v1, 0x0

    .line 845
    .local v1, "harssState":Z
    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 849
    :goto_0
    return v1

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhoneAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->M:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetNullNumber()Z
    .locals 2

    .prologue
    .line 855
    const-string v0, "getnonumber"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getnonumber"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    :cond_0
    const/4 v0, 0x0

    .line 860
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1998
    const-string v0, "content://com.android.contacts/data/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1999
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2001
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2002
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2004
    if-lez v6, :cond_0

    .line 2006
    const/4 v0, 0x1

    .line 2008
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntercept(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2054
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2055
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "intercall_mode_type"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2057
    .local v1, "mode":I
    if-ne v1, v6, :cond_2

    .line 2059
    invoke-virtual {p0, p0, p2}, Lcom/lenovo/safecenter/support/SecurityService;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2088
    :cond_0
    :goto_0
    return v3

    .line 2064
    :cond_1
    sget-object v5, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2070
    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_6

    .line 2072
    :cond_3
    invoke-static {p2}, Lcom/lenovo/safecenter/support/SecurityService;->findBlack(Ljava/lang/String;)I

    move-result v0

    .line 2073
    .local v0, "black_mode":I
    if-nez v0, :cond_4

    move v3, v4

    .line 2075
    goto :goto_0

    .line 2076
    :cond_4
    if-eq v0, v3, :cond_0

    if-eq v0, v6, :cond_0

    .end local v0    # "black_mode":I
    :cond_5
    move v3, v4

    .line 2088
    goto :goto_0

    .line 2081
    :cond_6
    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    .line 2083
    sget-object v5, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0
.end method

.method public isSign(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2014
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->r:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCall(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    move-result-object v0

    .line 2015
    .local v0, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    if-eqz v0, :cond_0

    .line 2017
    const/4 v1, 0x1

    .line 2020
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStangerPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1975
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getAllLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getAllNetBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1984
    :cond_0
    :goto_0
    return v0

    .line 1979
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/lenovo/safecenter/support/SecurityService;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1984
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    .line 440
    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onCreate()V

    .line 441
    sput-object p0, Lcom/lenovo/safecenter/support/SecurityService;->instance:Lcom/lenovo/safecenter/support/SecurityService;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->O:Z

    .line 443
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->t:Landroid/content/SharedPreferences;

    .line 444
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->C:Lcom/lenovo/safecenter/support/SecurityService$d;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->B:Lcom/lenovo/safecenter/support/SecurityService$c;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 446
    new-instance v13, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 447
    .local v13, "statsFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->D:Landroid/content/BroadcastReceiver;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v13, v1, v2}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 448
    const-string v0, "TrafficCorrectPlugin"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->U:Landroid/provider/MultiSIMUtils;

    .line 455
    :goto_0
    sget-object v0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->R:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 456
    new-instance v12, Landroid/content/Intent;

    const-string v0, "SENT_SMS_ACTION"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v12, "sentIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v12, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->X:Landroid/app/PendingIntent;

    .line 458
    new-instance v7, Landroid/content/Intent;

    const-string v0, "DELIVERED_SMS_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v7, "deliverIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->Y:Landroid/app/PendingIntent;

    .line 460
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->m:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SENT_SMS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "com.lenovo.safecenter.net.traffic.correct"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 462
    .local v9, "localIntentFilter":Landroid/content/IntentFilter;
    const v0, 0x7fffffff

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 463
    const-string v0, "TrafficCorrectPlugin"

    const-string v1, "resigestSMS()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->l:Lcom/lenovo/safecenter/support/SecurityService$IncomingSMSReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    new-instance v0, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v1, Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->di:Lcom/lenovo/safecenter/adapter/DaoImpl;

    .line 468
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    .line 469
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$2;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService$2;->start()V

    .line 487
    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->M:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    .line 490
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AppCheck;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/AppCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/AppCheck;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safe_input_method"

    const-string v2, "com.android.inputmethod.latin/.LatinIME"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safe_input_broadcast"

    const-string v2, "com.lenovo.safecenter.safeinputmethod"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->t:Landroid/content/SharedPreferences;

    const-string v1, "safeinput"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safeinputmethod_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->r:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 502
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->N:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    .line 503
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->s:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 508
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->registerContentObserver(Landroid/content/Context;)V

    .line 509
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SecurityService;->e:Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 512
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->d:Landroid/telephony/TelephonyManager;

    .line 513
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->b:Landroid/media/AudioManager;

    .line 516
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForeground"

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->E:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->G:Ljava/lang/reflect/Method;

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopForeground"

    sget-object v2, Lcom/lenovo/safecenter/support/SecurityService;->F:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->H:Ljava/lang/reflect/Method;

    .line 522
    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/lenovo/safecenter/MainTab/SplashActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    .local v3, "netFilter":Landroid/content/Intent;
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const v0, 0x7f0d020a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const v4, 0x7f0200bb

    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/safecenter/utils/MyUtils;->getNotification(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v11

    .line 530
    .local v11, "notification":Landroid/app/Notification;
    if-eqz v11, :cond_1

    .line 531
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->I:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->I:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object v11, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->G:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->I:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 537
    .end local v3    # "netFilter":Landroid/content/Intent;
    .end local v11    # "notification":Landroid/app/Notification;
    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->f:Lcom/lenovo/safecenter/support/SecurityService$a;

    const/16 v2, 0x20

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/provider/MultiSIMUtils;->registDualCardPhoneState(Landroid/telephony/PhoneStateListener;II)V

    .line 540
    invoke-static {p0}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->g:Lcom/lenovo/safecenter/support/SecurityService$b;

    const/16 v2, 0x20

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/provider/MultiSIMUtils;->registDualCardPhoneState(Landroid/telephony/PhoneStateListener;II)V

    .line 554
    :goto_3
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getNetBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->netBlackPerson:Ljava/util/List;

    .line 555
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getWhitePerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    .line 556
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getScurityPerson(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    .line 557
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/SafeCenter;->getLocalBlack(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    .line 559
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->resigestPrivateSMS()V

    .line 560
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->registerIt()V

    .line 561
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->resigestOutCall()V

    .line 562
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->saveMaxCallId()V

    .line 564
    new-instance v0, Lcom/lenovo/safecenter/support/SecurityService$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/SecurityService$3;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/SecurityService$3;->start()V

    .line 565
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->t:Landroid/content/SharedPreferences;

    const-string v1, "safepaymen_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->u:Z

    .line 569
    invoke-static {p0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    .line 570
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->u:Z

    if-eqz v0, :cond_2

    .line 571
    const-string v0, "ydp"

    const-string v1, "register safepayment in securityService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {p0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->register()Z

    .line 575
    :cond_2
    return-void

    .line 452
    .end local v7    # "deliverIntent":Landroid/content/Intent;
    .end local v9    # "localIntentFilter":Landroid/content/IntentFilter;
    .end local v12    # "sentIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->V:Landroid/telephony/SmsManager;

    goto/16 :goto_0

    .line 491
    .restart local v7    # "deliverIntent":Landroid/content/Intent;
    .restart local v9    # "localIntentFilter":Landroid/content/IntentFilter;
    .restart local v12    # "sentIntent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 492
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 531
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "netFilter":Landroid/content/Intent;
    .restart local v11    # "notification":Landroid/app/Notification;
    :cond_4
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->setForeground(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 533
    .end local v3    # "netFilter":Landroid/content/Intent;
    .end local v11    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v8

    .line 534
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->G:Ljava/lang/reflect/Method;

    goto/16 :goto_2

    .line 544
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->f:Lcom/lenovo/safecenter/support/SecurityService$a;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 546
    :try_start_4
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 547
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "phone"

    aput-object v4, v1, v2

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 548
    .local v6, "binder":Landroid/os/IBinder;
    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->a:Lcom/android/internal/telephony/ITelephony;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 549
    .end local v6    # "binder":Landroid/os/IBinder;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v8

    .line 550
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "netFilter":Landroid/content/Intent;
    .restart local v11    # "notification":Landroid/app/Notification;
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 531
    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2201
    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onDestroy()V

    .line 2204
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->o:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2205
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->i:Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2206
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->C:Lcom/lenovo/safecenter/support/SecurityService$d;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2207
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->B:Lcom/lenovo/safecenter/support/SecurityService$c;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2208
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2209
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2210
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/AppCheck;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/AppCheck;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/safecenter/utils/AppCheck;->isRun:Z

    .line 2211
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterIt()V

    .line 2212
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2216
    :goto_0
    return-void

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 762
    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/common/TMSService;->onStart(Landroid/content/Intent;I)V

    .line 773
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x0

    .line 259
    const-string v1, "TrafficCorrectPlugin"

    const-string v2, " onStartCommand "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez p1, :cond_1

    .line 261
    const-string v1, "TrafficCorrectPlugin"

    const-string v2, "intent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 263
    :cond_1
    const-string v1, "TrafficCorrectPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch onstart action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v1, "TrafficCorrectPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correct ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "correct"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "correct"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 268
    .local v0, "isCorrect":Z
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->R:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    if-nez v1, :cond_2

    .line 270
    const-class v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->R:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 274
    new-instance v1, Lcom/lenovo/safecenter/support/SecurityService$8;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/support/SecurityService$8;-><init>(Lcom/lenovo/safecenter/support/SecurityService;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/SecurityService$8;->start()V

    .line 275
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->A:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->A:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x15f90

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public registerIt()V
    .locals 4

    .prologue
    .line 369
    :try_start_0
    const-string v2, "msg"

    const-string v3, "registerIt"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v2, Lcom/lenovo/safecenter/support/MMSReceiver;

    invoke-direct {v2}, Lcom/lenovo/safecenter/support/MMSReceiver;-><init>()V

    iput-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->c:Lcom/lenovo/safecenter/support/MMSReceiver;

    .line 371
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 375
    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 376
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 377
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->c:Lcom/lenovo/safecenter/support/MMSReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resigestBlackSMS()V
    .locals 3

    .prologue
    .line 655
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 657
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->n:Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;

    .line 659
    const-string v1, "MyBrocast.onReceive"

    const-string v2, "resigestSMS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->n:Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 661
    return-void
.end method

.method public resigestOutCall()V
    .locals 3

    .prologue
    .line 1535
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1537
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->i:Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;->setOrderedHint(Z)V

    .line 1538
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->i:Lcom/lenovo/safecenter/support/SecurityService$OutCallReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1539
    return-void
.end method

.method public resigestPrivateSMS()V
    .locals 3

    .prologue
    .line 666
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, "localIntentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 673
    :goto_0
    new-instance v1, Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-direct {v1}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->o:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    .line 675
    const-string v1, "MyBrocast.onReceive"

    const-string v2, "resigestSMS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->o:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/support/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    return-void

    .line 670
    :cond_0
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    goto :goto_0
.end method

.method protected saveMaxCallId()V
    .locals 8

    .prologue
    .line 892
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 895
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->K:J

    .line 896
    if-eqz v6, :cond_1

    .line 897
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 899
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->K:J

    .line 901
    const-string v0, "CallListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxCallLogId===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->K:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v7

    .line 906
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "simNum"    # I

    .prologue
    const/4 v4, 0x0

    .line 287
    const-string v2, "replypri_content"

    invoke-static {p0, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getHarssAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "content":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const v2, 0x7f0d01df

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2, p3}, Lcom/lenovo/safecenter/platform/DoubleCardUtils;->privateSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 295
    sput-boolean v4, Lcom/lenovo/safecenter/utils/Const;->isTariff:Z

    .line 300
    new-instance v1, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v1}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 301
    .local v1, "sms":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/support/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 306
    invoke-virtual {v1, p2}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/lenovo/safecenter/support/SecurityService;->s:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->insertSms(Lcom/lenovo/safecenter/support/Contract;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/safecenter/support/SecurityService;->beginTime:J

    .line 309
    const-string v2, "safemode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSMS......"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public setFlowIsFixed(Z)V
    .locals 2
    .param p1, "isFixed"    # Z

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->setFlowWindowFixed(ZLandroid/view/View;)V

    .line 2198
    :cond_0
    return-void
.end method

.method public setFlowVisibility(I)V
    .locals 1
    .param p1, "isEnabled"    # I

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    if-nez v0, :cond_0

    .line 2180
    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    .line 2182
    :cond_0
    if-nez p1, :cond_1

    .line 2183
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->addView_iconBase()V

    .line 2188
    :goto_0
    return-void

    .line 2186
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->w:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->delView_iconBase()V

    goto :goto_0
.end method

.method public showNotify(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 315
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 317
    .local v4, "nmanager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/safecenter/MainTab/CallNotifyActivity;

    invoke-direct {v2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v7, "Type"

    const-string v8, "call"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v7, "style"

    sget v8, Lcom/lenovo/safecenter/utils/Constant;->CALL_NOTI_ID:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const/high16 v7, 0x20000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    invoke-static {p1, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 328
    .local v1, "intent":Landroid/app/PendingIntent;
    const-string v7, "callnotifytitle"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 330
    const v7, 0x7f0d01d4

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "title":Ljava/lang/String;
    const v7, 0x7f0d01bb

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "content":Ljava/lang/String;
    :goto_0
    const v5, 0x7f0200e8

    .line 339
    .local v5, "resId":I
    const-string v7, "changecallimg"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    const v5, 0x7f020209

    .line 343
    :cond_0
    new-instance v3, Landroid/app/Notification;

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, v5, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 345
    .local v3, "mNotification":Landroid/app/Notification;
    const-string v7, ""

    invoke-virtual {v3, p1, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 346
    const-string v7, "test"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget v7, Lcom/lenovo/safecenter/utils/Constant;->CALL_NOTI_ID:I

    invoke-virtual {v4, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 348
    return-void

    .line 334
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "mNotification":Landroid/app/Notification;
    .end local v5    # "resId":I
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    const-string v7, "callnotifytitle"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .restart local v6    # "title":Ljava/lang/String;
    const-string v7, "callnotifycontent"

    invoke-static {v7, p1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method public unregisterIt()V
    .locals 2

    .prologue
    .line 385
    const-string v0, "msg"

    const-string v1, "unregisterIt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->c:Lcom/lenovo/safecenter/support/MMSReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/support/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    return-void
.end method

.method public updataSafePayment()V
    .locals 6

    .prologue
    .line 633
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->di:Lcom/lenovo/safecenter/adapter/DaoImpl;

    const v1, 0x7f0d0662

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gome.eshopnew"

    const-string v3, "FFEB25D4212F01B3B20462D5D352F5B3"

    const-string v4, "7124600"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForSafeApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->di:Lcom/lenovo/safecenter/adapter/DaoImpl;

    const v1, 0x7f0d0663

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/support/SecurityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.dangdang.buy2.epay"

    const-string v3, "82AE214D33E10C8B8B665E45E8C1FC12"

    const-string v4, "3412196"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/safecenter/adapter/DaoImpl;->insterForSafeApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SecurityService;->di:Lcom/lenovo/safecenter/adapter/DaoImpl;

    const-string v1, "com.nuomi"

    const-string v2, "59215EE95C063FF2C56226581A62130A"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/adapter/DaoImpl;->updataMD5ByPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method
