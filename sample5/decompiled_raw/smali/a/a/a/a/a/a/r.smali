.class public La/a/a/a/a/a/r;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/a/o;


# instance fields
.field protected a:Ljava/net/Socket;

.field protected b:La/a/a/a/a/a/d/a;

.field private c:Ljavax/net/SocketFactory;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(La/a/a/a/a/a/d/a;Ljavax/net/SocketFactory;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a/a/a/a/a/r;->c:Ljavax/net/SocketFactory;

    iput-object p3, p0, La/a/a/a/a/a/r;->d:Ljava/lang/String;

    iput p4, p0, La/a/a/a/a/a/r;->e:I

    iput-object p1, p0, La/a/a/a/a/a/r;->b:La/a/a/a/a/a/d/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/r;->c:Ljavax/net/SocketFactory;

    iget-object v1, p0, La/a/a/a/a/a/r;->d:Ljava/lang/String;

    iget v2, p0, La/a/a/a/a/a/r;->e:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/r;->a:Ljava/net/Socket;

    iget-object v0, p0, La/a/a/a/a/a/r;->a:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/r;->b:La/a/a/a/a/a/d/a;

    const/16 v2, 0xfa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v0, 0x7d67

    invoke-static {v0}, La/a/a/a/a/a/h;->a(I)La/a/a/a/a/i;

    move-result-object v0

    throw v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/r;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/r;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/r;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/r;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method
