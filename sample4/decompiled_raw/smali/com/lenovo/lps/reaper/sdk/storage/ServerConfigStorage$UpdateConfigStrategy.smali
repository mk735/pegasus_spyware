.class public Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;
.super Ljava/lang/Object;
.source "ServerConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateConfigStrategy"
.end annotation


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, 0x6

    sput-wide v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x6

    sput-wide v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a:J

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v1, "ConfigUpdateTimestamp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    const-string v1, "Hour-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Hour-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a:J

    .line 91
    const-string v1, "ServerConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateConfigInterval is set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateConfigStrategy Update Wrong. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUpdateIntervalHour()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$UpdateConfigStrategy;->a:J

    return-wide v0
.end method
