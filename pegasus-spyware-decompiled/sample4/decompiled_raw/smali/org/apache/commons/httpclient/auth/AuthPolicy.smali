.class public abstract Lorg/apache/commons/httpclient/auth/AuthPolicy;
.super Ljava/lang/Object;
.source "AuthPolicy.java"


# static fields
.field public static final AUTH_SCHEME_PRIORITY:Ljava/lang/String; = "http.auth.scheme-priority"

.field public static final BASIC:Ljava/lang/String; = "Basic"

.field public static final DIGEST:Ljava/lang/String; = "Digest"

.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field public static final NTLM:Ljava/lang/String; = "NTLM"

.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/Class;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field private static final e:Ljava/util/HashMap;

.field private static final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->e:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->f:Ljava/util/ArrayList;

    .line 100
    const-string v1, "NTLM"

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.auth.NTLMScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 101
    const-string v1, "Digest"

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->b:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.commons.httpclient.auth.DigestScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->b:Ljava/lang/Class;

    :goto_1
    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    const-string v1, "Basic"

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->c:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "org.apache.commons.httpclient.auth.BasicScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->c:Ljava/lang/Class;

    :goto_2
    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 106
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->d:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.apache.commons.httpclient.auth.AuthPolicy"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->d:Ljava/lang/Class;

    :goto_3
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    .line 100
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->a:Ljava/lang/Class;

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->b:Ljava/lang/Class;

    goto :goto_1

    .line 102
    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->c:Ljava/lang/Class;

    goto :goto_2

    .line 106
    :cond_3
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->d:Ljava/lang/Class;

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getAuthScheme(Ljava/lang/String;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 162
    const-class v3, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 163
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Id may not be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 165
    :cond_0
    :try_start_1
    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthPolicy;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 168
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error initializing authentication scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " authentication scheme implemented by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " could not be initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unsupported authentication scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static declared-synchronized getDefaultAuthPrefs()Ljava/util/List;
    .locals 2

    .prologue
    .line 187
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 126
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authentication scheme class may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized unregisterAuthScheme(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 143
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 144
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    monitor-exit v1

    return-void
.end method
