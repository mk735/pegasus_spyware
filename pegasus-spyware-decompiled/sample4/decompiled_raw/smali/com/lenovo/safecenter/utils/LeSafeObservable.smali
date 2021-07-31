.class public Lcom/lenovo/safecenter/utils/LeSafeObservable;
.super Ljava/util/Observable;
.source "LeSafeObservable.java"


# static fields
.field public static final LOAD_FINISH:I = 0x16

.field public static final LOAD_PERMISSION:I = 0x14

.field public static final LOAD_VIRUSDB:I = 0x15

.field public static final OBSERVER_CHANGE_CHILD_MODE_FAIL:I = 0x6

.field public static final OBSERVER_CHANGE_GUEST_MODE_SUCCESS:I = 0x5

.field public static final OBSERVER_CHANGE_PASSWORD:I = 0xa

.field public static final OBSERVER_FLOAT_WINDOW_CHANGE:I = 0x14

.field public static final OBSERVER_NEW_CHARGE_LOGS:I = 0x7

.field public static final OBSERVER_NEW_HARASS_LOGS:I = 0x9

.field public static final OBSERVER_NEW_PRIVACY_LOGS:I = 0x8

.field public static final OBSERVER_PROTECT_VIRUS_HAS_VIRUS:I = 0x12

.field public static final OBSERVER_PROTECT_VIRUS_KILLED_VIRUS:I = 0x13

.field public static final OBSERVER_PROTECT_VIRUS_SCANED:I = 0x11

.field public static final OBSERVER_QUERY_LAB:I = 0x1

.field public static final OBSERVER_REFRESH_CALL_DURATION_CURR_MONTH:I = 0x4

.field public static final OBSERVER_REFRESH_PROTECT_HARASS_DETAIL:I = 0xe

.field public static final OBSERVER_REFRESH_PROTECT_PEEP_DETAIL:I = 0xd

.field public static final OBSERVER_REFRESH_PROTECT_THIEF_DETAIL:I = 0x10

.field public static final OBSERVER_REFRESH_PROTECT_TRAFFIC_DETAIL:I = 0xc

.field public static final OBSERVER_REFRESH_PROTECT_VIRUS_DETAIL:I = 0xf

.field public static final OBSERVER_REFRESH_SMS_SENT_NUM_CURR_MONTH:I = 0x3

.field public static final OBSERVER_REFRESH_TRAFFIC_INFO:I = 0x2

.field public static final OBSERVER_UPDATED_LAB:I = 0x0

.field public static final OBSERVER_UPDATING_LAB:I = 0xb

.field private static a:Lcom/lenovo/safecenter/utils/LeSafeObservable;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 73
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/utils/LeSafeObservable$1;-><init>(Lcom/lenovo/safecenter/utils/LeSafeObservable;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v0, "wu0wu"

    const-string v1, "===============isNotInUiThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "wu0wu"

    const-string v1, "===============isInUiThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const-class v1, Lcom/lenovo/safecenter/utils/LeSafeObservable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-direct {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 205
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic i(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic j(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic k(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic l(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic m(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic n(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic o(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic p(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic q(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic r(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic s(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic t(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic u(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic v(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method

.method static synthetic w(Lcom/lenovo/safecenter/utils/LeSafeObservable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->setChanged()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    .line 210
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public noticeChangeChildModeFail()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    return-void
.end method

.method public noticeChangeGuestModeSuccess()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    return-void
.end method

.method public noticeChangePassword()V
    .locals 3

    .prologue
    .line 294
    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "LeSafeObservable noticeChangePassword()-->"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    return-void
.end method

.method public noticeHasScanedVirus()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method

.method public noticeHasVirus()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method public noticeKilledVirus()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    return-void
.end method

.method public noticeLoadFinish()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    return-void
.end method

.method public noticeLoadPermissions()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    return-void
.end method

.method public noticeLoadVirusDB()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    return-void
.end method

.method public noticeQueryedLab()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "wu0wu"

    const-string v1, "noticeQueryedLab()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method public noticeRefreshCallDurationCurrMonth()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    return-void
.end method

.method public noticeRefreshChargeLogs()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    return-void
.end method

.method public noticeRefreshHarassLogs()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    return-void
.end method

.method public noticeRefreshPrivacyLogs()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    return-void
.end method

.method public noticeRefreshProtectHarassDetail()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "wu0wu"

    const-string v1, "noticeRefreshProtectHarassDetail()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    return-void
.end method

.method public noticeRefreshProtectPeepDetail()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "wu0wu"

    const-string v1, "noticeRefreshProtectPeepDetail()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method

.method public noticeRefreshProtectThiefDetail()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "wu0wu"

    const-string v1, "noticeRefreshProtectThiefDetail()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    return-void
.end method

.method public noticeRefreshProtectTrafficDetail()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "wu0wu"

    const-string v1, "noticeRefreshProtectTrafficDetail()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method

.method public noticeRefreshProtectVirusDetail()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "wu0wu"

    const-string v1, "noticeRefreshProtectVirusDetail()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    return-void
.end method

.method public noticeRefreshSmsSentNumCurrMonth()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    return-void
.end method

.method public noticeRefreshTrafficInfo()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "wu0wu"

    const-string v1, "noticeRefreshTrafficInfo()-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public noticeUpdatedLab()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    return-void
.end method

.method public noticeUpdatingLab()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/LeSafeObservable;->b:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    return-void
.end method
