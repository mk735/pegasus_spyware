.class public Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->g:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "callType"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->g:Z

    .line 19
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->b:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->c:I

    .line 22
    iput-object p4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->d:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->e:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->g:Z

    .line 29
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->b:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->c:I

    .line 32
    iput-object p4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->d:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->f:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getCallType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->e:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRealnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->c:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->g:Z

    return v0
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "callType"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->e:I

    .line 74
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->d:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRealnumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "realnumber"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->h:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->g:Z

    .line 90
    return-void
.end method

.method public setSmsContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->c:I

    .line 58
    return-void
.end method
