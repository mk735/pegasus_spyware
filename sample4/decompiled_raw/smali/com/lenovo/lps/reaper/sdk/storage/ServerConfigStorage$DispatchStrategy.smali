.class public Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;
.super Ljava/lang/Object;
.source "ServerConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatchStrategy"
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 136
    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->a:I

    .line 137
    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->b:I

    .line 138
    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->c:Z

    .line 139
    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 134
    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->a:I

    sput v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->b:I

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->c:Z

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->d:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    const/4 v3, 0x1

    .line 182
    const-string v4, "Threshold-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 183
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 185
    :try_start_0
    const-string v4, "Threshold-"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "eventNumThres":I
    const-string v4, "Dispatch3G4G"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    sput v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->b:I

    .line 189
    sput-boolean p1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->d:Z

    .line 190
    const-string v4, "ServerConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DispatchStrategy 3G4G is set to "

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

    .line 206
    .end local v1    # "eventNumThres":I
    :goto_0
    return v3

    .line 194
    .restart local v1    # "eventNumThres":I
    :cond_0
    const-string v4, "Dispatch2G"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    sput v1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->a:I

    .line 196
    sput-boolean p1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->c:Z

    .line 197
    const-string v4, "ServerConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DispatchStrategy 2G is set to "

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

    .line 202
    .end local v1    # "eventNumThres":I
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ServerConfigStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DispatchStrategy Update Wrong. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getThreshold()J
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    sget v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->b:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 151
    :pswitch_0
    sget v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->a:I

    int-to-long v0, v0

    goto :goto_0

    .line 153
    :pswitch_1
    sget v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->b:I

    int-to-long v0, v0

    goto :goto_0

    .line 155
    :pswitch_2
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;)Z
    .locals 3
    .param p0, "dispatchMode"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 162
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v0, "ServerConfigStorage"

    const-string v2, "Now is Roaming"

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 177
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 166
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 168
    :pswitch_2
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->c:Z

    goto :goto_0

    .line 170
    :pswitch_3
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DispatchStrategy;->d:Z

    goto :goto_0

    .line 174
    :pswitch_4
    const-string v1, "ServerConfigStorage"

    const-string v2, "Now is NOTCONCERN"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
