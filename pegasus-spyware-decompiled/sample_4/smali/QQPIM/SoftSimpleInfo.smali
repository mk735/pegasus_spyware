.class public final LQQPIM/SoftSimpleInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static a:LQQPIM/SoftKey;

.field static b:[B

.field static final synthetic c:Z


# instance fields
.field public cn_fee:F

.field public cn_lfee:F

.field public downloadtimes:I

.field public expand:[B

.field public fee:F

.field public feetype:I

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public iFileID:I

.field public iProductID:I

.field public iSoftID:I

.field public lfee:F

.field public logourl:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public pageurl:Ljava/lang/String;

.field public pname:Ljava/lang/String;

.field public publishtime:Ljava/lang/String;

.field public safeType:I

.field public score:I

.field public softclass:Ljava/lang/String;

.field public softkey:LQQPIM/SoftKey;

.field public strSource:Ljava/lang/String;

.field public suser:I

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftSimpleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftSimpleInfo;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v3, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftSimpleInfo;->score:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    iput v2, p0, LQQPIM/SoftSimpleInfo;->fee:F

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    iput v2, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    iput v2, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    iput v2, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    iput-object v3, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    iput v1, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    iput v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    iput v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    iput v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    iput v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    iget v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    iput v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LQQPIM/SoftKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IIIIIIFLjava/lang/String;Ljava/lang/String;FFF[BILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->score:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->fee:F

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iput-object p2, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput p6, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    iput-object p7, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput p8, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    iput-object p9, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput p10, p0, LQQPIM/SoftSimpleInfo;->score:I

    iput p11, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iput p12, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iput p13, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    move/from16 v0, p14

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    move/from16 v0, p15

    iput v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    move/from16 v0, p16

    iput v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    move-object/from16 v0, p17

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    move/from16 v0, p20

    iput v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    move/from16 v0, p21

    iput v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    move-object/from16 v0, p22

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    move/from16 v0, p23

    iput v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    move-object/from16 v0, p24

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftSimpleInfo"

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

    sget-boolean v1, LQQPIM/SoftSimpleInfo;->c:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const-string v2, "softclass"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const-string v2, "nick_name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const-string v2, "logourl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const-string v2, "filesize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const-string v2, "publishtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const-string v2, "downloadtimes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const-string v2, "fileurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->score:I

    const-string v2, "score"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const-string v2, "suser"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const-string v2, "iProductID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const-string v2, "iSoftID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const-string v2, "iFileID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    const-string v2, "feetype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->fee:F

    const-string v2, "fee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    const-string v2, "pname"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    const-string v2, "pageurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    const-string v2, "lfee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    const-string v2, "cn_fee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    const-string v2, "cn_lfee"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    const-string v2, "expand"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    const-string v2, "safeType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    const-string v2, "strSource"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/SoftSimpleInfo;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->filesize:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->score:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->score:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->suser:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->iProductID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->iSoftID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->iFileID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->feetype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->fee:F

    iget v2, p1, LQQPIM/SoftSimpleInfo;->fee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    iget v2, p1, LQQPIM/SoftSimpleInfo;->lfee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    iget v2, p1, LQQPIM/SoftSimpleInfo;->cn_fee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    iget v2, p1, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->expand:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    iget v2, p1, LQQPIM/SoftSimpleInfo;->safeType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftSimpleInfo"

    return-object v0
.end method

.method public final getCn_fee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    return v0
.end method

.method public final getCn_lfee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    return v0
.end method

.method public final getDownloadtimes()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    return v0
.end method

.method public final getExpand()[B
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    return-object v0
.end method

.method public final getFee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    return v0
.end method

.method public final getFeetype()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    return v0
.end method

.method public final getFilesize()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    return v0
.end method

.method public final getFileurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIFileID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return v0
.end method

.method public final getIProductID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    return v0
.end method

.method public final getISoftID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    return v0
.end method

.method public final getLfee()F
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    return v0
.end method

.method public final getLogourl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    return-object v0
.end method

.method public final getSafeType()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    return v0
.end method

.method public final getScore()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    return v0
.end method

.method public final getSoftclass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final getStrSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuser()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    return-object v0
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
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/SoftSimpleInfo;->a:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/SoftSimpleInfo;->a:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/SoftSimpleInfo;->a:LQQPIM/SoftKey;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    sget-object v0, LQQPIM/SoftSimpleInfo;->b:[B

    if-nez v0, :cond_1

    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, LQQPIM/SoftSimpleInfo;->b:[B

    sget-object v0, LQQPIM/SoftSimpleInfo;->b:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    :cond_1
    sget-object v0, LQQPIM/SoftSimpleInfo;->b:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    iget v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    const/16 v0, 0x17

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    return-void
.end method

.method public final setCn_fee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    return-void
.end method

.method public final setCn_lfee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    return-void
.end method

.method public final setDownloadtimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    return-void
.end method

.method public final setExpand([B)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    return-void
.end method

.method public final setFee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->fee:F

    return-void
.end method

.method public final setFeetype(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    return-void
.end method

.method public final setFilesize(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    return-void
.end method

.method public final setFileurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    return-void
.end method

.method public final setIFileID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return-void
.end method

.method public final setIProductID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    return-void
.end method

.method public final setISoftID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    return-void
.end method

.method public final setLfee(F)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    return-void
.end method

.method public final setLogourl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    return-void
.end method

.method public final setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public final setPageurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    return-void
.end method

.method public final setPname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    return-void
.end method

.method public final setPublishtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    return-void
.end method

.method public final setSafeType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    return-void
.end method

.method public final setScore(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->score:I

    return-void
.end method

.method public final setSoftclass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final setStrSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    return-void
.end method

.method public final setSuser(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->feetype:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->fee:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    iget v0, p0, LQQPIM/SoftSimpleInfo;->lfee:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_fee:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->cn_lfee:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->expand:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_8
    iget v0, p0, LQQPIM/SoftSimpleInfo;->safeType:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method
