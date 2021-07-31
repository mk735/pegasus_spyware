.class public Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/ProxyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectResponse"
.end annotation


# instance fields
.field private a:Lorg/apache/commons/httpclient/ConnectMethod;

.field private b:Ljava/net/Socket;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;-><init>()V

    return-void
.end method

.method static a(Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->b:Ljava/net/Socket;

    return-void
.end method

.method static a(Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;Lorg/apache/commons/httpclient/ConnectMethod;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    .param p1, "x1"    # Lorg/apache/commons/httpclient/ConnectMethod;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->a:Lorg/apache/commons/httpclient/ConnectMethod;

    return-void
.end method


# virtual methods
.method public getConnectMethod()Lorg/apache/commons/httpclient/ConnectMethod;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->a:Lorg/apache/commons/httpclient/ConnectMethod;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->b:Ljava/net/Socket;

    return-object v0
.end method
