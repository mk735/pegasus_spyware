.class public Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;
.super Landroid/content/ContentProvider;
.source "AppinfoProvider.java"


# static fields
.field private static final a:Landroid/content/UriMatcher;


# instance fields
.field private b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->a:Landroid/content/UriMatcher;

    .line 21
    sget-object v0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.antivirus.AppinfoProvider"

    const-string v2, "appinfo"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    sget-object v0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.antivirus.AppinfoProvider"

    const-string v2, "appinfo/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    sget-object v0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.lenovo.antivirus.AppinfoProvider"

    const-string v2, "check"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/appinfo"

    .line 36
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/appinfo"

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 45
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->b:Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/lenovo/safecenter/antivirus/support/AppinfoProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :pswitch_1
    const-string v1, "appinfo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 50
    :pswitch_2
    return-object v5

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
