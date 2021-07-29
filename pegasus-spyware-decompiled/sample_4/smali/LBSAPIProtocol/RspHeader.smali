.class public final LLBSAPIProtocol/RspHeader;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic a:Z


# instance fields
.field public eResult:I

.field public shVersion:S

.field public strErrMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/RspHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/RspHeader;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    iget-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    iput-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    iget v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    iput v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    iget-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    iput-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    iput-short p1, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    iput p2, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    iput-object p3, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.RspHeader"

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

    sget-boolean v1, LLBSAPIProtocol/RspHeader;->a:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-short v1, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    const-string v2, "shVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    const-string v2, "eResult"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    const-string v2, "strErrMsg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/RspHeader;

    iget-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    iget-short v1, p1, LLBSAPIProtocol/RspHeader;->shVersion:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    iget v1, p1, LLBSAPIProtocol/RspHeader;->eResult:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

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

    const-string v0, "LBSAPIProtocol.RspHeader"

    return-object v0
.end method

.method public final getEResult()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    return v0
.end method

.method public final getShVersion()S
    .locals 1

    iget-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    return v0
.end method

.method public final getStrErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    iget v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    return-void
.end method

.method public final setEResult(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    return-void
.end method

.method public final setShVersion(S)V
    .locals 0

    iput-short p1, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    return-void
.end method

.method public final setStrErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LLBSAPIProtocol/RspHeader;->shVersion:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LLBSAPIProtocol/RspHeader;->eResult:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/RspHeader;->strErrMsg:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
