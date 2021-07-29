.class public Lcom/tencent/lbsapi/model/QLBSWifiInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->b:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->c:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->c:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->c:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/model/QLBSWifiInfo;->a:Ljava/lang/String;

    return-void
.end method
