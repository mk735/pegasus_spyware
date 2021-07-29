.class public Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;
.super Ljava/lang/Object;
.source "TyuMMSParser.java"


# static fields
.field static final synthetic a:Z

.field private static e:[B

.field private static f:[B


# instance fields
.field private b:Ljava/io/ByteArrayInputStream;

.field private c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

.field private d:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-class v0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    .line 58
    sput-object v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->e:[B

    .line 63
    sput-object v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->f:[B

    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pduDataStream"    # [B

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b:Ljava/io/ByteArrayInputStream;

    .line 48
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .line 53
    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->d:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b:Ljava/io/ByteArrayInputStream;

    .line 75
    return-void
.end method

.method private static a(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;
    .locals 28
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 165
    if-nez p0, :cond_1

    .line 166
    const/4 v8, 0x0

    .line 687
    :cond_0
    :goto_0
    return-object v8

    .line 169
    :cond_1
    const/4 v9, 0x1

    .line 170
    .local v9, "keepParsing":Z
    new-instance v8, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v8}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;-><init>()V

    .line 172
    .local v8, "headers":Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;
    :cond_2
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v24

    if-lez v24, :cond_0

    .line 173
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 176
    .local v7, "headerField":I
    const/16 v24, 0x20

    move/from16 v0, v24

    if-lt v7, v0, :cond_3

    const/16 v24, 0x7f

    move/from16 v0, v24

    if-gt v7, v0, :cond_3

    .line 177
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 178
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    goto :goto_1

    .line 185
    :cond_3
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 359
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v21

    .line 361
    .local v21, "value":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-eqz v21, :cond_2

    .line 362
    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getTextString()[B

    move-result-object v2

    .line 363
    .local v2, "address":[B
    if-eqz v2, :cond_5

    .line 364
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 365
    .local v17, "str":Ljava/lang/String;
    const-string v24, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 366
    .local v4, "endIndex":I
    if-lez v4, :cond_4

    .line 367
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 370
    :cond_4
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->setTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b

    .line 378
    .end local v4    # "endIndex":I
    .end local v17    # "str":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->appendEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_c

    goto :goto_1

    .line 380
    :catch_0
    move-exception v24

    goto :goto_1

    .line 188
    .end local v2    # "address":[B
    .end local v21    # "value":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 189
    .local v13, "messageType":I
    packed-switch v13, :pswitch_data_1

    .line 209
    :try_start_2
    invoke-virtual {v8, v13, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V
    :try_end_2
    .catch Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 211
    :catch_1
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Set invalid Octet value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " into the header filed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 206
    :pswitch_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 215
    :catch_2
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Octet header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 249
    .end local v13    # "messageType":I
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v21

    .line 252
    .local v21, "value":I
    :try_start_3
    move/from16 v0, v21

    invoke-virtual {v8, v0, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V
    :try_end_3
    .catch Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 254
    :catch_3
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Set invalid Octet value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " into the header filed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 258
    :catch_4
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Octet header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 270
    .end local v21    # "value":I
    :pswitch_5
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v21

    .line 271
    .local v21, "value":J
    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 273
    .end local v21    # "value":J
    :catch_5
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Long-Integer header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 285
    :pswitch_6
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v21

    .line 286
    .restart local v21    # "value":J
    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 288
    .end local v21    # "value":J
    :catch_6
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Long-Integer header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 315
    :pswitch_7
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v21

    .line 316
    .local v21, "value":[B
    if-eqz v21, :cond_2

    .line 318
    :try_start_6
    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_1

    .line 320
    :catch_7
    move-exception v24

    goto/16 :goto_1

    .line 322
    :catch_8
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Text-String header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 339
    .end local v21    # "value":[B
    :pswitch_8
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v21

    .line 341
    .local v21, "value":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-eqz v21, :cond_2

    .line 343
    :try_start_7
    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_1

    .line 345
    :catch_9
    move-exception v24

    goto/16 :goto_1

    .line 347
    :catch_a
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 372
    .restart local v2    # "address":[B
    .restart local v4    # "endIndex":I
    .restart local v17    # "str":Ljava/lang/String;
    :catch_b
    move-exception v24

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 382
    .end local v4    # "endIndex":I
    .end local v17    # "str":Ljava/lang/String;
    :catch_c
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 396
    .end local v2    # "address":[B
    .end local v21    # "value":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :pswitch_9
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 399
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v20

    .line 404
    .local v20, "token":I
    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v18

    .line 409
    .local v18, "timeValue":J
    const/16 v24, 0x81

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    add-long v18, v18, v24

    .line 416
    :cond_6
    :try_start_9
    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1, v7}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 418
    :catch_d
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Long-Integer header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 406
    .end local v18    # "timeValue":J
    :catch_e
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Long-Integer header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 429
    .end local v20    # "token":I
    :pswitch_a
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 433
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 436
    .local v6, "fromToken":I
    const/16 v24, 0x80

    move/from16 v0, v24

    if-ne v0, v6, :cond_9

    .line 438
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v5

    .line 439
    .local v5, "from":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-eqz v5, :cond_8

    .line 440
    invoke-virtual {v5}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->getTextString()[B

    move-result-object v2

    .line 441
    .restart local v2    # "address":[B
    if-eqz v2, :cond_8

    .line 442
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 443
    .restart local v17    # "str":Ljava/lang/String;
    const-string v24, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 444
    .restart local v4    # "endIndex":I
    if-lez v4, :cond_7

    .line 445
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 448
    :cond_7
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 466
    .end local v2    # "address":[B
    .end local v4    # "endIndex":I
    .end local v17    # "str":Ljava/lang/String;
    :cond_8
    :goto_2
    const/16 v24, 0x89

    :try_start_b
    move/from16 v0, v24

    invoke-virtual {v8, v5, v0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 468
    :catch_f
    move-exception v24

    goto/16 :goto_1

    .line 450
    .restart local v2    # "address":[B
    .restart local v4    # "endIndex":I
    .restart local v17    # "str":Ljava/lang/String;
    :catch_10
    move-exception v24

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 457
    .end local v2    # "address":[B
    .end local v4    # "endIndex":I
    .end local v5    # "from":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .end local v17    # "str":Ljava/lang/String;
    :cond_9
    :try_start_c
    new-instance v5, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    const-string v24, "insert-address-token"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v5    # "from":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    goto :goto_2

    .line 460
    .end local v5    # "from":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :catch_11
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 470
    .restart local v5    # "from":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :catch_12
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 478
    .end local v5    # "from":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .end local v6    # "fromToken":I
    :pswitch_b
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 479
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 481
    .local v11, "messageClass":I
    const/16 v24, 0x80

    move/from16 v0, v24

    if-lt v11, v0, :cond_d

    .line 484
    const/16 v24, 0x80

    move/from16 v0, v24

    if-ne v0, v11, :cond_a

    .line 485
    :try_start_d
    const-string v24, "personal"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x8a

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 502
    :catch_13
    move-exception v24

    goto/16 :goto_1

    .line 488
    :cond_a
    const/16 v24, 0x81

    move/from16 v0, v24

    if-ne v0, v11, :cond_b

    .line 489
    const-string v24, "advertisement"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x8a

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 504
    :catch_14
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Text-String header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 492
    :cond_b
    const/16 v24, 0x82

    move/from16 v0, v24

    if-ne v0, v11, :cond_c

    .line 493
    :try_start_e
    const-string v24, "informational"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x8a

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 496
    :cond_c
    const/16 v24, 0x83

    move/from16 v0, v24

    if-ne v0, v11, :cond_2

    .line 497
    const-string v24, "auto"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x8a

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 509
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 510
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 511
    .local v12, "messageClassString":[B
    if-eqz v12, :cond_2

    .line 513
    const/16 v24, 0x8a

    :try_start_f
    move/from16 v0, v24

    invoke-virtual {v8, v12, v0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_16

    goto/16 :goto_1

    .line 515
    :catch_15
    move-exception v24

    goto/16 :goto_1

    .line 517
    :catch_16
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Text-String header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 526
    .end local v11    # "messageClass":I
    .end local v12    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 529
    .local v23, "version":I
    const/16 v24, 0x8d

    :try_start_10
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setOctet(II)V
    :try_end_10
    .catch Lcom/lenovo/safecenter/mmsutils/InvalidHeaderValueException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_18

    goto/16 :goto_1

    .line 531
    :catch_17
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Set invalid Octet value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " into the header filed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 535
    :catch_18
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Octet header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 545
    .end local v23    # "version":I
    :pswitch_d
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 549
    :try_start_11
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1a

    .line 556
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v16

    .line 558
    .local v16, "previouslySentBy":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-eqz v16, :cond_2

    .line 560
    const/16 v24, 0xa0

    :try_start_12
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setEncodedStringValue(Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;I)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1b

    goto/16 :goto_1

    .line 563
    :catch_19
    move-exception v24

    goto/16 :goto_1

    .line 551
    .end local v16    # "previouslySentBy":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :catch_1a
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not Integer-Value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 565
    .restart local v16    # "previouslySentBy":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :catch_1b
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 576
    .end local v16    # "previouslySentBy":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :pswitch_e
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 580
    :try_start_13
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1d

    .line 588
    :try_start_14
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v14

    .line 589
    .local v14, "perviouslySentDate":J
    const/16 v24, 0xa1

    move/from16 v0, v24

    invoke-virtual {v8, v14, v15, v0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setLongInteger(JI)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1c

    goto/16 :goto_1

    .line 592
    .end local v14    # "perviouslySentDate":J
    :catch_1c
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Long-Integer header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 582
    :catch_1d
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not Integer-Value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 606
    :pswitch_f
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 609
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 612
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    goto/16 :goto_1

    .line 625
    :pswitch_10
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 628
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 632
    :try_start_15
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1e

    goto/16 :goto_1

    .line 634
    :catch_1e
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not Integer-Value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 644
    :pswitch_11
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 652
    :pswitch_12
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v3

    .line 657
    .local v3, "contentType":[B
    if-eqz v3, :cond_e

    .line 659
    const/16 v24, 0x84

    :try_start_16
    move/from16 v0, v24

    invoke-virtual {v8, v3, v0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->setTextString([BI)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1f

    .line 669
    :cond_e
    :goto_3
    const/16 v24, 0x99

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    check-cast v24, [B

    sput-object v24, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->f:[B

    .line 672
    const/16 v24, 0x83

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    check-cast v24, [B

    sput-object v24, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->e:[B

    .line 674
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 663
    :catch_1f
    move-exception v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is not Text-String header field!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 661
    :catch_20
    move-exception v24

    goto :goto_3

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_12
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_2
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_10
        :pswitch_4
        :pswitch_10
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_11
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static b(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .locals 7
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1010
    sget-boolean v6, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1011
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1012
    const/4 v2, 0x0

    .line 1013
    .local v2, "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    const/4 v0, 0x0

    .line 1014
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1015
    .local v4, "temp":I
    sget-boolean v6, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v6, :cond_1

    const/4 v6, -0x1

    if-ne v6, v4, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1016
    :cond_1
    and-int/lit16 v1, v4, 0xff

    .line 1018
    .local v1, "first":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1019
    const/16 v6, 0x20

    if-ge v1, v6, :cond_2

    .line 1020
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1022
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1025
    :cond_2
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1028
    .local v5, "textString":[B
    if-eqz v0, :cond_3

    .line 1029
    :try_start_0
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    invoke-direct {v3, v0, v5}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>(I[B)V

    .end local v2    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .local v3, "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    move-object v2, v3

    .end local v3    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .restart local v2    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :goto_0
    move-object v6, v2

    .line 1037
    :goto_1
    return-object v6

    .line 1031
    :cond_3
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    invoke-direct {v3, v5}, Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .restart local v3    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    move-object v2, v3

    .end local v3    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .restart local v2    # "returnValue":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    goto :goto_0

    .line 1034
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected static checkMandatoryHeader(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)Z
    .locals 39
    .param p0, "headers"    # Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .prologue
    .line 1534
    if-nez p0, :cond_0

    .line 1535
    const/16 v37, 0x0

    .line 1741
    :goto_0
    return v37

    .line 1539
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v8

    .line 1542
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v9

    .line 1543
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 1545
    const/16 v37, 0x0

    goto :goto_0

    .line 1549
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 1738
    const/16 v37, 0x0

    goto :goto_0

    .line 1552
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1553
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 1554
    const/16 v37, 0x0

    goto :goto_0

    .line 1558
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v35

    .line 1559
    .local v35, "srFrom":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-nez v35, :cond_3

    .line 1560
    const/16 v37, 0x0

    goto :goto_0

    .line 1564
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1565
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 1566
    const/16 v37, 0x0

    goto :goto_0

    .line 1572
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v32

    .line 1573
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 1574
    const/16 v37, 0x0

    goto :goto_0

    .line 1578
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1579
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 1580
    const/16 v37, 0x0

    goto :goto_0

    .line 1586
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1587
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 1588
    const/16 v37, 0x0

    goto :goto_0

    .line 1592
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 1593
    .local v11, "niExpiry":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v11

    if-nez v37, :cond_6

    .line 1594
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1598
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v13

    .line 1599
    .local v13, "niMessageClass":[B
    if-nez v13, :cond_7

    .line 1600
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1604
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1605
    .local v14, "niMessageSize":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v14

    if-nez v37, :cond_8

    .line 1606
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1610
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1611
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 1612
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1618
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niExpiry":J
    .end local v13    # "niMessageClass":[B
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v17

    .line 1619
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 1620
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1624
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1625
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 1626
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1632
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1633
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 1634
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1638
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1639
    .local v20, "rcDate":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v20

    if-nez v37, :cond_15

    .line 1640
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1646
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 1647
    .local v3, "diDate":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v3

    if-nez v37, :cond_b

    .line 1648
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1652
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1653
    .local v5, "diMessageId":[B
    if-nez v5, :cond_c

    .line 1654
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1658
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v6

    .line 1659
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 1660
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1664
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v7

    .line 1665
    .local v7, "diTo":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-nez v7, :cond_15

    .line 1666
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1672
    .end local v3    # "diDate":J
    .end local v5    # "diMessageId":[B
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v2

    .line 1673
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 1674
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1680
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 1681
    .local v22, "roDate":J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v22

    if-nez v37, :cond_e

    .line 1682
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1686
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v24

    .line 1687
    .local v24, "roFrom":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-nez v24, :cond_f

    .line 1688
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1692
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v25

    .line 1693
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 1694
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1698
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v26

    .line 1699
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 1700
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1704
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v27

    .line 1705
    .local v27, "roTo":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-nez v27, :cond_15

    .line 1706
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1712
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValue(I)Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v28

    .line 1713
    .local v28, "rrFrom":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-nez v28, :cond_12

    .line 1714
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1718
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getTextString(I)[B

    move-result-object v29

    .line 1719
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 1720
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1724
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v30

    .line 1725
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 1726
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1730
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getEncodedStringValues(I)[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;

    move-result-object v31

    .line 1731
    .local v31, "rrTo":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    if-nez v31, :cond_15

    .line 1732
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1741
    .end local v28    # "rrFrom":Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/lenovo/safecenter/mmsutils/TyuEncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 1549
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1236
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1237
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1238
    .local v0, "temp":I
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1239
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    .line 1142
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1143
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1144
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1145
    .local v1, "temp":I
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1146
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1148
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1149
    invoke-static {v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1150
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1158
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1159
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1153
    :cond_3
    invoke-static {v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1162
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1163
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1166
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    .line 1180
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1191
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1184
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1191
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    .line 1207
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1232
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1211
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1232
    const/4 v0, 0x1

    goto :goto_0

    .line 1211
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 700
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 702
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 703
    .local v8, "temp":I
    sget-boolean v9, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 704
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 706
    and-int/lit16 v1, v8, 0xff

    .line 708
    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_8

    .line 709
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 710
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 711
    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 712
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 713
    sget-boolean v9, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 714
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 715
    and-int/lit16 v3, v8, 0xff

    .line 717
    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_5

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_5

    .line 718
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 733
    .local v0, "contentType":[B
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 734
    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 735
    .local v6, "parameterLen":I
    if-lez v6, :cond_3

    .line 736
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 739
    :cond_3
    if-gez v6, :cond_4

    .line 740
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    sget-object v9, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 750
    .end local v0    # "contentType":[B
    .end local v2    # "endPos":I
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v6    # "parameterLen":I
    .end local v7    # "startPos":I
    :cond_4
    :goto_1
    return-object v0

    .line 719
    .restart local v3    # "first":I
    .restart local v5    # "length":I
    .restart local v7    # "startPos":I
    :cond_5
    const/16 v9, 0x7f

    if-le v3, v9, :cond_7

    .line 720
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 722
    .local v4, "index":I
    sget-object v9, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_6

    .line 723
    sget-object v9, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "contentType":[B
    goto :goto_0

    .line 725
    .end local v0    # "contentType":[B
    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 726
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .restart local v0    # "contentType":[B
    goto :goto_0

    .line 729
    .end local v0    # "contentType":[B
    .end local v4    # "index":I
    :cond_7
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v9, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 743
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_8
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 744
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .restart local v0    # "contentType":[B
    goto :goto_1

    .line 746
    .end local v0    # "contentType":[B
    :cond_9
    sget-object v9, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0    # "contentType":[B
    goto :goto_1
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 19
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v17, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 774
    :cond_0
    sget-boolean v17, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v17, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 776
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 777
    .local v14, "startPos":I
    const/4 v15, 0x0

    .line 778
    .local v15, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 779
    .local v10, "lastLen":I
    :goto_0
    if-lez v10, :cond_c

    .line 780
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .line 781
    .local v12, "param":I
    sget-boolean v17, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v17, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 782
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 784
    sparse-switch v12, :sswitch_data_0

    .line 915
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 916
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :sswitch_0
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 801
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 802
    .local v7, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 803
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v7, v0, :cond_4

    .line 805
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 807
    .local v9, "index":I
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 808
    sget-object v17, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 809
    .local v16, "type":[B
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    .end local v9    # "index":I
    .end local v16    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 822
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 823
    goto :goto_0

    .line 815
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 816
    .restart local v16    # "type":[B
    if-eqz v16, :cond_3

    if-eqz p1, :cond_3

    .line 817
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 840
    .end local v7    # "first":I
    .end local v16    # "type":[B
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 841
    .local v13, "start":[B
    if-eqz v13, :cond_5

    if-eqz p1, :cond_5

    .line 842
    const/16 v17, 0x99

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 846
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 847
    goto/16 :goto_0

    .line 864
    .end local v13    # "start":[B
    :sswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 865
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 866
    .local v8, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 868
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    :cond_6
    if-nez v8, :cond_9

    .line 871
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 873
    .local v5, "charsetStr":[B
    :try_start_0
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/mmsutils/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 875
    .local v4, "charsetInt":I
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v4    # "charsetInt":I
    .end local v5    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 890
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 891
    goto/16 :goto_0

    .line 876
    .restart local v5    # "charsetStr":[B
    :catch_0
    move-exception v6

    .line 878
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v17, "PduParser"

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 883
    .end local v5    # "charsetStr":[B
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v3, v0

    .line 884
    .local v3, "charset":I
    if-eqz p1, :cond_8

    .line 885
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 903
    .end local v3    # "charset":I
    .end local v8    # "firstValue":I
    :sswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 904
    .local v11, "name":[B
    if-eqz v11, :cond_a

    if-eqz p1, :cond_a

    .line 905
    const/16 v17, 0x97

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 909
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 910
    goto/16 :goto_0

    .line 918
    .end local v11    # "name":[B
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 924
    .end local v12    # "param":I
    :cond_c
    if-eqz v10, :cond_d

    .line 925
    const-string v17, "PduParser"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_d
    return-void

    .line 784
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1045
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1046
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1047
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1048
    .local v0, "temp":I
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1049
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1050
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1051
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1053
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1068
    sget-boolean v5, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1069
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1070
    .local v4, "temp":I
    sget-boolean v5, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1071
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1073
    .local v0, "count":I
    if-le v0, v8, :cond_2

    .line 1074
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1077
    :cond_2
    const-wide/16 v2, 0x0

    .line 1079
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1080
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1081
    sget-boolean v5, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1082
    :cond_3
    shl-long/2addr v2, v8

    .line 1083
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/lenovo/safecenter/mmsutils/PduPart;I)Z
    .locals 18
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "part"    # Lcom/lenovo/safecenter/mmsutils/PduPart;
    .param p2, "length"    # I

    .prologue
    .line 1383
    sget-boolean v15, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v15, :cond_0

    if-nez p0, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1384
    :cond_0
    sget-boolean v15, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v15, :cond_1

    if-nez p1, :cond_1

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1385
    :cond_1
    sget-boolean v15, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v15, :cond_2

    if-gtz p2, :cond_2

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1403
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1404
    .local v7, "startPos":I
    const/4 v10, 0x0

    .line 1405
    .local v10, "tempPos":I
    move/from16 v5, p2

    .line 1406
    .local v5, "lastLen":I
    :goto_0
    if-lez v5, :cond_10

    .line 1407
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1408
    .local v3, "header":I
    sget-boolean v15, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v15, :cond_3

    const/4 v15, -0x1

    if-ne v15, v3, :cond_3

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1409
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 1411
    const/16 v15, 0x7f

    if-le v3, v15, :cond_c

    .line 1413
    sparse-switch v3, :sswitch_data_0

    .line 1492
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1493
    const-string v15, "PduParser"

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const/4 v15, 0x0

    .line 1530
    .end local v3    # "header":I
    :goto_1
    return v15

    .line 1419
    .restart local v3    # "header":I
    :sswitch_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1420
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_4

    .line 1421
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentLocation([B)V

    .line 1424
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1425
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1426
    goto :goto_0

    .line 1432
    .end local v2    # "contentLocation":[B
    :sswitch_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1433
    .local v1, "contentId":[B
    if-eqz v1, :cond_5

    .line 1434
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentId([B)V

    .line 1437
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1438
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1439
    goto :goto_0

    .line 1450
    .end local v1    # "contentId":[B
    :sswitch_2
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1451
    .local v6, "len":I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1453
    .local v13, "thisStartPos":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1456
    .local v14, "value":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_8

    .line 1457
    sget-object v15, Lcom/lenovo/safecenter/mmsutils/PduPart;->a:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentDisposition([B)V

    .line 1469
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1470
    .local v12, "thisEndPos":I
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_7

    .line 1471
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1472
    const/16 v15, 0x98

    if-ne v14, v15, :cond_6

    .line 1473
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setFilename([B)V

    .line 1477
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1478
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_7

    .line 1479
    sub-int v15, v13, v12

    sub-int v4, v6, v15

    .line 1480
    .local v4, "last":I
    new-array v8, v4, [B

    .line 1481
    .local v8, "temp":[B
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1485
    .end local v4    # "last":I
    .end local v8    # "temp":[B
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1486
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1487
    goto/16 :goto_0

    .line 1458
    .end local v12    # "thisEndPos":I
    :cond_8
    const/16 v15, 0x81

    if-ne v14, v15, :cond_9

    .line 1459
    sget-object v15, Lcom/lenovo/safecenter/mmsutils/PduPart;->b:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1460
    :cond_9
    const/16 v15, 0x82

    if-ne v14, v15, :cond_a

    .line 1461
    sget-object v15, Lcom/lenovo/safecenter/mmsutils/PduPart;->c:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1463
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1465
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1496
    .end local v6    # "len":I
    .end local v13    # "thisStartPos":I
    .end local v14    # "value":I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1499
    :cond_c
    const/16 v15, 0x20

    if-lt v3, v15, :cond_e

    const/16 v15, 0x7f

    if-gt v3, v15, :cond_e

    .line 1501
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    .line 1502
    .local v9, "tempHeader":[B
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1505
    .local v11, "tempValue":[B
    const/4 v15, 0x1

    const-string v16, "Content-Transfer-Encoding"

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1507
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentTransferEncoding([B)V

    .line 1510
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1511
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1512
    goto/16 :goto_0

    .line 1517
    .end local v9    # "tempHeader":[B
    .end local v11    # "tempValue":[B
    :cond_e
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1518
    const-string v15, "PduParser"

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1521
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1525
    .end local v3    # "header":I
    :cond_10
    if-eqz v5, :cond_11

    .line 1526
    const-string v15, "PduParser"

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1530
    :cond_11
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1413
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuPduBody;
    .locals 24
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 1243
    if-nez p0, :cond_1

    .line 1244
    const/4 v3, 0x0

    .line 1348
    :cond_0
    :goto_0
    return-object v3

    .line 1247
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1248
    .local v7, "count":I
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    invoke-direct {v3}, Lcom/lenovo/safecenter/mmsutils/TyuPduBody;-><init>()V

    .line 1250
    .local v3, "body":Lcom/lenovo/safecenter/mmsutils/TyuPduBody;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_0

    .line 1251
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 1252
    .local v11, "headerLength":I
    invoke-static/range {p0 .. p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1253
    .local v8, "dataLength":I
    new-instance v15, Lcom/lenovo/safecenter/mmsutils/PduPart;

    invoke-direct {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;-><init>()V

    .line 1254
    .local v15, "part":Lcom/lenovo/safecenter/mmsutils/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 1255
    .local v20, "startPos":I
    if-gtz v20, :cond_2

    .line 1257
    const/4 v3, 0x0

    goto :goto_0

    .line 1261
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1262
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 1263
    .local v6, "contentType":[B
    if-eqz v6, :cond_5

    .line 1264
    invoke-virtual {v15, v6}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentType([B)V

    .line 1270
    :goto_2
    const/16 v21, 0x97

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v14, v21

    check-cast v14, [B

    .line 1271
    .local v14, "name":[B
    if-eqz v14, :cond_3

    .line 1272
    invoke-virtual {v15, v14}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setName([B)V

    .line 1276
    :cond_3
    const/16 v21, 0x81

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1277
    .local v4, "charset":Ljava/lang/Integer;
    if-eqz v4, :cond_4

    .line 1278
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setCharset(I)V

    .line 1282
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1283
    .local v10, "endPos":I
    sub-int v21, v20, v10

    sub-int v19, v11, v21

    .line 1284
    .local v19, "partHeaderLen":I
    if-lez v19, :cond_6

    .line 1285
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/lenovo/safecenter/mmsutils/PduPart;I)Z

    move-result v21

    if-nez v21, :cond_7

    .line 1287
    const/4 v3, 0x0

    goto :goto_0

    .line 1266
    .end local v4    # "charset":Ljava/lang/Integer;
    .end local v10    # "endPos":I
    .end local v14    # "name":[B
    .end local v19    # "partHeaderLen":I
    :cond_5
    sget-object v21, Lcom/lenovo/safecenter/mmsutils/PduContentTypes;->a:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentType([B)V

    goto :goto_2

    .line 1289
    .restart local v4    # "charset":Ljava/lang/Integer;
    .restart local v10    # "endPos":I
    .restart local v14    # "name":[B
    .restart local v19    # "partHeaderLen":I
    :cond_6
    if-gez v19, :cond_7

    .line 1291
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1297
    :cond_7
    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getContentLocation()[B

    move-result-object v21

    if-nez v21, :cond_8

    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getName()[B

    move-result-object v21

    if-nez v21, :cond_8

    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getFilename()[B

    move-result-object v21

    if-nez v21, :cond_8

    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getContentId()[B

    move-result-object v21

    if-nez v21, :cond_8

    .line 1301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setContentLocation([B)V

    .line 1306
    :cond_8
    if-lez v8, :cond_9

    .line 1307
    new-array v0, v8, [B

    move-object/from16 v17, v0

    .line 1308
    .local v17, "partData":[B
    new-instance v16, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getContentType()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1309
    .local v16, "partContentType":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1310
    const-string v21, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1312
    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    move-result-object v5

    .line 1314
    .local v5, "childBody":Lcom/lenovo/safecenter/mmsutils/TyuPduBody;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/lenovo/safecenter/mmsutils/TyuPduBody;->getPart(I)Lcom/lenovo/safecenter/mmsutils/PduPart;

    move-result-object v15

    .line 1339
    .end local v5    # "childBody":Lcom/lenovo/safecenter/mmsutils/TyuPduBody;
    .end local v16    # "partContentType":Ljava/lang/String;
    .end local v17    # "partData":[B
    :cond_9
    :goto_3
    sget-boolean v21, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v21, :cond_e

    if-nez v15, :cond_e

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1317
    .restart local v16    # "partContentType":Ljava/lang/String;
    .restart local v17    # "partData":[B
    :cond_a
    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getContentTransferEncoding()[B

    move-result-object v18

    .line 1318
    .local v18, "partDataEncoding":[B
    if-eqz v18, :cond_b

    .line 1319
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1320
    .local v9, "encoding":Ljava/lang/String;
    const-string v21, "base64"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1322
    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/mmsutils/Base64;->decodeBase64([B)[B

    move-result-object v17

    .line 1330
    .end local v9    # "encoding":Ljava/lang/String;
    :cond_b
    :goto_4
    if-nez v17, :cond_d

    .line 1331
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1323
    .restart local v9    # "encoding":Ljava/lang/String;
    :cond_c
    const-string v21, "quoted-printable"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1325
    invoke-static/range {v17 .. v17}, Lcom/lenovo/safecenter/mmsutils/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v17

    goto :goto_4

    .line 1334
    .end local v9    # "encoding":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/lenovo/safecenter/mmsutils/PduPart;->setData([B)V

    goto :goto_3

    .line 1339
    .end local v16    # "partContentType":Ljava/lang/String;
    .end local v17    # "partData":[B
    .end local v18    # "partDataEncoding":[B
    :cond_e
    sget-object v21, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->e:[B

    if-nez v21, :cond_f

    sget-object v21, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->f:[B

    if-nez v21, :cond_f

    const/16 v21, 0x1

    :goto_5
    if-nez v21, :cond_12

    .line 1341
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0, v15}, Lcom/lenovo/safecenter/mmsutils/TyuPduBody;->addPart(ILcom/lenovo/safecenter/mmsutils/PduPart;)V

    .line 1250
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1339
    :cond_f
    sget-object v21, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->f:[B

    if-eqz v21, :cond_10

    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getContentId()[B

    move-result-object v21

    if-eqz v21, :cond_10

    const/16 v22, 0x1

    sget-object v23, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->f:[B

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    const/16 v21, 0x0

    goto :goto_5

    :cond_10
    sget-object v21, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->e:[B

    if-eqz v21, :cond_11

    invoke-virtual {v15}, Lcom/lenovo/safecenter/mmsutils/PduPart;->getContentType()[B

    move-result-object v21

    if-eqz v21, :cond_11

    const/16 v22, 0x1

    sget-object v23, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->e:[B

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/16 v21, 0x0

    goto :goto_5

    :cond_11
    const/16 v21, 0x1

    goto :goto_5

    .line 1344
    :cond_12
    invoke-virtual {v3, v15}, Lcom/lenovo/safecenter/mmsutils/TyuPduBody;->addPart(Lcom/lenovo/safecenter/mmsutils/PduPart;)Z

    goto :goto_6
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 948
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 949
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 950
    .local v0, "temp":I
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 951
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    .line 983
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 984
    :cond_0
    const/4 v0, 0x0

    .line 985
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 986
    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 1002
    :goto_0
    return v2

    .line 990
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 991
    shl-int/lit8 v0, v0, 0x7

    .line 992
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 993
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 994
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 995
    goto :goto_0

    .line 999
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 1000
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1002
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 963
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 964
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 965
    .local v1, "temp":I
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 966
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 968
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 971
    .end local v0    # "first":I
    :goto_0
    return v0

    .line 970
    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 971
    invoke-static {p0}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 974
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1096
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1114
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1117
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1118
    .local v0, "temp":I
    sget-boolean v1, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1119
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1122
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1137
    :goto_0
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1123
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1126
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1129
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    .line 930
    sget-boolean v2, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 931
    :cond_0
    new-array v0, p1, [B

    .line 932
    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 933
    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    .line 934
    const/4 v1, -0x1

    .line 936
    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/lenovo/safecenter/mmsutils/GenericPdu;
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 78
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v11

    .line 83
    :cond_1
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->a(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    .line 84
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    if-eqz v12, :cond_0

    .line 90
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;->getOctet(I)I

    move-result v4

    .line 93
    .local v4, "messageType":I
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-static {v12}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->checkMandatoryHeader(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 97
    const/16 v12, 0x80

    if-eq v12, v4, :cond_2

    const/16 v12, 0x84

    if-ne v12, v4, :cond_3

    .line 100
    :cond_2
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->b:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->d:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    .line 101
    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->d:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    if-eqz v12, :cond_0

    .line 107
    :cond_3
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    new-instance v11, Lcom/lenovo/safecenter/mmsutils/SendReq;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    iget-object v13, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->d:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    invoke-direct {v11, v12, v13}, Lcom/lenovo/safecenter/mmsutils/SendReq;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V

    .line 110
    .local v11, "sendReq":Lcom/lenovo/safecenter/mmsutils/SendReq;
    goto :goto_0

    .line 112
    .end local v11    # "sendReq":Lcom/lenovo/safecenter/mmsutils/SendReq;
    :pswitch_1
    new-instance v10, Lcom/lenovo/safecenter/mmsutils/SendConf;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v10, v12}, Lcom/lenovo/safecenter/mmsutils/SendConf;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v10, "sendConf":Lcom/lenovo/safecenter/mmsutils/SendConf;
    move-object v11, v10

    .line 113
    goto :goto_0

    .line 115
    .end local v10    # "sendConf":Lcom/lenovo/safecenter/mmsutils/SendConf;
    :pswitch_2
    new-instance v5, Lcom/lenovo/safecenter/mmsutils/NotificationInd;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v5, v12}, Lcom/lenovo/safecenter/mmsutils/NotificationInd;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v5, "notificationInd":Lcom/lenovo/safecenter/mmsutils/NotificationInd;
    move-object v11, v5

    .line 117
    goto :goto_0

    .line 119
    .end local v5    # "notificationInd":Lcom/lenovo/safecenter/mmsutils/NotificationInd;
    :pswitch_3
    new-instance v6, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v6, v12}, Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v6, "notifyRespInd":Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;
    move-object v11, v6

    .line 121
    goto :goto_0

    .line 123
    .end local v6    # "notifyRespInd":Lcom/lenovo/safecenter/mmsutils/NotifyRespInd;
    :pswitch_4
    new-instance v9, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    iget-object v13, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->d:Lcom/lenovo/safecenter/mmsutils/TyuPduBody;

    invoke-direct {v9, v12, v13}, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;Lcom/lenovo/safecenter/mmsutils/TyuPduBody;)V

    .line 126
    .local v9, "retrieveConf":Lcom/lenovo/safecenter/mmsutils/RetrieveConf;
    invoke-virtual {v9}, Lcom/lenovo/safecenter/mmsutils/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 127
    .local v1, "contentType":[B
    if-eqz v1, :cond_0

    .line 130
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 131
    .local v2, "ctTypeStr":Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_4
    move-object v11, v9

    .line 137
    goto/16 :goto_0

    .line 141
    .end local v1    # "contentType":[B
    .end local v2    # "ctTypeStr":Ljava/lang/String;
    .end local v9    # "retrieveConf":Lcom/lenovo/safecenter/mmsutils/RetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v3, v12}, Lcom/lenovo/safecenter/mmsutils/DeliveryInd;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v3, "deliveryInd":Lcom/lenovo/safecenter/mmsutils/DeliveryInd;
    move-object v11, v3

    .line 143
    goto/16 :goto_0

    .line 145
    .end local v3    # "deliveryInd":Lcom/lenovo/safecenter/mmsutils/DeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v0, v12}, Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v0, "acknowledgeInd":Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;
    move-object v11, v0

    .line 147
    goto/16 :goto_0

    .line 149
    .end local v0    # "acknowledgeInd":Lcom/lenovo/safecenter/mmsutils/AcknowledgeInd;
    :pswitch_7
    new-instance v7, Lcom/lenovo/safecenter/mmsutils/ReadOrigInd;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v7, v12}, Lcom/lenovo/safecenter/mmsutils/ReadOrigInd;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v7, "readOrigInd":Lcom/lenovo/safecenter/mmsutils/ReadOrigInd;
    move-object v11, v7

    .line 151
    goto/16 :goto_0

    .line 153
    .end local v7    # "readOrigInd":Lcom/lenovo/safecenter/mmsutils/ReadOrigInd;
    :pswitch_8
    new-instance v8, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;

    iget-object v12, p0, Lcom/lenovo/safecenter/mmsutils/TyuMMSParser;->c:Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;

    invoke-direct {v8, v12}, Lcom/lenovo/safecenter/mmsutils/ReadRecInd;-><init>(Lcom/lenovo/safecenter/mmsutils/TyuMMSHeaders;)V

    .local v8, "readRecInd":Lcom/lenovo/safecenter/mmsutils/ReadRecInd;
    move-object v11, v8

    .line 155
    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
