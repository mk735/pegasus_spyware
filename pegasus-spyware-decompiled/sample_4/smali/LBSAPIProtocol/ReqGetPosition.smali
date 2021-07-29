.class public final LLBSAPIProtocol/ReqGetPosition;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static a:LLBSAPIProtocol/GPS;

.field static b:Ljava/util/ArrayList;

.field static c:Ljava/util/ArrayList;

.field static d:Ljava/util/ArrayList;

.field static final synthetic e:Z


# instance fields
.field public stGps:LLBSAPIProtocol/GPS;

.field public strAppUA:Ljava/lang/String;

.field public strImei:Ljava/lang/String;

.field public vCells:Ljava/util/ArrayList;

.field public vMacs:Ljava/util/ArrayList;

.field public vMeasures:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/ReqGetPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/ReqGetPosition;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/GPS;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    iput-object p2, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    iput-object p3, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    iput-object p4, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    iput-object p5, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    iput-object p6, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.ReqGetPosition"

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

    sget-boolean v1, LLBSAPIProtocol/ReqGetPosition;->e:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    const-string v2, "stGps"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    const-string v2, "vMacs"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    const-string v2, "vCells"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    const-string v2, "vMeasures"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    const-string v2, "strAppUA"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    const-string v2, "strImei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/ReqGetPosition;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const-string v0, "LBSAPIProtocol.ReqGetPosition"

    return-object v0
.end method

.method public final getStGps()LLBSAPIProtocol/GPS;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    return-object v0
.end method

.method public final getStrAppUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    return-object v0
.end method

.method public final getVCells()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVMacs()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVMeasures()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->a:LLBSAPIProtocol/GPS;

    if-nez v0, :cond_0

    new-instance v0, LLBSAPIProtocol/GPS;

    invoke-direct {v0}, LLBSAPIProtocol/GPS;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPosition;->a:LLBSAPIProtocol/GPS;

    :cond_0
    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->a:LLBSAPIProtocol/GPS;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPosition;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, LLBSAPIProtocol/ReqGetPosition;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPosition;->setVMacs(Ljava/util/ArrayList;)V

    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPosition;->c:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Cell;

    invoke-direct {v0}, LLBSAPIProtocol/Cell;-><init>()V

    sget-object v1, LLBSAPIProtocol/ReqGetPosition;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->c:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPosition;->setVCells(Ljava/util/ArrayList;)V

    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPosition;->d:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Measure;

    invoke-direct {v0}, LLBSAPIProtocol/Measure;-><init>()V

    sget-object v1, LLBSAPIProtocol/ReqGetPosition;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, LLBSAPIProtocol/ReqGetPosition;->d:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPosition;->setVMeasures(Ljava/util/ArrayList;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPosition;->setStrAppUA(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPosition;->setStrImei(Ljava/lang/String;)V

    return-void
.end method

.method public final setStGps(LLBSAPIProtocol/GPS;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    return-void
.end method

.method public final setStrAppUA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    return-void
.end method

.method public final setStrImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    return-void
.end method

.method public final setVCells(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVMacs(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVMeasures(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->stGps:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMacs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vCells:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->vMeasures:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strAppUA:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPosition;->strImei:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
