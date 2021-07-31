.class public Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;
.super Ljava/lang/Object;
.source "CallerlocQueryService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;->a:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;->b:Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;->b:Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;

    return-object v0
.end method


# virtual methods
.method public queryByAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 33
    const/4 v9, 0x0

    .line 35
    .local v9, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v2

    .line 39
    :cond_1
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getInstance()Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, " numdata "

    const-string v3, " area_code=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 43
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const-string v1, "province"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "city"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 49
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v9

    .line 52
    goto :goto_0
.end method

.method public queryByNumberSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "numberSegment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    .local v9, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v2

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 67
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 68
    sget-object v1, Lcom/lenovo/safecenter/systeminfo/service/CallerlocQueryService;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getInstance()Lcom/lenovo/safecenter/systeminfo/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/db/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, " numdata "

    const-string v3, " num_segment=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 76
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const-string v1, "province"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "city"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "carry"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 83
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v9

    .line 87
    goto :goto_0
.end method
