.class public Lcom/lenovo/safecenter/utils/ContractHelpUtils;
.super Ljava/lang/Object;
.source "ContractHelpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    }
.end annotation


# static fields
.field public static final From_CALL:I = 0x1

.field public static final From_SMS:I = 0x0

.field public static final HAS_NOUPLOAD:I = 0x0

.field public static final HAS_UPLOAD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method public static formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 543
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.M.dd.HH.mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 545
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "dateValue":Ljava/lang/String;
    const-string v6, "time"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "currentTimeMillis=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "datatime":Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "nowTimeArray":[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "timeArray":[Ljava/lang/String;
    aget-object v6, v3, v10

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v3, v11

    aget-object v7, v5, v11

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v3, v12

    aget-object v7, v5, v12

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    :goto_0
    return-object v2

    .line 558
    :cond_0
    aget-object v6, v3, v10

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d01dc

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d01dd

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "formatTime":Ljava/lang/String;
    goto :goto_0

    .line 564
    .end local v2    # "formatTime":Ljava/lang/String;
    :cond_1
    aget-object v6, v3, v10

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v5, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .restart local v2    # "formatTime":Ljava/lang/String;
    goto :goto_0

    .line 568
    .end local v2    # "formatTime":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "longtime"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "sfd":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 67
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 72
    const-string v0, ""

    .line 73
    .local v0, "status":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 87
    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    const v1, 0x7f0d019b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    goto :goto_0

    .line 79
    :pswitch_1
    const v1, 0x7f0d019c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 83
    :pswitch_2
    const v1, 0x7f0d019d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "intentfilter"    # Ljava/lang/String;

    .prologue
    .line 672
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    return-void
.end method


# virtual methods
.method public GetMyContacts(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    .line 192
    .local v2, "projection":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 193
    .local v11, "prePhone":Ljava/lang/String;
    const-string v4, "content://com.android.contacts/data/phones"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    .local v1, "uri1":Landroid/net/Uri;
    const-string v5, " sort_key asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 195
    .local v10, "phoneCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const-string v3, "data1"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "phone":Ljava/lang/String;
    const-string v3, "display_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "name":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    move-object v11, v9

    .line 203
    new-instance v6, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v6}, Lcom/lenovo/safecenter/support/Contract;-><init>()V

    .line 204
    .local v6, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v6, v8}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v6, v9}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 206
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v6    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "phone":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 212
    return-object v7
.end method

.method public backToSms(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)V
    .locals 9
    .param p1, "con"    # Lcom/lenovo/safecenter/support/Contract;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const-string v0, "address"

    .line 382
    .local v0, "ADDRESS":Ljava/lang/String;
    const-string v2, "date"

    .line 383
    .local v2, "DATE":Ljava/lang/String;
    const-string v3, "read"

    .line 384
    .local v3, "READ":Ljava/lang/String;
    const-string v4, "status"

    .line 385
    .local v4, "STATUS":Ljava/lang/String;
    const-string v5, "type"

    .line 386
    .local v5, "TYPE":Ljava/lang/String;
    const-string v1, "body"

    .line 387
    .local v1, "BODY":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://sms"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 395
    return-void
.end method

