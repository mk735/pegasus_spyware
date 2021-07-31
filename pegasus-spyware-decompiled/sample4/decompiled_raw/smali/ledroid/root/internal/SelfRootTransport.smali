.class public Lledroid/root/internal/SelfRootTransport;
.super Lledroid/root/internal/SuTransport;
.source "SelfRootTransport.java"


# instance fields
.field private a:Lledroid/root/res/SelfSuFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lledroid/root/internal/SuTransport;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lledroid/utils/AndroidResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lledroid/utils/AndroidResources;-><init>(Landroid/content/res/Resources;)V

    .line 23
    .local v0, "androidResources":Lledroid/utils/AndroidResources;
    new-instance v1, Lledroid/root/res/SelfSuFile;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "raw"

    const-string v4, "su"

    invoke-virtual {v0, v2, v3, v4}, Lledroid/utils/AndroidResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lledroid/root/res/SelfSuFile;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lledroid/root/internal/SelfRootTransport;->a:Lledroid/root/res/SelfSuFile;

    .line 27
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "became":Z
    :try_start_0
    iget-object v1, p0, Lledroid/root/internal/SelfRootTransport;->a:Lledroid/root/res/SelfSuFile;

    invoke-virtual {v1}, Lledroid/root/res/SelfSuFile;->getExecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lledroid/root/internal/SelfRootTransport;->becomeProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deploySelfSu(Lledroid/root/ICommandTransport;)Lledroid/root/internal/SelfRootTransport;
    .locals 3
    .param p0, "deployTransport"    # Lledroid/root/ICommandTransport;

    .prologue
    .line 43
    new-instance v1, Lledroid/root/internal/SelfRootTransport;

    invoke-interface {p0}, Lledroid/root/ICommandTransport;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lledroid/root/internal/SelfRootTransport;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "selfSu":Lledroid/root/internal/SelfRootTransport;
    invoke-virtual {v1}, Lledroid/root/internal/SelfRootTransport;->prepare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    .end local v1    # "selfSu":Lledroid/root/internal/SelfRootTransport;
    :cond_0
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "selfSu":Lledroid/root/internal/SelfRootTransport;
    :cond_1
    :try_start_0
    iget-object v2, v1, Lledroid/root/internal/SelfRootTransport;->a:Lledroid/root/res/SelfSuFile;

    invoke-virtual {v2, p0}, Lledroid/root/res/SelfSuFile;->deployedSelfSuToSystem(Lledroid/root/ICommandTransport;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lledroid/root/internal/SelfRootTransport;->prepare()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "SelfRootTransport"

    return-object v0
.end method

.method public getType()Lledroid/root/ShellTerminalController$TransportType;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lledroid/root/ShellTerminalController$TransportType;->SELF_ROOT_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method

.method public prepare()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lledroid/root/internal/SelfRootTransport;->a:Lledroid/root/res/SelfSuFile;

    invoke-virtual {v0}, Lledroid/root/res/SelfSuFile;->deployedIsUpToData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lledroid/root/internal/SelfRootTransport;->a()Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
