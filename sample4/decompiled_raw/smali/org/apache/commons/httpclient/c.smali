.class Lorg/apache/commons/httpclient/c;
.super Ljava/lang/Object;
.source "HttpMethodDirector.java"


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Lorg/apache/commons/logging/Log;


# instance fields
.field private c:Lorg/apache/commons/httpclient/ConnectMethod;

.field private d:Lorg/apache/commons/httpclient/HttpState;

.field private e:Lorg/apache/commons/httpclient/HostConfiguration;

.field private f:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private g:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private h:Lorg/apache/commons/httpclient/HttpConnection;

.field private i:Z

.field private j:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

.field private k:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/apache/commons/httpclient/c;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.c"

    invoke-static {v0}, Lorg/apache/commons/httpclient/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/c;->a:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/c;->a:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V
    .locals 2
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;
    .param p2, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p3, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;
    .param p4, "state"    # Lorg/apache/commons/httpclient/HttpState;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/c;->i:Z

    .line 95
    iput-object v1, p0, Lorg/apache/commons/httpclient/c;->j:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    .line 97
    iput-object v1, p0, Lorg/apache/commons/httpclient/c;->k:Ljava/util/Set;

    .line 106
    iput-object p1, p0, Lorg/apache/commons/httpclient/c;->f:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 107
    iput-object p2, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 108
    iput-object p3, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 109
    iput-object p4, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    .line 110
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/c;->j:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    .line 111
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
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

