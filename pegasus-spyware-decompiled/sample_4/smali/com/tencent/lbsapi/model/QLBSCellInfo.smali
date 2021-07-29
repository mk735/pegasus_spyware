.class public Lcom/tencent/lbsapi/model/QLBSCellInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->b:I

    iput p2, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->a:I

    iput p3, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->c:I

    iput p4, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->d:I

    return-void
.end method


# virtual methods
.method public getCellid()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->d:I

    return v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->c:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->a:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->b:I

    return v0
.end method

.method public setCellid(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->d:I

    return-void
.end method

.method public setLac(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->c:I

    return-void
.end method

.method public setMcc(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->a:I

    return-void
.end method

.method public setMnc(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/model/QLBSCellInfo;->b:I

    return-void
.end method
