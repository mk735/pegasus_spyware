.class public Lcom/lenovo/safecenter/support/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field public noreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/Contract;->h:Z

    .line 16
    iput v0, p0, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "callType"    # I

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/Contract;->h:Z

    .line 16
    iput v0, p0, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    .line 25
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->b:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/lenovo/safecenter/support/Contract;->c:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/lenovo/safecenter/support/Contract;->d:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/lenovo/safecenter/support/Contract;->e:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "smstype"    # I
    .param p5, "smsContent"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/Contract;->h:Z

    .line 16
    iput v0, p0, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    .line 43
    iput p4, p0, Lcom/lenovo/safecenter/support/Contract;->f:I

    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->b:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/lenovo/safecenter/support/Contract;->c:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/lenovo/safecenter/support/Contract;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/lenovo/safecenter/support/Contract;->g:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "smsContent"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/Contract;->h:Z

    .line 16
    iput v0, p0, Lcom/lenovo/safecenter/support/Contract;->noreadCount:I

    .line 35
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/lenovo/safecenter/support/Contract;->c:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/lenovo/safecenter/support/Contract;->d:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/lenovo/safecenter/support/Contract;->g:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCallType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/lenovo/safecenter/support/Contract;->e:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/lenovo/safecenter/support/Contract;->j:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/support/Contract;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFromtype()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/lenovo/safecenter/support/Contract;->i:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/lenovo/safecenter/support/Contract;->a:I

    return v0
.end method

.method public getIsRead()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/lenovo/safecenter/support/Contract;->k:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/safecenter/support/Contract;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/safecenter/support/Contract;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRealnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/support/Contract;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/support/Contract;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSmstype()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lenovo/safecenter/support/Contract;->f:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lenovo/safecenter/support/Contract;->h:Z

    return v0
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "callType"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/lenovo/safecenter/support/Contract;->e:I

    .line 80
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/lenovo/safecenter/support/Contract;->j:I

    .line 113
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFromtype(I)V
    .locals 0
    .param p1, "fromtype"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/lenovo/safecenter/support/Contract;->i:I

    .line 137
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/lenovo/safecenter/support/Contract;->a:I

    .line 121
    return-void
.end method

.method public setIsRead(I)V
    .locals 0
    .param p1, "isRead"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/lenovo/safecenter/support/Contract;->k:I

    .line 129
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRealnumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "realnumber"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->l:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/lenovo/safecenter/support/Contract;->h:Z

    .line 105
    return-void
.end method

.method public setSmsContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/safecenter/support/Contract;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSmstype(I)V
    .locals 0
    .param p1, "smstype"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/lenovo/safecenter/support/Contract;->f:I

    .line 97
    return-void
.end method
