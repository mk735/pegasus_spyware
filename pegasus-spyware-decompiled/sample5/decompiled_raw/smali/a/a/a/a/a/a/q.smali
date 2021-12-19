.class public final La/a/a/a/a/a/q;
.super La/a/a/a/a/a/r;


# instance fields
.field private c:[Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(La/a/a/a/a/a/d/a;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/a/a/a/r;-><init>(La/a/a/a/a/a/d/a;Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-super {p0}, La/a/a/a/a/a/r;->a()V

    iget-object v0, p0, La/a/a/a/a/a/q;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0}, La/a/a/a/a/a/q;->a([Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/a/q;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/q;->a:Ljava/net/Socket;

    iget v2, p0, La/a/a/a/a/a/q;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/q;->a:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v0, p0, La/a/a/a/a/a/q;->a:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, La/a/a/a/a/a/q;->d:I

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iput-object p1, p0, La/a/a/a/a/a/q;->c:[Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/q;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/q;->b:La/a/a/a/a/a/d/a;

    invoke-virtual {v0}, La/a/a/a/a/a/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/q;->b:La/a/a/a/a/a/d/a;

    const/16 v3, 0x104

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, La/a/a/a/a/a/d/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/q;->a:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-lez v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method
