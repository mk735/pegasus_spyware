.class public Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;
.super Ljava/lang/Object;
.source "ServerConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceSendFlag"
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    const-string v0, "SendFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean p1, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a:Z

    const-string v0, "ServerConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendFlag is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needSend(Z)V
    .locals 0
    .param p0, "needSend"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a:Z

    .line 118
    return-void
.end method

.method public static needSend()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/storage/ServerConfigStorage$DeviceSendFlag;->a:Z

    return v0
.end method
