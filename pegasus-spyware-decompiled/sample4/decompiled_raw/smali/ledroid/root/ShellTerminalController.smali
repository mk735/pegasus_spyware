.class public final Lledroid/root/ShellTerminalController;
.super Ljava/lang/Object;
.source "ShellTerminalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/ShellTerminalController$1;,
        Lledroid/root/ShellTerminalController$TransportType;
    }
.end annotation


# static fields
.field private static b:I

.field private static c:Lledroid/root/ShellTerminalController$TransportType;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput v0, Lledroid/root/ShellTerminalController;->b:I

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lledroid/root/ShellTerminalController;->c:Lledroid/root/ShellTerminalController$TransportType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lledroid/root/ShellTerminalController;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private static a(ILledroid/root/ShellTerminalController$TransportType;)V
    .locals 0
    .param p0, "status"    # I
    .param p1, "usableType"    # Lledroid/root/ShellTerminalController$TransportType;

    .prologue
    .line 131
    sput p0, Lledroid/root/ShellTerminalController;->b:I

    .line 132
    sput-object p1, Lledroid/root/ShellTerminalController;->c:Lledroid/root/ShellTerminalController$TransportType;

    .line 133
    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 111
    sget v0, Lledroid/root/ShellTerminalController;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 123
    sget v1, Lledroid/root/ShellTerminalController;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getRootTransport()Lledroid/root/ICommandTransport;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {}, Lledroid/root/ShellTerminalController;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-static {}, Lledroid/root/ShellTerminalController;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    iget-object v2, p0, Lledroid/root/ShellTerminalController;->a:Landroid/content/Context;

    sget-object v3, Lledroid/root/ShellTerminalController;->c:Lledroid/root/ShellTerminalController$TransportType;

    invoke-virtual {p0, v2, v3}, Lledroid/root/ShellTerminalController;->getTransport(Landroid/content/Context;Lledroid/root/ShellTerminalController$TransportType;)Lledroid/root/ICommandTransport;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 29
    goto :goto_0

    .line 33
    :cond_1
    iget-object v3, p0, Lledroid/root/ShellTerminalController;->a:Landroid/content/Context;

    sget-object v4, Lledroid/root/ShellTerminalController$TransportType;->SELF_ROOT_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    invoke-virtual {p0, v3, v4}, Lledroid/root/ShellTerminalController;->getTransport(Landroid/content/Context;Lledroid/root/ShellTerminalController$TransportType;)Lledroid/root/ICommandTransport;

    move-result-object v1

    .line 34
    .local v1, "st":Lledroid/root/ICommandTransport;
    if-nez v1, :cond_3

    .line 35
    iget-object v3, p0, Lledroid/root/ShellTerminalController;->a:Landroid/content/Context;

    sget-object v4, Lledroid/root/ShellTerminalController$TransportType;->SU_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    invoke-virtual {p0, v3, v4}, Lledroid/root/ShellTerminalController;->getTransport(Landroid/content/Context;Lledroid/root/ShellTerminalController$TransportType;)Lledroid/root/ICommandTransport;

    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    iget-object v3, p0, Lledroid/root/ShellTerminalController;->a:Landroid/content/Context;

    sget-object v4, Lledroid/root/ShellTerminalController$TransportType;->NAC_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    invoke-virtual {p0, v3, v4}, Lledroid/root/ShellTerminalController;->getTransport(Landroid/content/Context;Lledroid/root/ShellTerminalController$TransportType;)Lledroid/root/ICommandTransport;

    move-result-object v1

    .line 40
    :cond_2
    if-eqz v1, :cond_3

    .line 41
    invoke-static {v1}, Lledroid/root/internal/SelfRootTransport;->deploySelfSu(Lledroid/root/ICommandTransport;)Lledroid/root/internal/SelfRootTransport;

    move-result-object v0

    .line 42
    .local v0, "selfSuTransport":Lledroid/root/ICommandTransport;
    if-eqz v0, :cond_3

    .line 43
    invoke-interface {v1}, Lledroid/root/ICommandTransport;->destory()V

    .line 44
    move-object v1, v0

    .line 49
    .end local v0    # "selfSuTransport":Lledroid/root/ICommandTransport;
    :cond_3
    if-eqz v1, :cond_4

    .line 50
    const/4 v2, 0x1

    invoke-interface {v1}, Lledroid/root/ICommandTransport;->getType()Lledroid/root/ShellTerminalController$TransportType;

    move-result-object v3

    invoke-static {v2, v3}, Lledroid/root/ShellTerminalController;->a(ILledroid/root/ShellTerminalController$TransportType;)V

    goto :goto_0

    .line 52
    :cond_4
    const/4 v3, -0x1

    invoke-static {v3, v2}, Lledroid/root/ShellTerminalController;->a(ILledroid/root/ShellTerminalController$TransportType;)V

    goto :goto_0
.end method

.method public final getTransport(Landroid/content/Context;Lledroid/root/ShellTerminalController$TransportType;)Lledroid/root/ICommandTransport;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # Lledroid/root/ShellTerminalController$TransportType;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "st":Lledroid/root/ICommandTransport;
    sget-object v1, Lledroid/root/ShellTerminalController$1;->a:[I

    invoke-virtual {p2}, Lledroid/root/ShellTerminalController$TransportType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lledroid/root/ICommandTransport;->prepare()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 89
    :cond_1
    return-object v0

    .line 66
    :pswitch_0
    invoke-static {p1}, Lledroid/root/internal/LeNacTransport;->getInstance(Landroid/content/Context;)Lledroid/root/internal/LeNacTransport;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 69
    :pswitch_1
    new-instance v0, Lledroid/root/internal/SelfRootTransport;

    .end local v0    # "st":Lledroid/root/ICommandTransport;
    invoke-direct {v0, p1}, Lledroid/root/internal/SelfRootTransport;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0    # "st":Lledroid/root/ICommandTransport;
    goto :goto_0

    .line 72
    :pswitch_2
    new-instance v0, Lledroid/root/internal/SuTransport;

    .end local v0    # "st":Lledroid/root/ICommandTransport;
    invoke-direct {v0, p1}, Lledroid/root/internal/SuTransport;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0    # "st":Lledroid/root/ICommandTransport;
    goto :goto_0

    .line 75
    :pswitch_3
    new-instance v0, Lledroid/root/internal/ShellTransport;

    .end local v0    # "st":Lledroid/root/ICommandTransport;
    invoke-direct {v0, p1}, Lledroid/root/internal/ShellTransport;-><init>(Landroid/content/Context;)V

    .restart local v0    # "st":Lledroid/root/ICommandTransport;
    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final hasRootPermission()Z
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lledroid/root/ShellTerminalController;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lledroid/root/ShellTerminalController;->b()Z

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lledroid/root/ShellTerminalController;->getRootTransport()Lledroid/root/ICommandTransport;

    move-result-object v0

    .line 98
    .local v0, "rootTransport":Lledroid/root/ICommandTransport;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lledroid/root/ICommandTransport;->isRootTransport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
