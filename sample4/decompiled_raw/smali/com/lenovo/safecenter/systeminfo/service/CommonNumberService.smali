.class public Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;
.super Ljava/lang/Object;
.source "CommonNumberService.java"


# static fields
.field private static a:Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->a:Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->a:Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;

    return-object v0
.end method


# virtual methods
.method public findAllCategories()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v8, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/Category;>;"
    const/4 v9, 0x0

    .line 37
    .local v9, "category":Lcom/lenovo/safecenter/systeminfo/entity/Category;
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getInstance()Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "category"

    const-string v7, "_id asc "

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 41
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 42
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v9, Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .end local v9    # "category":Lcom/lenovo/safecenter/systeminfo/entity/Category;
    invoke-direct {v9}, Lcom/lenovo/safecenter/systeminfo/entity/Category;-><init>()V

    .line 44
    .restart local v9    # "category":Lcom/lenovo/safecenter/systeminfo/entity/Category;
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lenovo/safecenter/systeminfo/entity/Category;->setId(I)V

    .line 45
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lenovo/safecenter/systeminfo/entity/Category;->setName(Ljava/lang/String;)V

    .line 47
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    if-eqz v10, :cond_1

    .line 52
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    return-object v8
.end method

.method public findAllCategoriesAndCommonNumber()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v3, "commonNumbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;>;>;"
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->findAllCategories()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/Category;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/systeminfo/entity/Category;

    .line 79
    .local v2, "category":Lcom/lenovo/safecenter/systeminfo/entity/Category;
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->findCommonNumbers(Lcom/lenovo/safecenter/systeminfo/entity/Category;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "cNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;>;"
    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/entity/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v0    # "cNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;>;"
    .end local v2    # "category":Lcom/lenovo/safecenter/systeminfo/entity/Category;
    :cond_0
    return-object v3
.end method

.method public findCommonNumbers(I)Ljava/util/List;
    .locals 12
    .param p1, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 92
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v9, "commonNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;>;"
    const/4 v8, 0x0

    .line 95
    .local v8, "commonNumber":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getInstance()Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "commonnum cn join category c on cn.c_id=c._id"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "cn._id"

    aput-object v3, v2, v11

    const-string v3, "cn.name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "cn.phonenum"

    aput-object v4, v2, v3

    const-string v3, "cn.c_id=?"

    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const-string v7, "cn._id asc "

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 102
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 103
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v8, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    .end local v8    # "commonNumber":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    invoke-direct {v8}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;-><init>()V

    .line 106
    .restart local v8    # "commonNumber":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    const-string v1, ""

    invoke-virtual {v8, p1, v1}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->setCategory(ILjava/lang/String;)V

    .line 107
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->setId(I)V

    .line 108
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->setName(Ljava/lang/String;)V

    .line 109
    const-string v1, "phonenum"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v8}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10060"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    return-object v9
.end method

.method public findCommonNumbers(Lcom/lenovo/safecenter/systeminfo/entity/Category;)Ljava/util/List;
    .locals 1
    .param p1, "category"    # Lcom/lenovo/safecenter/systeminfo/entity/Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/safecenter/systeminfo/entity/Category;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/lenovo/safecenter/systeminfo/entity/Category;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/service/CommonNumberService;->findCommonNumbers(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findCommonNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "categoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
