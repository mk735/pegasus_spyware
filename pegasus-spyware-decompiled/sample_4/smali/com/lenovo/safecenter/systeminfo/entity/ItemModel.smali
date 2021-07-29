.class public Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;
.super Ljava/lang/Object;
.source "ItemModel.java"


# static fields
.field public static final ITEM_STYLE_HEADER:I = 0x0

.field public static final ITEM_STYLE_MIDDLE:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->b:I

    return-void
.end method


# virtual methods
.method public getHeaderLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getItemStyle()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->b:I

    return v0
.end method

.method public setHeaderLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setItemStyle(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->b:I

    .line 42
    return-void
.end method
