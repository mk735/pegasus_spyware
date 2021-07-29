.class public final Lledroid/root/res/SelfSuFile;
.super Ljava/lang/Object;
.source "SelfSuFile.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lledroid/utils/AndroidResourceFile;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->a:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->b:Lledroid/utils/AndroidResourceFile;

    .line 24
    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    .line 27
    iput-object p1, p0, Lledroid/root/res/SelfSuFile;->a:Landroid/content/Context;

    .line 28
    new-instance v0, Lledroid/utils/AndroidResourceFile;

    iget-object v1, p0, Lledroid/root/res/SelfSuFile;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lledroid/utils/AndroidResourceFile;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->b:Lledroid/utils/AndroidResourceFile;

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/cmcc_ps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    .line 30
    return-void
.end method


# virtual methods
.method public final deployedIsUpToData()Z
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lledroid/root/res/SelfSuFile;->hadDeployed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const/4 v0, 0x0

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    .local v0, "isUpToData":Z
    iget-object v1, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lledroid/root/res/SelfSuFile;->b:Lledroid/utils/AndroidResourceFile;

    invoke-virtual {v3}, Lledroid/utils/AndroidResourceFile;->getLength()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final deployedSelfSuToSystem(Lledroid/root/ICommandTransport;)Z
    .locals 8
    .param p1, "cmdTransport"    # Lledroid/root/ICommandTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "locSuFile":Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lledroid/root/res/SelfSuFile;->b:Lledroid/utils/AndroidResourceFile;

    invoke-virtual {v1, v0}, Lledroid/utils/AndroidResourceFile;->writeTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lledroid/root/ShellCommand;

    invoke-direct {v2, p1}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    new-instance v3, Lledroid/root/res/SelfSuFile$1;

    invoke-direct {v3, p0}, Lledroid/root/res/SelfSuFile$1;-><init>(Lledroid/root/res/SelfSuFile;)V

    invoke-virtual {v2, v3}, Lledroid/root/ShellCommand;->setResponseCallBack(Lledroid/root/ShellCommand$ShellCommandResponse;)V

    iget-object v3, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mount -oremount,rw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "/system"

    invoke-static {v6}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "/system"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "mount -oremount,rw /system /system"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    const-string v4, "/system/bin/busybox"

    invoke-static {v4}, Lledroid/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "busybox cp -v"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-virtual {v2, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "chown"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "0:0"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-virtual {v2, v1}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "chmod"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "6777"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mount -oremount,ro"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "/system"

    invoke-static {v5}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "/system"

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mount -oremount,ro /system /system"

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v1

    invoke-virtual {v1}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lledroid/root/ShellCommand;->waitResponse(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :cond_1
    invoke-virtual {p0}, Lledroid/root/res/SelfSuFile;->hadDeployed()Z

    move-result v1

    return v1

    .line 64
    :cond_2
    const/4 v4, 0x4

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, ">"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v3, v4, v1

    invoke-virtual {v2, v4}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 67
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    throw v1
.end method

.method public final getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExecName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "/system/bin/cmcc_ps"

    return-object v0
.end method

.method public final hadDeployed()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lledroid/root/res/SelfSuFile;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public final isBadSelfSu()Z
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public final setToBad()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bad"

    invoke-static {v1, v2}, Lledroid/utils/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
