.class public Lcom/lenovo/safecenter/mmsutils/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTENT_MIME_TYPE_PUSH_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_MIME_TYPE_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final CONTENT_MIME_TYPE_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ERR_TAG:Ljava/lang/String; = "PushReceiver.java"

.field public static final EXP:Ljava/lang/String; = "exp"

.field public static final M_CLS:Ljava/lang/String; = "m_cls"

.field public static final M_SIZE:Ljava/lang/String; = "m_size"

.field public static final M_TYPE:Ljava/lang/String; = "m_type"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SUB:Ljava/lang/String; = "sub"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TAG:Ljava/lang/String; = "Push Receiver"

.field public static final TR_ID:Ljava/lang/String; = "tr_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final V:Ljava/lang/String; = "v"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static recoverData(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "recover_values"    # Landroid/content/ContentValues;

    .prologue
    .line 193
    const/4 v6, 0x0

    .line 195
    .local v6, "data":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 196
    .local v11, "thread_id":I
    if-eqz p1, :cond_3

    .line 198
    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v12, "values":Landroid/content/ContentValues;
    const-string v0, "address"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "type"

    const-string v1, "2"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "read"

    const-string v1, "1"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "body"

    const-string v1, "this is a test"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "date"

    const v1, 0x4f84b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v0, "person"

    const-string v1, "test"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 207
    .local v10, "sms_uri":Landroid/net/Uri;
    if-eqz v10, :cond_3

    .line 208
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "sms_id":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, "sms_cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto :goto_0

    .line 222
    :cond_0
    if-eqz v8, :cond_1

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    if-lez v11, :cond_2

    .line 227
    const-string v0, "thread_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 231
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v8    # "sms_cursor":Landroid/database/Cursor;
    .end local v9    # "sms_id":Ljava/lang/String;
    .end local v10    # "sms_uri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-object v6

    .line 236
    :catch_0
    move-exception v7

    .line 237
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "test"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, " date =5211314"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "action":Ljava/lang/String;
    const-string v26, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 42
    const-string v26, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 44
    .local v16, "pushData":[B
    new-instance v13, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;-><init>([B)V

    .line 45
    .local v13, "parser":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;
    const-string v26, "application/vnd.wap.slc"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 50
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->parse(I)Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    move-result-object v17

    .line 51
    .local v17, "pushMsg":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;
    sget v26, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_HREF:I

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->getAttributeValueString(I)Ljava/lang/String;

    .line 189
    .end local v3    # "action":Ljava/lang/String;
    .end local v13    # "parser":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;
    .end local v16    # "pushData":[B
    .end local v17    # "pushMsg":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v13    # "parser":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;
    .restart local v16    # "pushData":[B
    :cond_1
    const-string v26, "application/vnd.wap.sic"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 54
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;->parse(I)Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;

    move-result-object v17

    .line 55
    .restart local v17    # "pushMsg":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;
    sget v26, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_TEXT:I

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->getAttributeValueString(I)Ljava/lang/String;

    move-result-object v21

    .line 57
    .local v21, "text":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_HREF:I

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->getAttributeValueString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v3    # "action":Ljava/lang/String;
    .end local v13    # "parser":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;
    .end local v16    # "pushData":[B
    .end local v17    # "pushMsg":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;
    .end local v21    # "text":Ljava/lang/String;
    :catch_0
    move-exception v26

    goto :goto_0

    .line 59
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v13    # "parser":Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushParser;
    .restart local v16    # "pushData":[B
    :cond_2
    const-string v26, "application/vnd.wap.mms-message"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 61
    new-instance v14, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;-><init>([B)V

    .line 62
    .local v14, "parsers":Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;
    invoke-virtual {v14}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parse()Lcom/lenovo/safecenter/mmsutils/GenericPdu;

    move-result-object v15

    .line 72
    .local v15, "pdu":Lcom/lenovo/safecenter/mmsutils/GenericPdu;
    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->getFrom()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v24

    .line 73
    .local v24, "val_from":Ljava/lang/String;
    const/4 v8, 0x0

    .line 74
    .local v8, "location":Ljava/lang/String;
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "phone_number=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v25, "values":Landroid/content/ContentValues;
    const-string v26, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v26, "read"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/GenericPdu;->getMessageType()I

    move-result v26

    packed-switch v26, :pswitch_data_0

    goto/16 :goto_0

    .line 87
    :pswitch_0
    move-object v0, v15

    check-cast v0, Lcom/lenovo/safecenter/mmsutils/NotificationInd;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v12, "npdu":Lcom/lenovo/safecenter/mmsutils/NotificationInd;
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getContentLocation()[B

    move-result-object v26

    const-string v27, "UTF-8"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .end local v8    # "location":Ljava/lang/String;
    .local v9, "location":Ljava/lang/String;
    :try_start_2
    const-string v26, "ct_l"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "body=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :try_start_3
    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getSubject()Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    .line 104
    .local v20, "subject":Ljava/lang/String;
    const-string v26, "sub"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sub=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    .end local v20    # "subject":Ljava/lang/String;
    :goto_1
    :try_start_4
    new-instance v22, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getTransactionId()[B

    move-result-object v26

    const-string v27, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 116
    .local v22, "transactionId":Ljava/lang/String;
    const-string v26, "tr_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "tr_id=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    .end local v22    # "transactionId":Ljava/lang/String;
    :goto_2
    :try_start_5
    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getMmsVersion()I

    move-result v23

    .line 126
    .local v23, "v":I
    const-string v26, "v"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "v=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 134
    .end local v23    # "v":I
    :goto_3
    :try_start_6
    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getExpiry()J

    move-result-wide v6

    .line 135
    .local v6, "exp":J
    const-string v26, "exp"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "exp=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 143
    .end local v6    # "exp":J
    :goto_4
    :try_start_7
    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getMessageSize()J

    move-result-wide v18

    .line 144
    .local v18, "size":J
    const-string v26, "m_size"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "m_size=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 152
    .end local v18    # "size":J
    :goto_5
    :try_start_8
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getMessageClass()[B

    move-result-object v26

    const-string v27, "UTF-8"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 153
    .local v10, "m_cls":Ljava/lang/String;
    const-string v26, "m_cls"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "m_cls=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 162
    .end local v10    # "m_cls":Ljava/lang/String;
    :goto_6
    :try_start_9
    invoke-virtual {v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;->getMessageType()I

    move-result v11

    .line 163
    .local v11, "messageType":I
    const-string v26, "m_type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v26, "messgae"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "m_type=="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 170
    .end local v11    # "messageType":I
    :goto_7
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "guest_mode_on"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/PushReceiver;->abortBroadcast()V

    .line 173
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/mmsutils/PushReceiver;->recoverData(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    move-object v8, v9

    .end local v9    # "location":Ljava/lang/String;
    .restart local v8    # "location":Ljava/lang/String;
    goto/16 :goto_0

    .line 96
    :catch_1
    move-exception v4

    .line 98
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :goto_8
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 107
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "location":Ljava/lang/String;
    .restart local v9    # "location":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 109
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 118
    .end local v5    # "e1":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 120
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 128
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 137
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 139
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 146
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 148
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 155
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 157
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    .line 165
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_8
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_7

    .line 96
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    move-object v8, v9

    .end local v9    # "location":Ljava/lang/String;
    .restart local v8    # "location":Ljava/lang/String;
    goto :goto_8

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method
