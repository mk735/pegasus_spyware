.class public Lcom/lenovo/safecenter/utils/BackUpSms;
.super Ljava/lang/Object;
.source "BackUpSms.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/BackUpSms;->a:Landroid/content/ContentResolver;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/BackUpSms;->c:Ljava/lang/StringBuilder;

    .line 28
    return-void
.end method


# virtual methods
.method public backup()V
    .locals 27

    .prologue
    .line 30
    const-string v1, "info"

    const-string v4, "in the smsbackup"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v1, 0x6

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "address"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "person"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "body"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "date"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "type"

    aput-object v4, v3, v1

    .line 36
    .local v3, "projection":[Ljava/lang/String;
    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 37
    .local v2, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->a:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 39
    .local v12, "cur":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const/16 v19, 0x0

    .line 46
    .local v19, "personName":Ljava/lang/String;
    const-string v1, "address"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 47
    .local v21, "phoneNumberColumn":I
    const-string v1, "body"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 48
    .local v23, "smsbodyColumn":I
    const-string v1, "date"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 49
    .local v15, "dateColumn":I
    const-string v1, "type"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 53
    .local v25, "typeColumn":I
    :cond_0
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 54
    .local v20, "phoneNumber":Ljava/lang/String;
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 56
    .local v22, "smsbody":Ljava/lang/String;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v16, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/util/Date;

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v13, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 59
    .local v13, "d":Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, "date":Ljava/lang/String;
    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 62
    .local v26, "typeId":I
    const/4 v1, 0x1

    move/from16 v0, v26

    if-ne v0, v1, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v4, 0x7f0d00c5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 71
    .local v24, "type":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "display_name"

    aput-object v4, v6, v1

    .line 72
    .local v6, "projections":[Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 73
    .local v5, "uri1":Landroid/net/Uri;
    if-nez v20, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v4, 0x7f0d00c7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 103
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->c:Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v19, v4, v7

    const/4 v7, 0x1

    aput-object v20, v4, v7

    const/4 v7, 0x2

    aput-object v24, v4, v7

    const/4 v7, 0x3

    aput-object v14, v4, v7

    const/4 v7, 0x4

    aput-object v22, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v9, 0x7f0d00c2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v9, 0x7f0d00c3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v9, 0x7f0d00c4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v4, v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\r\n\r\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    .end local v5    # "uri1":Landroid/net/Uri;
    .end local v6    # "projections":[Ljava/lang/String;
    .end local v13    # "d":Ljava/util/Date;
    .end local v14    # "date":Ljava/lang/String;
    .end local v15    # "dateColumn":I
    .end local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v19    # "personName":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v21    # "phoneNumberColumn":I
    .end local v22    # "smsbody":Ljava/lang/String;
    .end local v23    # "smsbodyColumn":I
    .end local v24    # "type":Ljava/lang/String;
    .end local v25    # "typeColumn":I
    .end local v26    # "typeId":I
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v12    # "cur":Landroid/database/Cursor;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const-string v7, "smsbackup.txt"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    new-instance v7, Ljava/io/OutputStreamWriter;

    const-string v8, "gb2312"

    invoke-direct {v7, v4, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/Writer;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_3
    return-void

    .line 64
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v12    # "cur":Landroid/database/Cursor;
    .restart local v13    # "d":Ljava/util/Date;
    .restart local v14    # "date":Ljava/lang/String;
    .restart local v15    # "dateColumn":I
    .restart local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v19    # "personName":Ljava/lang/String;
    .restart local v20    # "phoneNumber":Ljava/lang/String;
    .restart local v21    # "phoneNumberColumn":I
    .restart local v22    # "smsbody":Ljava/lang/String;
    .restart local v23    # "smsbodyColumn":I
    .restart local v25    # "typeColumn":I
    .restart local v26    # "typeId":I
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, v26

    if-ne v0, v1, :cond_3

    .line 65
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v4, 0x7f0d00c6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "type":Ljava/lang/String;
    goto/16 :goto_0

    .line 67
    .end local v24    # "type":Ljava/lang/String;
    :cond_3
    const-string v24, ""

    .restart local v24    # "type":Ljava/lang/String;
    goto/16 :goto_0

    .line 76
    .restart local v5    # "uri1":Landroid/net/Uri;
    .restart local v6    # "projections":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->a:Landroid/content/ContentResolver;

    const-string v7, "data1=?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v20, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 79
    .local v10, "c1":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 80
    const-string v1, "+86"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    const-string v1, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldNumber:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 83
    .local v18, "newNumber":Ljava/lang/String;
    const-string v1, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newNumber:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->a:Landroid/content/ContentResolver;

    const-string v7, "data1=?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v18, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 87
    .local v11, "c2":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v4, 0x7f0d00c7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 93
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v11    # "c2":Landroid/database/Cursor;
    .end local v18    # "newNumber":Ljava/lang/String;
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 113
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "uri1":Landroid/net/Uri;
    .end local v6    # "projections":[Ljava/lang/String;
    .end local v10    # "c1":Landroid/database/Cursor;
    .end local v12    # "cur":Landroid/database/Cursor;
    .end local v13    # "d":Ljava/util/Date;
    .end local v14    # "date":Ljava/lang/String;
    .end local v15    # "dateColumn":I
    .end local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v19    # "personName":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v21    # "phoneNumberColumn":I
    .end local v22    # "smsbody":Ljava/lang/String;
    .end local v23    # "smsbodyColumn":I
    .end local v24    # "type":Ljava/lang/String;
    .end local v25    # "typeColumn":I
    .end local v26    # "typeId":I
    :catch_0
    move-exception v17

    .line 114
    .local v17, "ex":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteException in getSmsInPhone"

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 90
    .end local v17    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v5    # "uri1":Landroid/net/Uri;
    .restart local v6    # "projections":[Ljava/lang/String;
    .restart local v10    # "c1":Landroid/database/Cursor;
    .restart local v11    # "c2":Landroid/database/Cursor;
    .restart local v12    # "cur":Landroid/database/Cursor;
    .restart local v13    # "d":Ljava/util/Date;
    .restart local v14    # "date":Ljava/lang/String;
    .restart local v15    # "dateColumn":I
    .restart local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v18    # "newNumber":Ljava/lang/String;
    .restart local v19    # "personName":Ljava/lang/String;
    .restart local v20    # "phoneNumber":Ljava/lang/String;
    .restart local v21    # "phoneNumberColumn":I
    .restart local v22    # "smsbody":Ljava/lang/String;
    .restart local v23    # "smsbodyColumn":I
    .restart local v24    # "type":Ljava/lang/String;
    .restart local v25    # "typeColumn":I
    .restart local v26    # "typeId":I
    :cond_5
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 91
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 95
    .end local v11    # "c2":Landroid/database/Cursor;
    .end local v18    # "newNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/utils/BackUpSms;->b:Landroid/content/Context;

    const v4, 0x7f0d00c7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    .line 98
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v19

    goto :goto_5

    .line 116
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "uri1":Landroid/net/Uri;
    .end local v6    # "projections":[Ljava/lang/String;
    .end local v10    # "c1":Landroid/database/Cursor;
    .end local v12    # "cur":Landroid/database/Cursor;
    .end local v13    # "d":Ljava/util/Date;
    .end local v14    # "date":Ljava/lang/String;
    .end local v15    # "dateColumn":I
    .end local v16    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v19    # "personName":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v21    # "phoneNumberColumn":I
    .end local v22    # "smsbody":Ljava/lang/String;
    .end local v23    # "smsbodyColumn":I
    .end local v24    # "type":Ljava/lang/String;
    .end local v25    # "typeColumn":I
    .end local v26    # "typeId":I
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method
