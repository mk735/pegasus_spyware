.class final Lledroid/root/res/SelfSuFile$1;
.super Ljava/lang/Object;
.source "SelfSuFile.java"

# interfaces
.implements Lledroid/root/ShellCommand$ShellCommandResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/res/SelfSuFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lledroid/root/res/SelfSuFile;


# direct methods
.method constructor <init>(Lledroid/root/res/SelfSuFile;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lledroid/root/res/SelfSuFile$1;->a:Lledroid/root/res/SelfSuFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShellCommandResponse(ILjava/lang/String;)V
    .locals 3
    .param p1, "exeId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "SelfRoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Self Su Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