.method private a(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 6
    .param p1, "authScheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p2, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;
    .param p3, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    .line 861
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v4, "Credentials required"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 862
    const/4 v1, 0x0

    .line 863
    .local v1, "creds":Lorg/apache/commons/httpclient/Credentials;
    const-string v3, "http.authentication.credential-provider"

    invoke-interface {p2, v3}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    .line 865
    .local v0, "credProvider":Lorg/apache/commons/httpclient/auth/CredentialsProvider;
    if-eqz v0, :cond_1

    .line 867
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, p1, v3, v4, v5}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 872
    :goto_0
    if-eqz v1, :cond_0

    .line 873
    iget-object v3, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v3, p3, v1}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 874
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " new credentials given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 881
    :cond_0
    :goto_1
    return-object v1

    .line 869
    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 879
    .end local v2    # "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    :cond_1
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v4, "Credentials provider not available"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 476
    new-instance v4, Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v7, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v4, v7}, Lorg/apache/commons/httpclient/ConnectMethod;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 477
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 481
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 482
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 484
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    :cond_2
    sget-object v4, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v7, "Preemptively sending default basic credentials"

    invoke-interface {v4, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 487
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 488
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 491
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/c;->b(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/c;->c(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 496
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v7, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4, v7, v8}, Lorg/apache/commons/httpclient/ConnectMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I

    .line 497
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v1

    .line 498
    .local v1, "code":I
    const/4 v3, 0x0

    .line 499
    .local v3, "retry":Z
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    .line 500
    .local v0, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const/16 v4, 0x197

    if-ne v1, v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 501
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 502
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/c;->f(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 503
    const/4 v3, 0x1

    .line 506
    :cond_4
    if-nez v3, :cond_6

    .line 513
    const/16 v4, 0xc8

    if-lt v1, v4, :cond_7

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_7

    .line 514
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->tunnelCreated()V

    .line 516
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 520
    :goto_3
    return v5

    .line 492
    .end local v0    # "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    .end local v1    # "code":I
    .end local v3    # "retry":Z
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Lorg/apache/commons/httpclient/auth/AuthenticationException;
    sget-object v4, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "e":Lorg/apache/commons/httpclient/auth/AuthenticationException;
    .restart local v0    # "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    .restart local v1    # "code":I
    .restart local v3    # "retry":Z
    :cond_5
    move v4, v6

    .line 500
    goto :goto_2

    .line 509
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 510
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 519
    :cond_7
    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    move v5, v6

    .line 520
    goto :goto_3
.end method

.method private static a(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z
    .locals 5
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-interface {p0, p1}, Lorg/apache/commons/httpclient/HttpMethod;->getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 243
    .local v1, "authheaders":[Lorg/apache/commons/httpclient/Header;
    const/4 v2, 0x1

    .line 244
    .local v2, "clean":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 245
    aget-object v0, v1, v3

    .line 246
    .local v0, "authheader":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->isAutogenerated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-interface {p0, v0}, Lorg/apache/commons/httpclient/HttpMethod;->removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 244
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 252
    .end local v0    # "authheader":Lorg/apache/commons/httpclient/Header;
    :cond_1
    return v2
.end method

.method private b(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 6
    .param p1, "authScheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p2, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;
    .param p3, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    .line 889
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy credentials required"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 890
    const/4 v1, 0x0

    .line 891
    .local v1, "creds":Lorg/apache/commons/httpclient/Credentials;
    const-string v3, "http.authentication.credential-provider"

    invoke-interface {p2, v3}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    .line 893
    .local v0, "credProvider":Lorg/apache/commons/httpclient/auth/CredentialsProvider;
    if-eqz v0, :cond_1

    .line 895
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v0, p1, v3, v4, v5}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 900
    :goto_0
    if-eqz v1, :cond_0

    .line 901
    iget-object v3, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v3, p3, v1}, Lorg/apache/commons/httpclient/HttpState;->setProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 902
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 903
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " new credentials given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 909
    :cond_0
    :goto_1
    return-object v1

    .line 897
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 907
    .end local v2    # "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    :cond_1
    sget-object v3, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy credentials provider not available"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 9
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v5, "Proxy-Authorization"

    invoke-static {p1, v5}, Lorg/apache/commons/httpclient/c;->a(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 306
    .local v2, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 307
    .local v0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    :cond_2
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v5, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v6

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v1, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v5, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    sget-object v5, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Authenticating with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v5, v1}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 319
    .local v4, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-eqz v4, :cond_4

    .line 320
    invoke-interface {v0, v4, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "authstring":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 322
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    const-string v6, "Proxy-Authorization"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0

    .line 325
    .end local v3    # "authstring":Ljava/lang/String;
    :cond_4
    sget-object v5, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 326
    sget-object v5, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Required proxy credentials not available for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 327
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    sget-object v5, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v6, "Preemptive authentication requested but no default proxy credentials available"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private c(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 4
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, "timeout":I
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 350
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 352
    :cond_0
    if-eqz v0, :cond_1

    .line 353
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "param":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 355
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 356
    return-void
.end method

.method private d(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 9
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 370
    const/4 v5, 0x0

    .line 375
    .local v5, "execCount":I
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 378
    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempt number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " to process request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 381
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->closeIfStale()Z

    .line 384
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 387
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 388
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Lorg/apache/commons/httpclient/ConnectMethod;

    if-nez v2, :cond_2

    .line 391
    invoke-direct {p0}, Lorg/apache/commons/httpclient/c;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 463
    :goto_1
    return-void

    .line 397
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->c(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 398
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    iget-object v3, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 400
    :catch_0
    move-exception v7

    .line 402
    .local v7, "e":Lorg/apache/commons/httpclient/HttpException;
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 448
    .end local v7    # "e":Lorg/apache/commons/httpclient/HttpException;
    :catch_1
    move-exception v7

    .line 449
    .local v7, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 451
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 453
    :cond_3
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/c;->i:Z

    .line 454
    throw v7

    .line 403
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 404
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 405
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 410
    instance-of v2, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v2, :cond_5

    .line 411
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getMethodRetryHandler()Lorg/apache/commons/httpclient/MethodRetryHandler;

    move-result-object v1

    .line 413
    .local v1, "handler":Lorg/apache/commons/httpclient/MethodRetryHandler;
    if-eqz v1, :cond_5

    .line 414
    iget-object v3, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    new-instance v4, Lorg/apache/commons/httpclient/HttpRecoverableException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/commons/httpclient/HttpRecoverableException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v6

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/MethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpRecoverableException;IZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 422
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 455
    .end local v1    # "handler":Lorg/apache/commons/httpclient/MethodRetryHandler;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 456
    .local v7, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 458
    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 460
    :cond_4
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/c;->i:Z

    .line 461
    throw v7

    .line 427
    .local v7, "e":Ljava/io/IOException;
    :cond_5
    :try_start_3
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.method.retry-handler"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;

    .line 430
    .local v1, "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    if-nez v1, :cond_6

    .line 431
    new-instance v1, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    .end local v1    # "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    invoke-direct {v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    .line 433
    .restart local v1    # "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    :cond_6
    invoke-interface {v1, p1, v7, v5}, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 434
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 436
    throw v7

    .line 438
    :cond_7
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 439
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "I/O exception ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") caught when processing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 442
    :cond_8
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 443
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 445
    :cond_9
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "Retrying request"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0
.end method

.method private e(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 13
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/RedirectException;
        }
    .end annotation

    .prologue
    .line 574
    const-string v1, "location"

    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    .line 575
    .local v10, "locationHeader":Lorg/apache/commons/httpclient/Header;
    if-nez v10, :cond_0

    .line 577
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Received redirect response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but no location header"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 579
    const/4 v1, 0x0

    .line 649
    :goto_0
    return v1

    .line 581
    :cond_0
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "location":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Redirect requested to location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 588
    :cond_1
    const/4 v11, 0x0

    .line 589
    .local v11, "redirectUri":Lorg/apache/commons/httpclient/URI;
    const/4 v7, 0x0

    .line 592
    .local v7, "currentUri":Lorg/apache/commons/httpclient/URI;
    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/URI;

    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v7    # "currentUri":Lorg/apache/commons/httpclient/URI;
    .local v0, "currentUri":Lorg/apache/commons/httpclient/URI;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "charset":Ljava/lang/String;
    new-instance v12, Lorg/apache/commons/httpclient/URI;

    const/4 v1, 0x1

    invoke-direct {v12, v9, v1, v6}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_1 .. :try_end_1} :catch_2

    .line 603
    .end local v11    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .local v12, "redirectUri":Lorg/apache/commons/httpclient/URI;
    :try_start_2
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/URI;->isRelativeURI()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 604
    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v2, "http.protocol.reject-relative-redirect"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Relative redirect location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' not allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 606
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 609
    :cond_2
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v2, "Redirect URI is not absolute - parsing as relative"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 610
    new-instance v11, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v11, v0, v12}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V
    :try_end_2
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_2 .. :try_end_2} :catch_3

    .line 616
    .end local v12    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .restart local v11    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    :goto_1
    :try_start_3
    invoke-interface {p1, v11}, Lorg/apache/commons/httpclient/HttpMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V

    .line 617
    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1, v11}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/URI;)V
    :try_end_3
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_3 .. :try_end_3} :catch_2

    .line 623
    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v2, "http.protocol.allow-circular-redirects"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 624
    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->k:Ljava/util/Set;

    if-nez v1, :cond_3

    .line 625
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/httpclient/c;->k:Ljava/util/Set;

    .line 627
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    :try_start_4
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/URI;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lorg/apache/commons/httpclient/URI;->setQuery(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_4 .. :try_end_4} :catch_1

    .line 637
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/httpclient/c;->k:Ljava/util/Set;

    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 638
    new-instance v1, Lorg/apache/commons/httpclient/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    .end local v11    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .restart local v12    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    :cond_5
    :try_start_5
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    :try_end_5
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v11, v12

    .end local v12    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .restart local v11    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    goto :goto_1

    .line 618
    .end local v0    # "currentUri":Lorg/apache/commons/httpclient/URI;
    .end local v6    # "charset":Ljava/lang/String;
    .restart local v7    # "currentUri":Lorg/apache/commons/httpclient/URI;
    :catch_0
    move-exception v8

    move-object v0, v7

    .line 619
    .end local v7    # "currentUri":Lorg/apache/commons/httpclient/URI;
    .restart local v0    # "currentUri":Lorg/apache/commons/httpclient/URI;
    .local v8, "ex":Lorg/apache/commons/httpclient/URIException;
    :goto_2
    new-instance v1, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid redirect location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9, v8}, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 634
    .end local v8    # "ex":Lorg/apache/commons/httpclient/URIException;
    .restart local v6    # "charset":Ljava/lang/String;
    :catch_1
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 643
    :cond_6
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 644
    sget-object v1, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Redirecting from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v11}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 648
    :cond_7
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 649
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 618
    .end local v6    # "charset":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v11    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .restart local v6    # "charset":Ljava/lang/String;
    .restart local v12    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    :catch_3
    move-exception v8

    move-object v11, v12

    .end local v12    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .restart local v11    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    goto :goto_2
