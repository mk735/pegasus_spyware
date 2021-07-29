.class public Lcom/lenovo/safecenter/systeminfo/entity/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final TABLE_NAME:Ljava/lang/String; = "category"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    .line 36
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 76
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .line 78
    .local v0, "other":Lcom/lenovo/safecenter/systeminfo/entity/Category;
    iget v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    iget v4, v0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 81
    iget-object v3, v0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 84
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 62
    iget v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    add-int/lit8 v0, v1, 0x1f

    .line 65
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 66
    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/Category;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
