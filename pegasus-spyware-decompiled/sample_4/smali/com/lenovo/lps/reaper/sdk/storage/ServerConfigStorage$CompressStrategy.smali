.class public Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;
.super Ljava/lang/Object;
.source "ServerConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressStrategy"
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 214
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->a:I

    .line 215
    const/4 v0, 0x5

    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->b:I

    .line 216
    sput-boolean v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->c:Z

    .line 217
    sput-boolean v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 213
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->a:I

    const/4 v0, 0x5

    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->b:I

    sput-boolean v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->c:Z

    sput-boolean v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->d:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    const/4 v3, 0x1

    .line 239
    const-string v4, "Threshold-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 240
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 242
    :try_start_0
    const-string v4, "Threshold-"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, "eventNumThres":I
    const-string v4, "Compress3G4G"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    sput v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->b:I

    .line 246
    sput-boolean p1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->d:Z

    .line 247
    const-string v4, "ServerConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CompressStrategy 3G4G is set to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v1    # "eventNumThres":I
    :goto_0
    return v3

    .line 251
    .restart local v1    # "eventNumThres":I
    :cond_0
    const-string v4, "Compress2G"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    sput v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->a:I

    .line 253
    sput-boolean p1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->c:Z

    .line 254
    const-string v4, "ServerConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CompressStrategy 2G is set to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v1    # "eventNumThres":I
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ServerConfigStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateCompressStrategy Update Wrong. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static needCompress(I)Z
    .locals 3
    .param p0, "eventNum"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 230
    :pswitch_0
    sget-boolean v2, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->c:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->a:I

    if-ge p0, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 232
    :pswitch_1
    sget-boolean v2, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->d:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$CompressStrategy;->b:I

    if-ge p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
