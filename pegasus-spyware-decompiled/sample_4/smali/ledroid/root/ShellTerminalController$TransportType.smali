.class public final enum Lledroid/root/ShellTerminalController$TransportType;
.super Ljava/lang/Enum;
.source "ShellTerminalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/ShellTerminalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lledroid/root/ShellTerminalController$TransportType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NAC_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

.field public static final enum NORMAL_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

.field public static final enum SELF_ROOT_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

.field public static final enum SU_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

.field private static final synthetic a:[Lledroid/root/ShellTerminalController$TransportType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lledroid/root/ShellTerminalController$TransportType;

    const-string v1, "NORMAL_TRANSPORT"

    invoke-direct {v0, v1, v2}, Lledroid/root/ShellTerminalController$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lledroid/root/ShellTerminalController$TransportType;->NORMAL_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    new-instance v0, Lledroid/root/ShellTerminalController$TransportType;

    const-string v1, "NAC_TRANSPORT"

    invoke-direct {v0, v1, v3}, Lledroid/root/ShellTerminalController$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lledroid/root/ShellTerminalController$TransportType;->NAC_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    new-instance v0, Lledroid/root/ShellTerminalController$TransportType;

    const-string v1, "SU_TRANSPORT"

    invoke-direct {v0, v1, v4}, Lledroid/root/ShellTerminalController$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lledroid/root/ShellTerminalController$TransportType;->SU_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    new-instance v0, Lledroid/root/ShellTerminalController$TransportType;

    const-string v1, "SELF_ROOT_TRANSPORT"

    invoke-direct {v0, v1, v5}, Lledroid/root/ShellTerminalController$TransportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lledroid/root/ShellTerminalController$TransportType;->SELF_ROOT_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lledroid/root/ShellTerminalController$TransportType;

    sget-object v1, Lledroid/root/ShellTerminalController$TransportType;->NORMAL_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    aput-object v1, v0, v2

    sget-object v1, Lledroid/root/ShellTerminalController$TransportType;->NAC_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    aput-object v1, v0, v3

    sget-object v1, Lledroid/root/ShellTerminalController$TransportType;->SU_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    aput-object v1, v0, v4

    sget-object v1, Lledroid/root/ShellTerminalController$TransportType;->SELF_ROOT_TRANSPORT:Lledroid/root/ShellTerminalController$TransportType;

    aput-object v1, v0, v5

    sput-object v0, Lledroid/root/ShellTerminalController$TransportType;->a:[Lledroid/root/ShellTerminalController$TransportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lledroid/root/ShellTerminalController$TransportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lledroid/root/ShellTerminalController$TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method

.method public static values()[Lledroid/root/ShellTerminalController$TransportType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lledroid/root/ShellTerminalController$TransportType;->a:[Lledroid/root/ShellTerminalController$TransportType;

    invoke-virtual {v0}, [Lledroid/root/ShellTerminalController$TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lledroid/root/ShellTerminalController$TransportType;

    return-object v0
.end method
