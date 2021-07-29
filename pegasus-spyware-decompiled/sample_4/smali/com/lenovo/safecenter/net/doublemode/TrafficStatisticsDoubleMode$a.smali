.class final enum Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;
.super Ljava/lang/Enum;
.source "TrafficStatisticsDoubleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

.field public static final enum b:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

.field private static final synthetic c:[Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    const-string v1, "card1"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    new-instance v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    const-string v1, "card2"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->b:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->a:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->b:Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->c:[Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->c:[Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    invoke-virtual {v0}, [Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/safecenter/net/doublemode/TrafficStatisticsDoubleMode$a;

    return-object v0
.end method
