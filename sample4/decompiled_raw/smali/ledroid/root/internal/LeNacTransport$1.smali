.class final Lledroid/root/internal/LeNacTransport$1;
.super Ljava/lang/Object;
.source "LeNacTransport.java"

# interfaces
.implements Lledroid/root/ShellCommand$ShellCommandResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/root/internal/LeNacTransport;->prepare()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lledroid/root/internal/LeNacTransport;


# direct methods
.method constructor <init>(Lledroid/root/internal/LeNacTransport;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$1;->b:Lledroid/root/internal/LeNacTransport;

    iput-object p2, p0, Lledroid/root/internal/LeNacTransport$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShellCommandResponse(ILjava/lang/String;)V
    .locals 1
    .param p1, "exeId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$1;->b:Lledroid/root/internal/LeNacTransport;

    invoke-static {v0}, Lledroid/root/internal/LeNacTransport;->a(Lledroid/root/internal/LeNacTransport;)Z

    .line 258
    :cond_0
    return-void
.end method
