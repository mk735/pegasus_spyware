.class public final LLBSAPIProtocol/RspGetPosition;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static a:LLBSAPIProtocol/GPS;

.field static final synthetic b:Z


# instance fields
.field public iDistrictCode:I

.field public iRange:I

.field public stUsrLoc:LLBSAPIProtocol/GPS;

.field public strCity:Ljava/lang/String;

.field public strDistrict:Ljava/lang/String;

.field public strPremises:Ljava/lang/String;

.field public strProvince:Ljava/lang/String;

.field public strRoad:Ljava/lang/String;

.field public strTown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/RspGetPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/RspGetPosition;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v0, -0x1

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/GPS;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v0, -0x1

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    iput p2, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    iput-object p3, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    iput-object p4, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    iput-object p5, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    iput-object p6, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    iput-object p7, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    iput-object p8, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    iput p9, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.RspGetPosition"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LLBSAPIProtocol/RspGetPosition;->b:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    const-string v2, "stUsrLoc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    const-string v2, "iRange"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    const-string v2, "strProvince"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    const-string v2, "strCity"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    const-string v2, "strDistrict"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    const-string v2, "strTown"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    const-string v2, "strRoad"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    const-string v2, "strPremises"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    const-string v2, "iDistrictCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/RspGetPosition;

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    iget v1, p1, LLBSAPIProtocol/RspGetPosition;->iRange:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    iget v1, p1, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.RspGetPosition"

    return-object v0
.end method

.method public final getIDistrictCode()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    return v0
.end method

.method public final getIRange()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    return v0
.end method

.method public final getStUsrLoc()LLBSAPIProtocol/GPS;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    return-object v0
.end method

.method public final getStrCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrPremises()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrTown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LLBSAPIProtocol/RspGetPosition;->a:LLBSAPIProtocol/GPS;

    if-nez v0, :cond_0

    new-instance v0, LLBSAPIProtocol/GPS;

    invoke-direct {v0}, LLBSAPIProtocol/GPS;-><init>()V

    sput-object v0, LLBSAPIProtocol/RspGetPosition;->a:LLBSAPIProtocol/GPS;

    :cond_0
    sget-object v0, LLBSAPIProtocol/RspGetPosition;->a:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    return-void
.end method

.method public final setIDistrictCode(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    return-void
.end method

.method public final setIRange(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    return-void
.end method

.method public final setStUsrLoc(LLBSAPIProtocol/GPS;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    return-void
.end method

.method public final setStrCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    return-void
.end method

.method public final setStrDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    return-void
.end method

.method public final setStrPremises(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    return-void
.end method

.method public final setStrProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    return-void
.end method

.method public final setStrRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    return-void
.end method

.method public final setStrTown(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->stUsrLoc:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iRange:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strProvince:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strCity:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strDistrict:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strTown:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strRoad:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/RspGetPosition;->strPremises:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LLBSAPIProtocol/RspGetPosition;->iDistrictCode:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
