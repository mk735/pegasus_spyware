.class public final Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;
.super Ljava/lang/Object;
.source "CustomParameterManager.java"


# instance fields
.field private final a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v1, v3, [Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 25
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;-><init>()V

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 5

    .prologue
    .line 79
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->reset()V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_1
    monitor-exit p0

    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CustomParameterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearCustomParameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized getAllCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .locals 8

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget v7, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->b:I

    new-array v6, v7, [Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .line 65
    .local v6, "result":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    const/4 v2, 0x0

    .line 66
    .local v2, "i":I
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    .local v0, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 67
    .local v1, "customParameter":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v1, v6, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 71
    .end local v1    # "customParameter":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    :cond_0
    monitor-exit p0

    return-object v6

    .line 64
    .end local v0    # "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0    # "arr$":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .restart local v1    # "customParameter":Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    .restart local v3    # "i":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "result":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    :cond_1
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public final setCustomParameter(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x100

    .line 40
    invoke-static {p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->check(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 43
    :cond_0
    monitor-enter p0

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->b:I

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->setIndex(I)V

    .line 53
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->setName(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/CustomParameterManager;->a:[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;->setValue(Ljava/lang/String;)V

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
