.class public Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
.super Ljava/lang/Object;
.source "PhoneSimInfo.java"


# instance fields
.field public SimState:Z

.field private a:Landroid/net/NetworkStats;

.field public isMutiSimCard:Z

.field public networkInfo1:Landroid/net/NetworkStats;

.field public networkInfo2:Landroid/net/NetworkStats;

.field public networkInfo3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public networkList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sim1IMSI:Ljava/lang/String;

.field public sim2IMSI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getNetworkInfoWlan()Landroid/net/NetworkStats;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->a:Landroid/net/NetworkStats;

    return-object v0
.end method

.method public setNetworkInfoWlan(Landroid/net/NetworkStats;)V
    .locals 0
    .param p1, "networkInfoWlan"    # Landroid/net/NetworkStats;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->a:Landroid/net/NetworkStats;

    .line 28
    return-void
.end method
