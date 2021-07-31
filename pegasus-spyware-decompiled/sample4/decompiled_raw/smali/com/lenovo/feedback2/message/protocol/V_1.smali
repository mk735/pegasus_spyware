.class public final enum Lcom/lenovo/feedback2/message/protocol/V_1;
.super Ljava/lang/Enum;
.source "V_1.java"

# interfaces
.implements Lcom/lenovo/feedback2/message/protocol/HeaderNames;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/feedback2/message/protocol/V_1;",
        ">;",
        "Lcom/lenovo/feedback2/message/protocol/HeaderNames;"
    }
.end annotation


# static fields
.field public static final enum AppName:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum BroadCastId:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum PackageName:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum Pic:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum ResponseCode:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum StackTrace:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum VersionCode:Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final enum VersionName:Lcom/lenovo/feedback2/message/protocol/V_1;

.field private static final synthetic a:[Lcom/lenovo/feedback2/message/protocol/V_1;

.field public static final protocolVersion:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "AppName"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->AppName:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 6
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "PackageName"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->PackageName:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 7
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "VersionCode"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionCode:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 8
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "VersionName"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionName:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 9
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "Pic"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->Pic:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 10
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "StackTrace"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->StackTrace:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 11
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "BroadCastId"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->BroadCastId:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 12
    new-instance v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    const-string v1, "ResponseCode"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/feedback2/message/protocol/V_1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->ResponseCode:Lcom/lenovo/feedback2/message/protocol/V_1;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lenovo/feedback2/message/protocol/V_1;

    sget-object v1, Lcom/lenovo/feedback2/message/protocol/V_1;->AppName:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/feedback2/message/protocol/V_1;->PackageName:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionCode:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/feedback2/message/protocol/V_1;->VersionName:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/feedback2/message/protocol/V_1;->Pic:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/feedback2/message/protocol/V_1;->StackTrace:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/feedback2/message/protocol/V_1;->BroadCastId:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/feedback2/message/protocol/V_1;->ResponseCode:Lcom/lenovo/feedback2/message/protocol/V_1;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->a:[Lcom/lenovo/feedback2/message/protocol/V_1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/feedback2/message/protocol/V_1;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/feedback2/message/protocol/V_1;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/feedback2/message/protocol/V_1;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/feedback2/message/protocol/V_1;->a:[Lcom/lenovo/feedback2/message/protocol/V_1;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/feedback2/message/protocol/V_1;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getProtocolVersion()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
