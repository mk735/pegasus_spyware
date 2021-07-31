.class public Lcom/lenovo/safecenter/support/PermInfo;
.super Ljava/lang/Object;
.source "PermInfo.java"


# instance fields
.field public description_cn:Ljava/lang/String;

.field public description_en:Ljava/lang/String;

.field public description_tw:Ljava/lang/String;

.field public isDisable:I

.field public permName:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/support/PermInfo;->isDisable:I

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "isDisable"    # I
    .param p4, "descriptionCn"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "descriptionEn"    # Ljava/lang/String;
    .param p7, "descriptionTw"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/support/PermInfo;->isDisable:I

    .line 18
    iput p1, p0, Lcom/lenovo/safecenter/support/PermInfo;->uid:I

    .line 19
    iput-object p2, p0, Lcom/lenovo/safecenter/support/PermInfo;->permName:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/lenovo/safecenter/support/PermInfo;->isDisable:I

    .line 21
    iput-object p4, p0, Lcom/lenovo/safecenter/support/PermInfo;->description_cn:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/lenovo/safecenter/support/PermInfo;->type:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/lenovo/safecenter/support/PermInfo;->description_en:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/lenovo/safecenter/support/PermInfo;->description_tw:Ljava/lang/String;

    .line 25
    return-void
.end method
