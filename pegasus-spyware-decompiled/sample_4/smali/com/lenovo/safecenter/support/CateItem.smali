.class public Lcom/lenovo/safecenter/support/CateItem;
.super Ljava/lang/Object;
.source "CateItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/support/CateItem;->e:I

    return-void
.end method


# virtual methods
.method public getDiscription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CateItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/safecenter/support/CateItem;->e:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/lenovo/safecenter/support/CateItem;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CateItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/lenovo/safecenter/support/CateItem;->b:I

    return v0
.end method

.method public setDiscription(Ljava/lang/String;)V
    .locals 0
    .param p1, "discription"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CateItem;->d:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lenovo/safecenter/support/CateItem;->e:I

    .line 38
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/lenovo/safecenter/support/CateItem;->a:I

    .line 10
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CateItem;->c:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/lenovo/safecenter/support/CateItem;->b:I

    .line 16
    return-void
.end method
