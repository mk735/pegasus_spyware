.class public Lcom/lenovo/safecenter/utils/BackUpContact;
.super Ljava/lang/Object;
.source "BackUpContact.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private static a(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "fis"    # Ljava/io/FileInputStream;

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 61
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 62
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "buffer":[B
    :goto_0
    return-object v2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backup()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 21
    const-string v1, "info"

    const-string v3, "in the contact backup"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->b:Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 24
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 26
    .local v6, "cur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 27
    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 28
    const-string v1, "lookup"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 30
    .local v11, "lookupKey":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v1, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 32
    .local v13, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 34
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v13, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 35
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v9

    .line 36
    .local v9, "fis":Ljava/io/FileInputStream;
    invoke-static {v9}, Lcom/lenovo/safecenter/utils/BackUpContact;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v12

    .line 38
    .local v12, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "str":Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v7

    .line 41
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v11    # "lookupKey":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->a:Landroid/content/Context;

    const-string v3, "Contacts.vcf"

    iget-object v4, p0, Lcom/lenovo/safecenter/utils/BackUpContact;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 47
    return-void

    .line 45
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
