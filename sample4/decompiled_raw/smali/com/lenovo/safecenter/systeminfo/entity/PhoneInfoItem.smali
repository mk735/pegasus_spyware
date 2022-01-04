.class public Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;
.super Ljava/lang/Object;
.source "PhoneInfoItem.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "iconRes"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->a:I

    .line 15
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->b:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->a:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setIconRes(I)V
    .locals 0
    .param p1, "iconRes"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->a:I

    .line 23
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
