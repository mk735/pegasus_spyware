.class final Lledroid/root/internal/LeNacTransport$a$b;
.super Ljava/lang/Thread;
.source "LeNacTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/internal/LeNacTransport$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lledroid/root/internal/LeNacTransport$a;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lledroid/root/internal/LeNacTransport$a;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$a$b;->a:Lledroid/root/internal/LeNacTransport$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/root/internal/LeNacTransport$a;B)V
    .locals 0
    .param p1, "x0"    # Lledroid/root/internal/LeNacTransport$a;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lledroid/root/internal/LeNacTransport$a$b;-><init>(Lledroid/root/internal/LeNacTransport$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lledroid/root/internal/LeNacTransport$a$b;->start()V

    .line 180
    :goto_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lledroid/root/internal/LeNacTransport$a$b;->join(J)V

    .line 181
    invoke-virtual {p0}, Lledroid/root/internal/LeNacTransport$a$b;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a$b;->b:Ljava/lang/String;

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a$b;->b:Ljava/lang/String;

    .line 167
    :try_start_0
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$a$b;->a:Lledroid/root/internal/LeNacTransport$a;

    invoke-static {v0}, Lledroid/root/internal/LeNacTransport$a;->c(Lledroid/root/internal/LeNacTransport$a;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$a$b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
