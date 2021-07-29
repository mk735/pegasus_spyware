.class public Lcom/lenovo/safecenter/utils/RootPassage;
.super Ljava/lang/Object;
.source "RootPassage.java"


# static fields
.field public static final CMD_CC:Ljava/lang/String; = " -cc "

.field public static final CMD_FS:Ljava/lang/String; = " -fs "

.field public static mOutputStream:Ljava/io/DataOutputStream;

.field public static mProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appPross(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    .line 99
    .local v0, "arrayOfObject":[Ljava/lang/Object;
    const/4 v2, 0x0

    const-string v3, "/system/bin"

    aput-object v3, v0, v2

    .line 100
    const/4 v2, 0x1

    const-string v3, "app_process"

    aput-object v3, v0, v2

    .line 101
    const/4 v2, 0x2

    const-string v3, "/system/bin"

    aput-object v3, v0, v2

    .line 102
    const/4 v2, 0x3

    const-string v3, "com.lenovo.safecenter.LFS"

    aput-object v3, v0, v2

    .line 103
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 104
    const-string v2, "%s/%s %s %s %s\n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/RootPassage;->rootCmd(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static rootCmd(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "os":Ljava/io/DataOutputStream;
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->mOutputStream:Ljava/io/DataOutputStream;

    .line 69
    if-nez v1, :cond_0

    .line 70
    const-string v3, "RootPassage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rootCmd()...os=null---->cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return v2

    .line 74
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
