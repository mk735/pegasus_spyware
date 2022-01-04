.class public Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
.super Ljava/lang/Object;
.source "BlackInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    .line 10
    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->f:Z

    .line 11
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->g:I

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isUpload"    # I

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    .line 10
    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->f:Z

    .line 11
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->g:I

    .line 26
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->a:I

    .line 27
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->c:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->d:I

    .line 30
    iput p5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isUpload"    # I

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    .line 10
    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->f:Z

    .line 11
    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->g:I

    .line 17
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->c:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->d:I

    .line 20
    iput p4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    .line 21
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->a:I

    return v0
.end method

.method public getIntercepttype()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->g:I

    return v0
.end method

.method public getIsUpload()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRealnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->d:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->f:Z

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->a:I

    .line 39
    return-void
.end method

.method public setIntercepttype(I)V
    .locals 0
    .param p1, "intercepttype"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->g:I

    .line 81
    return-void
.end method

.method public setIsUpload(I)V
    .locals 0
    .param p1, "isUpload"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->e:I

    .line 64
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setRealnumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "realnumber"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->h:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->f:Z

    .line 72
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->d:I

    .line 58
    return-void
.end method
