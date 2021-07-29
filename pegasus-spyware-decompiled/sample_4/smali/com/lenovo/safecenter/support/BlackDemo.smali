.class public Lcom/lenovo/safecenter/support/BlackDemo;
.super Ljava/lang/Object;
.source "BlackDemo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/lenovo/safecenter/support/BlackDemo;->a:I

    .line 13
    iput-object p2, p0, Lcom/lenovo/safecenter/support/BlackDemo;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/lenovo/safecenter/support/BlackDemo;->c:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/support/BlackDemo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/safecenter/support/BlackDemo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/safecenter/support/BlackDemo;->a:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/safecenter/support/BlackDemo;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/safecenter/support/BlackDemo;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/lenovo/safecenter/support/BlackDemo;->a:I

    .line 25
    return-void
.end method
