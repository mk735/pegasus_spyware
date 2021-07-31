.class public final enum Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DispatchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

.field public static final enum NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

.field private static final synthetic a:[Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    const-string v1, "NORMAL_DISPATCH"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    const-string v1, "FORCE_DISPATCH"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->NORMAL_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->FORCE_DISPATCH:Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->a:[Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->a:[Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    invoke-virtual {v0}, [Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$DispatchMode;

    return-object v0
.end method
