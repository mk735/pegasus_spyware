.class final Lorg/apache/commons/httpclient/protocol/a;
.super Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
.source "ControllerThreadSocketFactory.java"


# instance fields
.field private final a:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/net/InetAddress;

.field private final e:I


# direct methods
.method constructor <init>(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/protocol/a;->a:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    iput-object p2, p0, Lorg/apache/commons/httpclient/protocol/a;->b:Ljava/lang/String;

    iput p3, p0, Lorg/apache/commons/httpclient/protocol/a;->c:I

    iput-object p4, p0, Lorg/apache/commons/httpclient/protocol/a;->d:Ljava/net/InetAddress;

    iput p5, p0, Lorg/apache/commons/httpclient/protocol/a;->e:I

    return-void
.end method


# virtual methods
.method public final doit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/a;->a:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    iget-object v1, p0, Lorg/apache/commons/httpclient/protocol/a;->b:Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/httpclient/protocol/a;->c:I

    iget-object v3, p0, Lorg/apache/commons/httpclient/protocol/a;->d:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/httpclient/protocol/a;->e:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/protocol/a;->setSocket(Ljava/net/Socket;)V

    .line 92
    return-void
.end method
