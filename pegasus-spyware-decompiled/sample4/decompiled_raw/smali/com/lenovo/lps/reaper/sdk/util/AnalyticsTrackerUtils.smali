.class public final Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;
.super Ljava/lang/Object;
.source "AnalyticsTrackerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Stack",
            "<",
            "Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->a:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 72
    :goto_0
    return-object p0

    .line 71
    :catch_0
    move-exception v0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception when encode, str is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAnalyticsTrackerBuilder()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/config/Configuration;->getAnalyticsTrackerBuilderClass()Ljava/lang/Class;

    move-result-object v0

    .line 34
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when initialize AnalyticsTrackerBuilder. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCustomVariableParams(Lcom/lenovo/lps/reaper/sdk/api/Event;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCustomParameters()[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;

    move-result-object v0

    .line 51
    .local v0, "customParameters":[Lcom/lenovo/lps/reaper/sdk/api/CustomParameter;
    if-nez v0, :cond_0

    .line 52
    const-string v3, ""

    .line 57
    :goto_0
    return-object v3

    .line 54
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 55
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isTestMode()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->b:Z

    return v0
.end method

.method public static pop()V
    .locals 8

    .prologue
    .line 128
    sget-boolean v2, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->b:Z

    if-eqz v2, :cond_0

    .line 129
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 130
    .local v1, "timeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;>;"
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;

    .line 131
    .local v0, "element":Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;
    const-string v2, "TimeTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;->a(Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;->b(Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static push(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-boolean v1, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->b:Z

    if-eqz v1, :cond_1

    .line 115
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 116
    .local v0, "timeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;>;"
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/Stack;

    .end local v0    # "timeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;>;"
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 118
    .restart local v0    # "timeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;>;"
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 120
    :cond_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v0    # "timeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils$a;>;"
    :cond_1
    return-void
.end method

.method public static replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    const-string v0, "[^0-9a-zA-Z /():,;*+=_.-]"

    const-string v1, "?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 81
    :goto_0
    return-object p0

    .line 80
    :catch_0
    move-exception v0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception when replace, str is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTestMode(Z)V
    .locals 0
    .param p0, "testMode"    # Z

    .prologue
    .line 101
    sput-boolean p0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->b:Z

    .line 102
    return-void
.end method
