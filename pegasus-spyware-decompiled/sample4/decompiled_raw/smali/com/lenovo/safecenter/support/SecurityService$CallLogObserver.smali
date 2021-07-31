.class public Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;
.super Landroid/database/ContentObserver;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallLogObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    .line 1543
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1545
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 29
    .param p1, "selfChange"    # Z

    .prologue
    .line 1548
    invoke-super/range {p0 .. p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1551
    :try_start_0
    const-string v3, "CallListener"

    const-string v4, "onChangeonChangeonChangeonChangeonChangeonChangeonChangeonChange"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/safecenter/support/SecurityService;->h:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id desc limit 1"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1554
    .local v12, "cursor":Landroid/database/Cursor;
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cursor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    if-eqz v12, :cond_18

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_18

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1557
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1558
    .local v23, "number":Ljava/lang/String;
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v21, v0

    .line 1559
    .local v21, "maxId":J
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1560
    .local v13, "date":J
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1561
    .local v20, "lens":I
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1563
    .local v28, "type":I
    const-string v4, "CallListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxId==="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "==+mMaxCallLogId=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->n(Lcom/lenovo/safecenter/support/SecurityService;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "type=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "==number=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "==mCalls.last=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v6}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    iget-boolean v3, v3, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getSetNullNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1969
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "date":J
    .end local v20    # "lens":I
    .end local v21    # "maxId":J
    .end local v23    # "number":Ljava/lang/String;
    .end local v28    # "type":I
    :goto_0
    return-void

    .line 1578
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "date":J
    .restart local v20    # "lens":I
    .restart local v21    # "maxId":J
    .restart local v23    # "number":Ljava/lang/String;
    .restart local v28    # "type":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->n(Lcom/lenovo/safecenter/support/SecurityService;)J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-lez v3, :cond_11

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 1587
    const/16 v17, 0x0

    .line 1588
    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 1589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1594
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1595
    const/16 v17, 0x0

    .line 1596
    :cond_2
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCalls.size()==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==i=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_8

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    .line 1604
    .local v18, "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mVipCode:Z

    if-eqz v3, :cond_e

    .line 1606
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v11

    .line 1608
    .local v11, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-nez v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_c

    .line 1611
    :cond_3
    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1612
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 1618
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Lcom/lenovo/safecenter/support/Contract;)V

    .line 1619
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-nez v3, :cond_4

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_7

    .line 1621
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "privateCall_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1623
    .local v10, "callmode":Ljava/lang/String;
    const-string v16, "1"

    .line 1624
    .local v16, "handupmode":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->showNotify(Landroid/content/Context;)V

    .line 1627
    const-string v3, "WhiteCall"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1629
    const-string v3, "WhiteCall"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/WhiteCall;

    .line 1630
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/WhiteCall;
    iget-object v3, v9, Lcom/lenovo/safecenter/safemode/WhiteCall;->hand:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1638
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/WhiteCall;
    :cond_5
    :goto_3
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_6

    .line 1640
    const-string v3, "2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v11}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v5}, Lcom/lenovo/safecenter/support/SecurityService;->o(Lcom/lenovo/safecenter/support/SecurityService;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4, v5}, Lcom/lenovo/safecenter/support/SecurityService;->sendSMS(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1646
    :cond_6
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_7

    .line 1648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->p(Lcom/lenovo/safecenter/support/SecurityService;)V

    .line 1652
    .end local v10    # "callmode":Ljava/lang/String;
    .end local v16    # "handupmode":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1720
    .end local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v18    # "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1958
    .end local v13    # "date":J
    .end local v17    # "i":I
    .end local v20    # "lens":I
    .end local v21    # "maxId":J
    .end local v23    # "number":Ljava/lang/String;
    .end local v28    # "type":I
    :cond_9
    :goto_5
    if-eqz v12, :cond_a

    .line 1960
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1963
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->saveMaxCallId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1964
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1966
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1588
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "date":J
    .restart local v17    # "i":I
    .restart local v20    # "lens":I
    .restart local v21    # "maxId":J
    .restart local v23    # "number":Ljava/lang/String;
    .restart local v28    # "type":I
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1615
    .restart local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    .restart local v18    # "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    :cond_c
    :try_start_1
    move/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1616
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    goto/16 :goto_2

    .line 1631
    .restart local v10    # "callmode":Ljava/lang/String;
    .restart local v16    # "handupmode":Ljava/lang/String;
    :cond_d
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1633
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 1634
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v3, v9, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 1656
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    .end local v10    # "callmode":Ljava/lang/String;
    .end local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v16    # "handupmode":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_f

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1662
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_8

    .line 1664
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->p(Lcom/lenovo/safecenter/support/SecurityService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1665
    :catch_1
    move-exception v15

    .line 1666
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1670
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_10

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    sub-long v24, v3, v5

    .line 1675
    .local v24, "time":J
    const-wide/16 v3, 0x1770

    cmp-long v3, v24, v3

    if-gtz v3, :cond_8

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/support/SecurityService;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    move-object/from16 v0, v23

    invoke-static {v3, v0, v4, v5, v6}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_4

    .line 1695
    .end local v24    # "time":J
    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_8

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1699
    if-lez v20, :cond_8

    .line 1701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/support/SecurityService;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/support/SecurityService;->isSign(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1703
    const/16 v3, 0xf

    move/from16 v0, v20

    if-gt v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/database/AppDatabase;->getIncomcount(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    .line 1705
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-class v4, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1706
    .local v19, "intent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1707
    const-string v3, "number"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1708
    const-string v3, "wastetime"

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    const-string v3, "from"

    const-string v4, "shortcall"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/support/SecurityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 1725
    .end local v17    # "i":I
    .end local v18    # "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->n(Lcom/lenovo/safecenter/support/SecurityService;)J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-gtz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    .line 1728
    .restart local v18    # "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1730
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mVipCode:Z

    if-eqz v3, :cond_16

    .line 1732
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v11

    .line 1734
    .restart local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1735
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_13

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    if-nez v3, :cond_13

    .line 1737
    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1738
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 1744
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Lcom/lenovo/safecenter/support/Contract;)V

    .line 1745
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_9

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "privateCall_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1749
    .restart local v10    # "callmode":Ljava/lang/String;
    const-string v16, "1"

    .line 1750
    .restart local v16    # "handupmode":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->showNotify(Landroid/content/Context;)V

    .line 1753
    const-string v3, "WhiteCall"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1755
    const-string v3, "WhiteCall"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/WhiteCall;

    .line 1756
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/WhiteCall;
    iget-object v3, v9, Lcom/lenovo/safecenter/safemode/WhiteCall;->hand:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1764
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/WhiteCall;
    :cond_12
    :goto_7
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_9

    .line 1766
    const-string v3, "2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v6}, Lcom/lenovo/safecenter/support/SecurityService;->o(Lcom/lenovo/safecenter/support/SecurityService;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/safecenter/support/SecurityService;->sendSMS(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1741
    .end local v10    # "callmode":Ljava/lang/String;
    .end local v16    # "handupmode":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x2

    :goto_8
    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1742
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    goto/16 :goto_6

    .line 1741
    :cond_14
    const/4 v3, 0x1

    goto :goto_8

    .line 1757
    .restart local v10    # "callmode":Ljava/lang/String;
    .restart local v16    # "handupmode":Ljava/lang/String;
    :cond_15
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1759
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 1760
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v3, v9, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 1775
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    .end local v10    # "callmode":Ljava/lang/String;
    .end local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v16    # "handupmode":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-nez v3, :cond_9

    .line 1789
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_17

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    if-nez v3, :cond_17

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    sub-long v24, v3, v5

    .line 1794
    .restart local v24    # "time":J
    const-wide/16 v3, 0x1770

    cmp-long v3, v24, v3

    if-gtz v3, :cond_9

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v6, v7}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_5

    .line 1814
    .end local v24    # "time":J
    :cond_17
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_9

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    if-eqz v3, :cond_9

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswerTime:J

    sub-long v26, v3, v5

    .line 1819
    .local v26, "timespace":J
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timespace===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-ltz v3, :cond_9

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->isSign(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1824
    const-wide/16 v3, 0x3a98

    cmp-long v3, v26, v3

    if-gtz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->getIncomcount(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_9

    .line 1826
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-class v4, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1827
    .restart local v19    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1828
    const-string v3, "number"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1829
    const-string v3, "wastetime"

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1830
    const-string v3, "from"

    const-string v4, "shortcall"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/support/SecurityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 1842
    .end local v13    # "date":J
    .end local v18    # "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "lens":I
    .end local v21    # "maxId":J
    .end local v23    # "number":Ljava/lang/String;
    .end local v26    # "timespace":J
    .end local v28    # "type":I
    :cond_18
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_9

    .line 1844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;

    .line 1845
    .restart local v18    # "info":Lcom/lenovo/safecenter/support/SecurityService$CallInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->j(Lcom/lenovo/safecenter/support/SecurityService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1847
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mVipCode:Z

    if-eqz v3, :cond_1d

    .line 1849
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v11

    .line 1851
    .restart local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_1a

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    if-nez v3, :cond_1a

    .line 1854
    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1855
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    .line 1861
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/lenovo/safecenter/database/AppDatabase;->insertCall(Lcom/lenovo/safecenter/support/Contract;)V

    .line 1862
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_9

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "privateCall_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1866
    .restart local v10    # "callmode":Ljava/lang/String;
    const-string v16, "1"

    .line 1867
    .restart local v16    # "handupmode":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->showNotify(Landroid/content/Context;)V

    .line 1870
    const-string v3, "WhiteCall"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1872
    const-string v3, "WhiteCall"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/WhiteCall;

    .line 1873
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/WhiteCall;
    iget-object v3, v9, Lcom/lenovo/safecenter/safemode/WhiteCall;->hand:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1881
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/WhiteCall;
    :cond_19
    :goto_a
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-eqz v3, :cond_9

    .line 1883
    const-string v3, "2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v6}, Lcom/lenovo/safecenter/support/SecurityService;->o(Lcom/lenovo/safecenter/support/SecurityService;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/safecenter/support/SecurityService;->sendSMS(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1858
    .end local v10    # "callmode":Ljava/lang/String;
    .end local v16    # "handupmode":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x2

    :goto_b
    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setCallType(I)V

    .line 1859
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/lenovo/safecenter/support/Contract;->setIsRead(I)V

    goto/16 :goto_9

    .line 1858
    :cond_1b
    const/4 v3, 0x1

    goto :goto_b

    .line 1874
    .restart local v10    # "callmode":Ljava/lang/String;
    .restart local v16    # "handupmode":Ljava/lang/String;
    :cond_1c
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1876
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 1877
    .local v9, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v3, v9, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 1892
    .end local v9    # "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    .end local v10    # "callmode":Ljava/lang/String;
    .end local v11    # "con":Lcom/lenovo/safecenter/support/Contract;
    .end local v16    # "handupmode":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mBlcok:Z

    if-nez v3, :cond_9

    .line 1906
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_1e

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    if-nez v3, :cond_1e

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mRingTime:J

    sub-long v24, v3, v5

    .line 1911
    .restart local v24    # "time":J
    const-wide/16 v3, 0x1770

    cmp-long v3, v24, v3

    if-gtz v3, :cond_9

    .line 1915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    invoke-static {v3, v4, v5, v6, v7}, Lcom/lenovo/safecenter/utils/SafeCenter;->AddPhoneLog(Landroid/content/Context;Ljava/lang/String;JI)V

    goto/16 :goto_5

    .line 1931
    .end local v24    # "time":J
    :cond_1e
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mType:I

    if-nez v3, :cond_9

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswer:Z

    if-eqz v3, :cond_9

    .line 1933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/SecurityService;->getHarssStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->isAnswerTime:J

    sub-long v26, v3, v5

    .line 1936
    .restart local v26    # "timespace":J
    const-string v3, "CallListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timespace===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-ltz v3, :cond_9

    .line 1939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/support/SecurityService;->isSign(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1941
    const-wide/16 v3, 0x3a98

    cmp-long v3, v26, v3

    if-gtz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->getIncomcount(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_9

    .line 1943
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-class v4, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/FirstSignActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1944
    .restart local v19    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1945
    const-string v3, "number"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SecurityService$CallInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    const-string v3, "wastetime"

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1947
    const-string v3, "from"

    const-string v4, "shortcall"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/support/SecurityService$CallLogObserver;->a:Lcom/lenovo/safecenter/support/SecurityService;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/support/SecurityService;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5
.end method
