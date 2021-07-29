.class public final LLBSAPIProtocol/Measure;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static a:LLBSAPIProtocol/GPS;

.field static b:Ljava/util/ArrayList;

.field static c:Ljava/util/ArrayList;

.field static final synthetic d:Z


# instance fields
.field public lTime:J

.field public stGps:LLBSAPIProtocol/GPS;

.field public strExtraInfo:Ljava/lang/String;

.field public vCells:Ljava/util/ArrayList;

.field public vMacs:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/Measure;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/Measure;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    iget-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    iput-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    iget-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/GPS;Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    iput-object p1, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    iput-object p2, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    iput-object p3, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    iput-wide p4, p0, LLBSAPIProtocol/Measure;->lTime:J

    iput-object p6, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.Measure"

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

    sget-boolean v1, LLBSAPIProtocol/Measure;->d:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    const-string v2, "stGps"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    const-string v2, "vMacs"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    const-string v2, "vCells"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LLBSAPIProtocol/Measure;->lTime:J

    const-string v3, "lTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    const-string v2, "strExtraInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, LLBSAPIProtocol/Measure;

    iget-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    iget-object v1, p1, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    iget-wide v2, p1, LLBSAPIProtocol/Measure;->lTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

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

.method public final getLTime()J
    .locals 2

    iget-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    return-wide v0
.end method

.method public final getStGps()LLBSAPIProtocol/GPS;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    return-object v0
.end method

.method public final getStrExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getVCells()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVMacs()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, LLBSAPIProtocol/Measure;->a:LLBSAPIProtocol/GPS;

    if-nez v0, :cond_0

    new-instance v0, LLBSAPIProtocol/GPS;

    invoke-direct {v0}, LLBSAPIProtocol/GPS;-><init>()V

    sput-object v0, LLBSAPIProtocol/Measure;->a:LLBSAPIProtocol/GPS;

    :cond_0
    sget-object v0, LLBSAPIProtocol/Measure;->a:LLBSAPIProtocol/GPS;

    invoke-virtual {p1, v0, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/GPS;

    iput-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    sget-object v0, LLBSAPIProtocol/Measure;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/Measure;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, LLBSAPIProtocol/Measure;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LLBSAPIProtocol/Measure;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Measure;->setVMacs(Ljava/util/ArrayList;)V

    sget-object v0, LLBSAPIProtocol/Measure;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/Measure;->c:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Cell;

    invoke-direct {v0}, LLBSAPIProtocol/Cell;-><init>()V

    sget-object v1, LLBSAPIProtocol/Measure;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, LLBSAPIProtocol/Measure;->c:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Measure;->setVCells(Ljava/util/ArrayList;)V

    iget-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LLBSAPIProtocol/Measure;->setLTime(J)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Measure;->setStrExtraInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final setLTime(J)V
    .locals 0

    iput-wide p1, p0, LLBSAPIProtocol/Measure;->lTime:J

    return-void
.end method

.method public final setStGps(LLBSAPIProtocol/GPS;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    return-void
.end method

.method public final setStrExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public final setVCells(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVMacs(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-object v0, p0, LLBSAPIProtocol/Measure;->stGps:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vMacs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LLBSAPIProtocol/Measure;->vCells:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-wide v0, p0, LLBSAPIProtocol/Measure;->lTime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/Measure;->strExtraInfo:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
