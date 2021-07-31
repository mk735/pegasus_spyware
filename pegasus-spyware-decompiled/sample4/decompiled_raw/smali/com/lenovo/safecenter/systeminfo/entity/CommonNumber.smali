.class public Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
.super Ljava/lang/Object;
.source "CommonNumber.java"


# static fields
.field public static final COLUMN_CATEGORY_ID:Ljava/lang/String; = "c_id"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PHONENUMBER:Ljava/lang/String; = "phonenum"

.field public static final TABLE_NAME:Ljava/lang/String; = "commonnum"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/lenovo/safecenter/systeminfo/entity/Category;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    .line 64
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->b:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "categoryId"    # I
    .param p5, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/Category;

    invoke-direct {v0, p4, p5}, Lcom/lenovo/safecenter/systeminfo/entity/Category;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->d:Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/safecenter/systeminfo/entity/Category;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "category"    # Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p4, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->d:Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 127
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    .line 129
    .local v0, "other":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    iget v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    iget v4, v0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 132
    iget-object v3, v0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 135
    goto :goto_0
.end method

.method public getCategory()Lcom/lenovo/safecenter/systeminfo/entity/Category;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->d:Lcom/lenovo/safecenter/systeminfo/entity/Category;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 112
    iget v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    add-int/lit8 v0, v1, 0x1f

    .line 115
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 117
    return v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setCategory(ILjava/lang/String;)V
    .locals 1
    .param p1, "categoryId"    # I
    .param p2, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/Category;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/safecenter/systeminfo/entity/Category;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->d:Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .line 102
    return-void
.end method

.method public setCategory(Lcom/lenovo/safecenter/systeminfo/entity/Category;)V
    .locals 0
    .param p1, "category"    # Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->d:Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .line 98
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonNumber [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->d:Lcom/lenovo/safecenter/systeminfo/entity/Category;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
