.class public Lcom/lenovo/safecenter/HealthCheck/HealthManager;
.super Ljava/lang/Object;
.source "HealthManager.java"

# interfaces
.implements Lcom/lenovo/safecenter/HealthCheck/HealthResultCallback;


# static fields
.field public static final ACTION_HEALTH_OPTIMIZE:I = 0x1

.field public static final ACTION_HEALTH_SCAN:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAidl"    # Z

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a:I

    .line 52
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b:I

    .line 54
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->c:I

    .line 56
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->d:I

    .line 58
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->e:I

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    .line 62
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    .line 63
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->h:I

    .line 65
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->i:I

    .line 66
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    .line 67
    iput v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->k:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    .line 74
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->o:Z

    .line 75
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->p:Z

    .line 76
    iput-boolean v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->q:Z

    .line 79
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    .line 80
    iput-boolean p2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->p:Z

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectVirus;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthAdvertiseIntercept;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v3, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v2, v1, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->p:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafehomepage;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v2, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v3, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthNoSetTrafficLimit;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v4, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v6, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v5, v1, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v2, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v3, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v4, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthRunningAppProcess;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;

    iget-object v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthClearCache;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v2, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;

    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectTraffic;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v3, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;

    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSendSmsFromBackgroud;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v4, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectPrivacy;

    iget-object v5, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectPrivacy;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v5, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;

    iget-object v6, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v5, v6, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthReadPrivacyApp;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v6, Lcom/lenovo/safecenter/HealthCheck/item/HealthHarassIntercept;

    iget-object v7, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v6, v7, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthHarassIntercept;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v7, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;

    iget-object v8, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v7, v8, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthTrafficMonitor;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v8, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;

    iget-object v9, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafepaymen;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v9, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;

    iget-object v10, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v9, v10, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthSafeInputMethod;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    new-instance v10, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;

    iget-object v11, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v10, v11, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthWlanAutoUpdateLab;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    iget-object v11, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v12, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v11, v1, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v2, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v3, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v4, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v5, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v6, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v7, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v8, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v9, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v1, v10, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->p:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;-><init>(Landroid/content/Context;Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v2, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .param p1, "x1"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v3, 0x15

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getScanIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getAllItemSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 145
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->cancelScan()V

    .line 147
    const-string v0, "d"

    const-string v1, "wu0wu"

    const-string v2, "mQScannerMananger.cancelScan()"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    const-string v0, "d"

    const-string v1, "wu0wu"

    const-string v2, "KEY_KILL_VIRUS.clear()"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->clear()V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    .line 469
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onFinished(I)V

    .line 470
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;)V
    .locals 8
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 45
    const-string v0, "wu0wu"

    const-string v1, "onScanStarted..."

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->isRootItem:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    :cond_1
    const-string v3, "wu0wu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllCheckItems item.mKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->p:Z

    if-eqz v0, :cond_3

    iput v7, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->k:I

    :goto_1
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mValueProgressEveryCheck="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    invoke-interface {v0, v1, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onStarted(II)V

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScore(I)V

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setScanProgress(I)V

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthKillVirus;->isClounKillVirus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->k:I

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->k:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    const/4 v5, 0x1

    .line 45
    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "===================Optimization.start======================"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    invoke-interface {v0, v1, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onStarted(II)V

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setProgressBarIndeterminate(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    iget-object v3, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v3, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    if-eq v3, v5, :cond_2

    iget-object v3, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v3, v3, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    const-string v0, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keys="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    iget-object v0, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b(Ljava/util/ArrayList;)V

    invoke-direct {p0, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a(I)V

    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "===================Optimization.end======================"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "scanItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 359
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    .line 361
    .local v0, "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    iput v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->h:I

    .line 362
    const-string v3, "i"

    const-string v4, "wu0wu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkItem.key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->scan()V

    .line 364
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v4, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 367
    iget-boolean v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->o:Z

    if-eqz v3, :cond_0

    .line 368
    const-string v3, "i"

    const-string v4, "wu0wu"

    const-string v5, "isExit scan"

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    :goto_1
    return-void

    .line 373
    .restart local v0    # "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 358
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    :cond_1
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    .line 378
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    goto :goto_1

    .line 380
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/HealthCheck/HealthManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->q:Z

    return p1
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "canOptimizaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 399
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    .line 401
    .local v0, "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->optimiza()V

    .line 403
    iget-object v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    iget v4, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v3, "i"

    const-string v4, "wu0wu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "optimiza checkItem.key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->mKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 409
    const-string v3, "i"

    const-string v4, "wu0wu"

    const-string v5, "===================Optimization.end======================"

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v0    # "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    :goto_1
    return-void

    .line 413
    .restart local v0    # "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    :cond_0
    iget-boolean v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->o:Z

    if-eqz v3, :cond_1

    .line 415
    const-string v3, "i"

    const-string v4, "wu0wu"

    const-string v5, "isExit Optimization"

    invoke-static {v3, v4, v5}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a()V

    goto :goto_1

    .line 421
    :cond_1
    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 426
    .end local v0    # "checkItem":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v3, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_3

    .line 427
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    .line 431
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->saveHealthScoreAndCheckupTime()V

    goto :goto_1

    .line 429
    :cond_3
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->setStatus(I)V

    goto :goto_3
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    iput-boolean v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->o:Z

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->o:Z

    .line 133
    invoke-direct {p0}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a()V

    goto :goto_0
.end method

.method public getAllItemSize()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    .locals 2
    .param p1, "itemKey"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    goto :goto_0
.end method

.method public getMAX_PROGRESS()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->j:I

    return v0
.end method

.method public getNumCanOptimizationItem()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->d:I

    return v0
.end method

.method public getNumDangerItem()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a:I

    return v0
.end method

.method public getNumHasOptimizationItem()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->e:I

    return v0
.end method

.method public getNumManualItem()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b:I

    return v0
.end method

.method public getNumSafeItem()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->c:I

    return v0
.end method

.method public getScanIndex()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->h:I

    return v0
.end method

.method public getScanProgress()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->i:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    return v0
.end method

.method public getSizeByWeightType(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 473
    iget-object v4, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->l:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 475
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;>;>;"
    const/4 v0, 0x0

    .line 476
    .local v0, "count":I
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 478
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    .line 479
    .local v2, "item":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    iget-object v4, v2, Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;->result:Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    iget v4, v4, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    if-ne v4, p1, :cond_0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;>;"
    .end local v2    # "item":Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;
    :cond_1
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    return v0
.end method

.method public getValueProgressEveryCheck()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->k:I

    return v0
.end method

.method public onOneItemProcess(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 1
    .param p1, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onOneItemProcess(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 120
    return-void
.end method

.method public optimize(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->q:Z

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager$2;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_0
    return-void
.end method

.method public plusOrDecrementNumItem(IZ)V
    .locals 1
    .param p1, "viewType"    # I
    .param p2, "isPlus"    # Z

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 251
    :pswitch_0
    if-eqz p2, :cond_0

    .line 252
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->d:I

    goto :goto_0

    .line 254
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->d:I

    goto :goto_0

    .line 258
    :pswitch_1
    if-eqz p2, :cond_1

    .line 259
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a:I

    goto :goto_0

    .line 261
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->a:I

    goto :goto_0

    .line 265
    :pswitch_2
    if-eqz p2, :cond_2

    .line 266
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->e:I

    goto :goto_0

    .line 268
    :cond_2
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->e:I

    goto :goto_0

    .line 272
    :pswitch_3
    if-eqz p2, :cond_3

    .line 273
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b:I

    goto :goto_0

    .line 275
    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->b:I

    goto :goto_0

    .line 279
    :pswitch_4
    if-eqz p2, :cond_4

    .line 280
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->c:I

    goto :goto_0

    .line 282
    :cond_4
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->c:I

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public result(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V
    .locals 1
    .param p1, "result"    # Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onResult(Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;)V

    .line 125
    return-void
.end method

.method public saveHealthScoreAndCheckupTime()V
    .locals 4

    .prologue
    .line 312
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Const;->isHealthCheckNoOptimiza(Ljava/lang/Boolean;)V

    .line 313
    const-string v1, "i"

    const-string v2, "wu0wu"

    const-string v3, "HealthCheckup saveHealthScoreAndCheckupTime..."

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    .line 316
    .local v0, "score":I
    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 317
    const/16 v0, 0x64

    .line 321
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->setHealthCheckupScore(I)V

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/Const;->setHealthCheckupTime(J)V

    .line 323
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isFirstHealthCheckup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->setFirstHealthCheckup()Z

    .line 326
    :cond_1
    return-void

    .line 318
    :cond_2
    iget v1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    if-gez v1, :cond_0

    .line 319
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scan(Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)V
    .locals 3
    .param p1, "scanCallback"    # Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    .prologue
    .line 85
    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthManager scan ||isWorking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-boolean v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->q:Z

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthManager$1;-><init>(Lcom/lenovo/safecenter/HealthCheck/HealthManager;Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    :cond_0
    return-void
.end method

.method public setItemsManual()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 160
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;

    .line 162
    .local v1, "lecloud":Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->isShowLeCloudActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;->manual()V

    .line 165
    .end local v1    # "lecloud":Lcom/lenovo/safecenter/HealthCheck/item/HealthLeCloudSynForContact;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;

    .line 169
    .local v2, "lowMemory":Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;
    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->isShowLowMemoryActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;->manual()V

    .line 172
    .end local v2    # "lowMemory":Lcom/lenovo/safecenter/HealthCheck/item/HealthLowMenory;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;

    .line 176
    .local v3, "thief":Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;
    invoke-virtual {v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->isShowProtectThiefActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {v3}, Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;->manual()V

    .line 179
    .end local v3    # "thief":Lcom/lenovo/safecenter/HealthCheck/item/HealthProtectThief;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->getHealthCheckItemByKey(I)Lcom/lenovo/safecenter/HealthCheck/BaseHealthCheck;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;

    .line 183
    .local v0, "bootApp":Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->isShowBootSpeedActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    invoke-virtual {v0}, Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;->manual()V

    .line 186
    .end local v0    # "bootApp":Lcom/lenovo/safecenter/HealthCheck/item/HealthBootApp;
    :cond_3
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->setProgressBarIndeterminate(Z)V

    .line 246
    return-void
.end method

.method public setScanProgress(I)V
    .locals 1
    .param p1, "scanProgress"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->i:I

    .line 232
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onProgressChanged(I)V

    .line 233
    return-void
.end method

.method public setScore(I)V
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->f:I

    .line 223
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onScoreChanged(I)V

    .line 224
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->g:I

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/HealthCheck/HealthManager;->m:Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/safecenter/HealthCheck/HealthCheckCallback;->onStatusChanged(I)V

    .line 215
    return-void
.end method