.end method

.method private f(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 4
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .prologue
    const/4 v1, 0x0

    .line 662
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpMethodBase.processAuthenticationResponse(HttpState, HttpConnection)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 666
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 668
    :sswitch_0
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->g(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v1

    goto :goto_0

    .line 670
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->h(Lorg/apache/commons/httpclient/HttpMethod;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    sget-object v2, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 666
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private g(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 13
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 685
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 686
    .local v2, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const-string v10, "WWW-Authenticate"

    invoke-interface {p1, v10}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v3

    .line 688
    .local v3, "challenges":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 689
    sget-object v9, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v10, "Authentication challenge(s) not found"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 741
    :cond_0
    :goto_0
    return v8

    .line 692
    :cond_1
    const/4 v0, 0x0

    .line 694
    .local v0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_start_0
    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->j:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v10, v2, v3}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 700
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 703
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, "host":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 705
    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 707
    :cond_3
    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v7

    .line 708
    .local v7, "port":I
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v7, v10, v11}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 713
    .local v1, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v10, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 714
    sget-object v10, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Authentication scope: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 716
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 718
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v10

    invoke-direct {p0, v0, v10, v1}, Lorg/apache/commons/httpclient/c;->a(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 720
    .local v4, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v4, :cond_5

    .line 721
    sget-object v9, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 722
    sget-object v9, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Failure authenticating with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 695
    .end local v1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v4    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    :catch_0
    move-exception v5

    .line 696
    .local v5, "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    sget-object v10, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 697
    sget-object v10, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v5    # "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    .restart local v1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .restart local v4    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v7    # "port":I
    :cond_5
    move v8, v9

    .line 726
    goto/16 :goto_0

    .line 729
    .end local v4    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_6
    invoke-virtual {v2, v9}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 730
    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v10, v1}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 731
    .restart local v4    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v4, :cond_7

    .line 732
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v10

    invoke-direct {p0, v0, v10, v1}, Lorg/apache/commons/httpclient/c;->a(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 735
    :cond_7
    if-nez v4, :cond_8

    .line 736
    sget-object v9, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 737
    sget-object v9, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "No credentials available for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v8, v9

    .line 741
    goto/16 :goto_0
.end method

.method private h(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 12
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 749
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 750
    .local v2, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const-string v8, "Proxy-Authenticate"

    invoke-interface {p1, v8}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v5

    .line 752
    .local v5, "proxyChallenges":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 753
    sget-object v7, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v8, "Proxy authentication challenge(s) not found"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 800
    :cond_0
    :goto_0
    return v6

    .line 756
    :cond_1
    const/4 v0, 0x0

    .line 758
    .local v0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_start_0
    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->j:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v8, v2, v5}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 764
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 767
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v9}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v9

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v1, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v8, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 773
    sget-object v8, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Proxy authentication scope: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 775
    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 777
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    invoke-direct {p0, v0, v8, v1}, Lorg/apache/commons/httpclient/c;->b(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 779
    .local v3, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v3, :cond_4

    .line 780
    sget-object v7, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 781
    sget-object v7, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Failure authenticating with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 759
    .end local v1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :catch_0
    move-exception v4

    .line 760
    .local v4, "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    sget-object v8, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 761
    sget-object v8, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v4    # "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    .restart local v1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .restart local v3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_4
    move v6, v7

    .line 785
    goto/16 :goto_0

    .line 788
    .end local v3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_5
    invoke-virtual {v2, v7}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 789
    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v8, v1}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 790
    .restart local v3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v3, :cond_6

    .line 791
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    invoke-direct {p0, v0, v8, v1}, Lorg/apache/commons/httpclient/c;->b(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 794
    :cond_6
    if-nez v3, :cond_7

    .line 795
    sget-object v7, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 796
    sget-object v7, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No credentials available for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 800
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 14
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Method may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v6

    iget-object v9, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/params/HostParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 127
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v6

    iget-object v9, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v9}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 130
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v6

    const-string v9, "http.default-headers"

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/params/HostParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 132
    .local v1, "defaults":Ljava/util/Collection;
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 134
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/httpclient/Header;

    invoke-interface {p1, v6}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0

    .line 140
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v9, "http.protocol.max-redirects"

    const/16 v10, 0x64

    invoke-virtual {v6, v9, v10}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    .line 142
    .local v3, "maxRedirects":I
    const/4 v4, 0x0

    .line 145
    .local v4, "redirectCount":I
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v9, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/HostConfiguration;->hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 146
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 147
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 148
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    .line 152
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    if-nez v6, :cond_5

    .line 153
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->f:Lorg/apache/commons/httpclient/HttpConnectionManager;

    iget-object v9, p0, Lorg/apache/commons/httpclient/c;->e:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerTimeout()J

    move-result-wide v10

    invoke-interface {v6, v9, v10, v11}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    .line 157
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 158
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->g:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    :cond_4
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v9, "Preemptively sending default basic credentials"

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 162
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 163
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 164
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v6

    if-nez v6, :cond_5

    .line 165
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 166
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_5
    :try_start_1
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->b(Lorg/apache/commons/httpclient/HttpMethod;)V

    :cond_6
    const-string v6, "Authorization"

    invoke-static {p1, v6}, Lorg/apache/commons/httpclient/c;->a(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_c

    .line 171
    :cond_7
    :goto_2
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->d(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 172
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    if-eqz v6, :cond_15

    .line 173
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v8, "CONNECT failed, fake the response for the original method"

    invoke-interface {v6, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    instance-of v6, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v6, :cond_14

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    move-object v6, v0

    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v9}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lorg/apache/commons/httpclient/HttpMethodBase;->a(Lorg/apache/commons/httpclient/StatusLine;Lorg/apache/commons/httpclient/HeaderGroup;Ljava/io/InputStream;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/commons/httpclient/c;->c:Lorg/apache/commons/httpclient/ConnectMethod;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_8
    :goto_3
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v6, :cond_9

    .line 211
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6, v7}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 218
    :cond_9
    iget-boolean v6, p0, Lorg/apache/commons/httpclient/c;->i:Z

    if-nez v6, :cond_a

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_b

    :cond_a
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v6, :cond_b

    .line 222
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 226
    :cond_b
    return-void

    .line 170
    :cond_c
    :try_start_3
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-interface {v9}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_d
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    :cond_e
    iget-object v10, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v10

    new-instance v11, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v9}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v6, v10, v12, v13}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Authenticating with "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_f
    iget-object v6, p0, Lorg/apache/commons/httpclient/c;->d:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v6, v11}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-interface {v9, v6, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v9, Lorg/apache/commons/httpclient/Header;

    const-string v10, "Authorization"

    const/4 v11, 0x1

    invoke-direct {v9, v10, v6, v11}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v9}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    :try_start_4
    sget-object v9, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 210
    .end local v3    # "maxRedirects":I
    .end local v4    # "redirectCount":I
    :catchall_0
    move-exception v6

    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v8, :cond_10

    .line 211
    iget-object v8, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v8, v7}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 218
    :cond_10
    iget-boolean v7, p0, Lorg/apache/commons/httpclient/c;->i:Z

    if-nez v7, :cond_11

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v7

    if-nez v7, :cond_12

    :cond_11
    iget-object v7, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v7, :cond_12

    .line 222
    iget-object v7, p0, Lorg/apache/commons/httpclient/c;->h:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    :cond_12
    throw v6

    .line 170
    .restart local v3    # "maxRedirects":I
    .restart local v4    # "redirectCount":I
    :cond_13
    :try_start_5
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Required credentials not available for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v9, "Preemptive authentication requested but no default credentials available"

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 173
    :cond_14
    const/4 v6, 0x1

    :try_start_6
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/c;->i:Z

    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v8, "Unable to fake response on method as it is not derived from HttpMethodBase."

    invoke-interface {v6, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 177
    :cond_15
    const/4 v5, 0x0

    .line 178
    .local v5, "retry":Z
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v6, v7

    :goto_4
    if-eqz v6, :cond_18

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->e(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 180
    const/4 v5, 0x1

    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 182
    if-lt v4, v3, :cond_17

    .line 183
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v8, "Narrowly avoided an infinite loop in execute"

    invoke-interface {v6, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 184
    new-instance v6, Lorg/apache/commons/httpclient/RedirectException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Maximum redirects ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ") exceeded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :pswitch_1
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v9, "Redirect required"

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getFollowRedirects()Z

    move-result v6

    if-eqz v6, :cond_16

    move v6, v8

    goto :goto_4

    :cond_16
    move v6, v7

    goto :goto_4

    .line 187
    :cond_17
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 188
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Execute redirect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 192
    :cond_18
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v6

    const/16 v10, 0x191

    if-ne v6, v10, :cond_1b

    move v6, v8

    :goto_5
    invoke-virtual {v9, v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v6

    const/16 v10, 0x197

    if-ne v6, v10, :cond_1c

    move v6, v8

    :goto_6
    invoke-virtual {v9, v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_19
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v9, "Authorization required"

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getDoAuthentication()Z

    move-result v6

    if-eqz v6, :cond_1d

    move v6, v8

    :goto_7
    if-eqz v6, :cond_1a

    .line 193
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/c;->f(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 194
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v9, "Retry authentication"

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 195
    const/4 v5, 0x1

    .line 198
    :cond_1a
    if-eqz v5, :cond_8

    .line 204
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 205
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    :cond_1b
    move v6, v7

    .line 192
    goto :goto_5

    :cond_1c
    move v6, v7

    goto :goto_6

    :cond_1d
    sget-object v6, Lorg/apache/commons/httpclient/c;->b:Lorg/apache/commons/logging/Log;

    const-string v9, "Authentication requested but doAuthentication is disabled"

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v6, v7

    goto :goto_7

    :cond_1e
    move v6, v7

    goto :goto_7

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
