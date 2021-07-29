.class public Lcom/lenovo/safecenter/net/support/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:I

.field public static ERROR:I

.field public static INFO:I

.field public static LOG_LEVEL:I

.field public static VERBOS:I

.field public static WARN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x6

    sput v0, Lcom/lenovo/safecenter/net/support/Logger;->LOG_LEVEL:I

    .line 7
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/safecenter/net/support/Logger;->INFO:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/lenovo/safecenter/net/support/Logger;->ERROR:I

    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/safecenter/net/support/Logger;->WARN:I

    .line 10
    const/4 v0, 0x4

    sput v0, Lcom/lenovo/safecenter/net/support/Logger;->DEBUG:I

    .line 11
    const/4 v0, 0x5

    sput v0, Lcom/lenovo/safecenter/net/support/Logger;->VERBOS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    sget v0, Lcom/lenovo/safecenter/net/support/Logger;->LOG_LEVEL:I

    sget v1, Lcom/lenovo/safecenter/net/support/Logger;->DEBUG:I

    if-le v0, v1, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    sget v0, Lcom/lenovo/safecenter/net/support/Logger;->LOG_LEVEL:I

    sget v1, Lcom/lenovo/safecenter/net/support/Logger;->ERROR:I

    if-le v0, v1, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    sget v0, Lcom/lenovo/safecenter/net/support/Logger;->LOG_LEVEL:I

    sget v1, Lcom/lenovo/safecenter/net/support/Logger;->INFO:I

    if-le v0, v1, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    sget v0, Lcom/lenovo/safecenter/net/support/Logger;->LOG_LEVEL:I

    sget v1, Lcom/lenovo/safecenter/net/support/Logger;->VERBOS:I

    if-le v0, v1, :cond_0

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    sget v0, Lcom/lenovo/safecenter/net/support/Logger;->LOG_LEVEL:I

    sget v1, Lcom/lenovo/safecenter/net/support/Logger;->WARN:I

    if-le v0, v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method