.method public checkHasNotes(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)Z
    .locals 11
    .param p1, "conn"    # Lcom/lenovo/safecenter/support/Contract;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 456
    const/4 v6, 0x0

    .line 459
    .local v6, "HasNotes":Z
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v2, v10

    .line 462
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int i=0;=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 468
    :cond_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(number,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',0)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 470
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v9

    .line 482
    :goto_0
    return v1

    .line 476
    :cond_1
    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(address,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',0)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 477
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 479
    const/4 v6, 0x1

    .line 481
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v6

    .line 482
    goto :goto_0
.end method

.method public checkHasNotes(Ljava/util/List;Landroid/content/Context;)Z
    .locals 13
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 400
    const/4 v9, 0x0

    .line 401
    .local v9, "i":I
    const/4 v8, 0x0

    .line 402
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 403
    .local v6, "HasNotes":Z
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "date"

    aput-object v3, v2, v1

    .line 405
    .local v2, "projection":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/support/Contract;

    .line 407
    .local v7, "con":Lcom/lenovo/safecenter/support/Contract;
    add-int/lit8 v9, v9, 0x1

    .line 408
    const-string v1, "count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int i=0;=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v7}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .line 410
    .local v11, "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 414
    :cond_1
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(number,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',0)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 418
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 420
    const/4 v6, 0x1

    .line 424
    .end local v7    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v11    # "optNumber":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 426
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v12

    .line 450
    :goto_0
    return v1

    .line 430
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/support/Contract;

    .line 432
    .restart local v7    # "con":Lcom/lenovo/safecenter/support/Contract;
    add-int/lit8 v9, v9, 0x1

    .line 433
    const-string v1, "count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "int i=0;=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v7}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .line 435
    .restart local v11    # "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 439
    :cond_5
    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(address,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',0)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 443
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 445
    const/4 v6, 0x1

    .line 449
    .end local v7    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v11    # "optNumber":Ljava/lang/String;
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v6

    .line 450
    goto :goto_0
.end method

.method public deleteBlack(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const-string v3, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 643
    .local v2, "uri1":Landroid/net/Uri;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 645
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "realnumber=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 647
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    return-void
.end method

.method public getAddlist(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    .local p2, "wList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 655
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 658
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    const-string v4, "has"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "========="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 653
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 666
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object p1
.end method

.method public getBlackFromadd(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v0, "B_con":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const/4 v1, 0x0

    .line 616
    .local v1, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 618
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 619
    .restart local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/support/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isInLocalblack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 625
    :cond_1
    return-object v0
.end method

.method public getCallContractByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "optNumber"    # Ljava/lang/String;
    .param p3, "inseretNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 500
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(number,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "number,date desc "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 503
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v6, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 506
    .local v9, "name":Ljava/lang/String;
    new-instance v7, Lcom/lenovo/safecenter/support/Contract;

    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v7, v9, p3, v0, v1}, Lcom/lenovo/safecenter/support/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 509
    .local v7, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    .end local v7    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v9    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 512
    return-object v6
.end method

.method public getConNotInWhiteList(Ljava/util/List;Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fromType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const/4 v3, 0x0

    .line 303
    .local v3, "newlist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    if-nez p3, :cond_2

    .line 306
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->GetMyContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 318
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 349
    :cond_1
    return-object v3

    .line 308
    :cond_2
    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    .line 311
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getcallContractList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 312
    :cond_3
    const/4 v6, 0x2

    if-ne p3, v6, :cond_0

    .line 315
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getSmsContractList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 323
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, "isExist":Z
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 334
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/support/Contract;

    .line 338
    .local v5, "wCon":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 340
    const/4 v2, 0x1

    .line 344
    .end local v5    # "wCon":Lcom/lenovo/safecenter/support/Contract;
    :cond_7
    if-eqz v2, :cond_8

    .line 346
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 328
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSmsByNUmber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "optNumber"    # Ljava/lang/String;
    .param p3, "inseretNumber"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "address"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "body"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "date"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "type"

    aput-object v3, v4, v2

    .line 519
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(address,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "address,date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 523
    .local v12, "myCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 524
    invoke-interface {v12, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 525
    const-string v2, "body"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 526
    .local v14, "smsColumn":I
    const-string v2, "date"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 527
    .local v9, "dateColumn":I
    const-string v2, "type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 528
    .local v17, "typeColumn":I
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 529
    .local v15, "smsContent":Ljava/lang/String;
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 530
    .local v8, "date":Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 531
    .local v16, "type":I
    const-string v2, "sms_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "date"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "myCursor.getCount()=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v13, Lcom/lenovo/safecenter/support/Contract;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1, v8, v15}, Lcom/lenovo/safecenter/support/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .local v13, "sms":Lcom/lenovo/safecenter/support/Contract;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/lenovo/safecenter/support/Contract;->setSmstype(I)V

    .line 534
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 536
    .end local v8    # "date":Ljava/lang/String;
    .end local v9    # "dateColumn":I
    .end local v13    # "sms":Lcom/lenovo/safecenter/support/Contract;
    .end local v14    # "smsColumn":I
    .end local v15    # "smsContent":Ljava/lang/String;
    .end local v16    # "type":I
    .end local v17    # "typeColumn":I
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 537
    return-object v11
.end method

.method public getSmsContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 28
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "address"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "person"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "body"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "date"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "type"

    aput-object v5, v6, v4

    .line 255
    .local v6, "projection":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v24, v4

    .line 256
    .local v24, "projectionIn":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://sms"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "address,date desc"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 261
    .local v18, "myCursor":Landroid/database/Cursor;
    const-string v23, ""

    .line 262
    .local v23, "preNum":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 263
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 264
    const-string v4, "address"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 265
    .local v20, "phoneColumn":I
    const-string v4, "body"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 266
    .local v26, "smsColumn":I
    const-string v4, "date"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 267
    .local v15, "dateColumn":I
    const/16 v19, 0x0

    .line 268
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 269
    .local v22, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 270
    .local v27, "smsContent":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 272
    .local v14, "date":Ljava/lang/String;
    if-eqz v22, :cond_1

    const-string v4, "wappush"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static/range {v22 .. v22}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    move-object/from16 v23, v22

    .line 276
    const-string v4, "content://com.android.contacts/data/phones"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 278
    .local v8, "uri1":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, v24

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 280
    .local v21, "phoneCursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    const-string v4, "display_name"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 283
    :cond_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 284
    new-instance v25, Lcom/lenovo/safecenter/support/Contract;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/lenovo/safecenter/support/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v25, "sms":Lcom/lenovo/safecenter/support/Contract;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v8    # "uri1":Landroid/net/Uri;
    .end local v21    # "phoneCursor":Landroid/database/Cursor;
    .end local v25    # "sms":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 290
    .end local v14    # "date":Ljava/lang/String;
    .end local v15    # "dateColumn":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "phoneColumn":I
    .end local v22    # "phoneNumber":Ljava/lang/String;
    .end local v26    # "smsColumn":I
    .end local v27    # "smsContent":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 291
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 292
    new-instance v13, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/utils/ContractHelpUtils;)V

    .line 293
    .local v13, "comp":Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    .end local v13    # "comp":Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    :cond_3
    return-object v17
.end method

.method public getWhiteSMS(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 577
    new-instance v0, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/utils/ContractHelpUtils;)V

    .line 578
    .local v0, "comp":Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 580
    .end local v0    # "comp":Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    :cond_0
    return-object p1
.end method

.method public getcallContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "duration"

    aput-object v1, v2, v0

    .line 218
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, " number,date desc "

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v8, "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const-string v12, ""

    .line 223
    .local v12, "preNum":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "number"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "number":Ljava/lang/String;
    invoke-static {v11}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    move-object v12, v11

    .line 231
    new-instance v7, Lcom/lenovo/safecenter/support/Contract;

    const-string v0, "date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v7, v10, v11, v0, v1}, Lcom/lenovo/safecenter/support/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    .local v7, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v0, "duration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v7    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 242
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 243
    new-instance v6, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/utils/ContractHelpUtils;)V

    .line 244
    .local v6, "comp":Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    invoke-static {v8, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    .end local v6    # "comp":Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
    :cond_2
    return-object v8
.end method

.method public hasLocalBlack(Landroid/content/Context;Ljava/util/List;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 585
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    const/4 v11, 0x0

    .line 587
    .local v11, "ishas":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 588
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 589
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "ishas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v8, 0x0

    .line 591
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/support/Contract;

    .line 593
    .local v6, "con":Lcom/lenovo/safecenter/support/Contract;
    const-string v2, "ishas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "list=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "realnumber=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 596
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 597
    .local v7, "count":I
    if-lez v7, :cond_0

    .line 599
    const/4 v11, 0x1

    .line 603
    .end local v6    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v7    # "count":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_0
    const-string v2, "ishas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==ishas"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v11

    .line 604
    :catch_0
    move-exception v9

    .line 605
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isInLocalblack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 630
    const-string v0, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 632
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "realnumber=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 634
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 635
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 636
    if-lez v6, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public isMobileNO(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v3, "^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 40
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 41
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 43
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :goto_0
    return v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPhoneNUmber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 94
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 95
    .local v0, "bool":Z
    return v0
.end method

.method public noContractRepeatList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "repeatelist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    if-eqz p1, :cond_4

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "opt_number":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    add-int/lit8 v1, v1, -0x1

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "j":I
    .end local v2    # "opt_number":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 157
    .end local v0    # "i":I
    :cond_4
    return-object p1
.end method

.method public operateNumber(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "optNumber"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isHasSms"    # Z

    .prologue
    .line 489
    if-eqz p3, :cond_0

    .line 491
    new-instance v0, Lcom/lenovo/safecenter/utils/SmsUtil;

    invoke-direct {v0}, Lcom/lenovo/safecenter/utils/SmsUtil;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/safecenter/utils/SmsUtil;->backupThread(Ljava/lang/String;Landroid/content/Context;)V

    .line 495
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(number,\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public optNUmber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method
