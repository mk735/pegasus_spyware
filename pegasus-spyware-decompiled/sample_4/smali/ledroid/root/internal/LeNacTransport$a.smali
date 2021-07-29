.class final Lledroid/root/internal/LeNacTransport$a;
.super Ljava/lang/Object;
.source "LeNacTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/internal/LeNacTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/internal/LeNacTransport$a$b;,
        Lledroid/root/internal/LeNacTransport$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Landroid/net/LocalSocket;

.field private c:Ljava/io/BufferedReader;

.field private d:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    .line 63
    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    .line 65
    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->c:Ljava/io/BufferedReader;

    .line 66
    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;

    .line 72
    :try_start_0
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 80
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "nac_server"

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->c:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lledroid/root/internal/LeNacTransport$a;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$a;
    .param p1, "x1"    # Ljava/io/BufferedReader;

    .prologue
    .line 60
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$a;->c:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic a(Lledroid/root/internal/LeNacTransport$a;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$a;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 60
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;

    return-object p1
.end method

.method static synthetic a(Lledroid/root/internal/LeNacTransport$a;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$a;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 60
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lledroid/root/internal/LeNacTransport$a;)V
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$a;

    .prologue
    .line 60
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$a;->c()V

    return-void
.end method

.method static synthetic b(Lledroid/root/internal/LeNacTransport$a;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$a;

    .prologue
    .line 60
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic c(Lledroid/root/internal/LeNacTransport$a;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$a;

    .prologue
    .line 60
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->c:Ljava/io/BufferedReader;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    .line 112
    :cond_0
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    .line 116
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->c:Ljava/io/BufferedReader;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lledroid/root/internal/LeNacTransport$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    new-instance v1, Lledroid/root/internal/LeNacTransport$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lledroid/root/internal/LeNacTransport$a$a;-><init>(Lledroid/root/internal/LeNacTransport$a;B)V

    .line 193
    .local v1, "thread":Lledroid/root/internal/LeNacTransport$a$a;
    invoke-virtual {v1}, Lledroid/root/internal/LeNacTransport$a$a;->start()V

    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lledroid/root/internal/LeNacTransport$a$a;->join()V

    .line 197
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$a$a;->a(Lledroid/root/internal/LeNacTransport$a$a;)Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$a$a;->a(Lledroid/root/internal/LeNacTransport$a$a;)Ljava/lang/Exception;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "thread":Lledroid/root/internal/LeNacTransport$a$a;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method protected final a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    if-nez v2, :cond_1

    move v0, v1

    .line 126
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_0

    .line 127
    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    if-nez v2, :cond_2

    move v0, v1

    .line 130
    :cond_0
    :goto_1
    return v0

    .line 125
    .end local v0    # "isConnected":Z
    :cond_1
    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$a;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 127
    .restart local v0    # "isConnected":Z
    :cond_2
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$a;->b:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 228
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 229
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$a;->c()V

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void
.end method
