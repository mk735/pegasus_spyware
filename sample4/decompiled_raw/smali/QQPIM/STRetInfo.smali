.class public final LQQPIM/STRetInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic a:Z


# instance fields
.field public nExcess:I

.field public nLeft:I

.field public nPaMoney:I

.field public nPaNet:I

.field public nType:I

.field public nUsed:I

.field public ntime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/STRetInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/STRetInfo;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LQQPIM/STRetInfo;->nType:I

    iput v0, p0, LQQPIM/STRetInfo;->nLeft:I

    iput v0, p0, LQQPIM/STRetInfo;->nUsed:I

    iput v0, p0, LQQPIM/STRetInfo;->nExcess:I

    iput v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    iput v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iput v0, p0, LQQPIM/STRetInfo;->ntime:I

    iget v0, p0, LQQPIM/STRetInfo;->nType:I

    iput v0, p0, LQQPIM/STRetInfo;->nType:I

    iget v0, p0, LQQPIM/STRetInfo;->nLeft:I

    iput v0, p0, LQQPIM/STRetInfo;->nLeft:I

    iget v0, p0, LQQPIM/STRetInfo;->nUsed:I

    iput v0, p0, LQQPIM/STRetInfo;->nUsed:I

    iget v0, p0, LQQPIM/STRetInfo;->nExcess:I

    iput v0, p0, LQQPIM/STRetInfo;->nExcess:I

    iget v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    iput v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    iget v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iput v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iget v0, p0, LQQPIM/STRetInfo;->ntime:I

    iput v0, p0, LQQPIM/STRetInfo;->ntime:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LQQPIM/STRetInfo;->nType:I

    iput v0, p0, LQQPIM/STRetInfo;->nLeft:I

    iput v0, p0, LQQPIM/STRetInfo;->nUsed:I

    iput v0, p0, LQQPIM/STRetInfo;->nExcess:I

    iput v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    iput v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iput v0, p0, LQQPIM/STRetInfo;->ntime:I

    iput p1, p0, LQQPIM/STRetInfo;->nType:I

    iput p2, p0, LQQPIM/STRetInfo;->nLeft:I

    iput p3, p0, LQQPIM/STRetInfo;->nUsed:I

    iput p4, p0, LQQPIM/STRetInfo;->nExcess:I

    iput p5, p0, LQQPIM/STRetInfo;->nPaNet:I

    iput p6, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iput p7, p0, LQQPIM/STRetInfo;->ntime:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STRetInfo"

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

    sget-boolean v1, LQQPIM/STRetInfo;->a:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/STRetInfo;->nType:I

    const-string v2, "nType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STRetInfo;->nLeft:I

    const-string v2, "nLeft"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STRetInfo;->nUsed:I

    const-string v2, "nUsed"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STRetInfo;->nExcess:I

    const-string v2, "nExcess"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STRetInfo;->nPaNet:I

    const-string v2, "nPaNet"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STRetInfo;->nPaMoney:I

    const-string v2, "nPaMoney"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STRetInfo;->ntime:I

    const-string v2, "ntime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/STRetInfo;

    iget v1, p0, LQQPIM/STRetInfo;->nType:I

    iget v2, p1, LQQPIM/STRetInfo;->nType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STRetInfo;->nLeft:I

    iget v2, p1, LQQPIM/STRetInfo;->nLeft:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STRetInfo;->nUsed:I

    iget v2, p1, LQQPIM/STRetInfo;->nUsed:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STRetInfo;->nExcess:I

    iget v2, p1, LQQPIM/STRetInfo;->nExcess:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STRetInfo;->nPaNet:I

    iget v2, p1, LQQPIM/STRetInfo;->nPaNet:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iget v2, p1, LQQPIM/STRetInfo;->nPaMoney:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STRetInfo;->ntime:I

    iget v2, p1, LQQPIM/STRetInfo;->ntime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STRetInfo"

    return-object v0
.end method

.method public final getNExcess()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->nExcess:I

    return v0
.end method

.method public final getNLeft()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->nLeft:I

    return v0
.end method

.method public final getNPaMoney()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    return v0
.end method

.method public final getNPaNet()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    return v0
.end method

.method public final getNType()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->nType:I

    return v0
.end method

.method public final getNUsed()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->nUsed:I

    return v0
.end method

.method public final getNtime()I
    .locals 1

    iget v0, p0, LQQPIM/STRetInfo;->ntime:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/STRetInfo;->nType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->nType:I

    iget v0, p0, LQQPIM/STRetInfo;->nLeft:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->nLeft:I

    iget v0, p0, LQQPIM/STRetInfo;->nUsed:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->nUsed:I

    iget v0, p0, LQQPIM/STRetInfo;->nExcess:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->nExcess:I

    iget v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    iget v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    iget v0, p0, LQQPIM/STRetInfo;->ntime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STRetInfo;->ntime:I

    return-void
.end method

.method public final setNExcess(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->nExcess:I

    return-void
.end method

.method public final setNLeft(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->nLeft:I

    return-void
.end method

.method public final setNPaMoney(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->nPaMoney:I

    return-void
.end method

.method public final setNPaNet(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->nPaNet:I

    return-void
.end method

.method public final setNType(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->nType:I

    return-void
.end method

.method public final setNUsed(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->nUsed:I

    return-void
.end method

.method public final setNtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/STRetInfo;->ntime:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/STRetInfo;->nType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STRetInfo;->nLeft:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STRetInfo;->nUsed:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STRetInfo;->nExcess:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STRetInfo;->nPaNet:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STRetInfo;->nPaMoney:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STRetInfo;->ntime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
