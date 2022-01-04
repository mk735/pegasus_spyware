.class public Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
.super Ljava/lang/Object;
.source "SignCall.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 10
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->h:I

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "bType"    # I
    .param p4, "sType"    # I
    .param p5, "isUpload"    # I
    .param p6, "addTime"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 10
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->h:I

    .line 43
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->a:I

    .line 44
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->b:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->c:I

    .line 46
    iput p4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->d:I

    .line 47
    iput p5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 48
    iput-object p6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->g:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "sType"    # I
    .param p3, "totalCall"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 10
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->h:I

    .line 30
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->b:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->d:I

    .line 32
    iput p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "bType"    # I
    .param p3, "sType"    # I
    .param p4, "isUpload"    # I
    .param p5, "addTime"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 10
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->h:I

    .line 56
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->b:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->c:I

    .line 58
    iput p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->d:I

    .line 59
    iput p4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 60
    iput-object p5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->g:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCallDur()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->h:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->a:I

    return v0
.end method

.method public getIsUpload()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCall()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    return v0
.end method

.method public getbType()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->c:I

    return v0
.end method

.method public getsType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->d:I

    return v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "addTime"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->g:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCallDur(I)V
    .locals 0
    .param p1, "callDur"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->h:I

    .line 105
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->a:I

    .line 66
    return-void
.end method

.method public setIsUpload(I)V
    .locals 0
    .param p1, "isUpload"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->e:I

    .line 90
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTotalCall(I)V
    .locals 0
    .param p1, "totalCall"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->f:I

    .line 37
    return-void
.end method

.method public setbType(I)V
    .locals 0
    .param p1, "bType"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->c:I

    .line 78
    return-void
.end method

.method public setsType(I)V
    .locals 0
    .param p1, "sType"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->d:I

    .line 84
    return-void
.end method
