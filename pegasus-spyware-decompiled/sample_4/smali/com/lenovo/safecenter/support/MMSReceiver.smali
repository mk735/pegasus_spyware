.class public Lcom/lenovo/safecenter/support/MMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MMSReceiver.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->a:Z

    return-void
.end method


# virtual methods
.method public isDeal(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 152
    :try_start_0
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    .local v1, "harssState":Z
    if-nez v1, :cond_1

    .line 181
    .end local v1    # "harssState":Z
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->judgeNightHarass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/MMSReceiver;->abortBroadcast()V

    .line 164
    iput v6, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->b:I

    .line 165
    iget-object v2, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/lenovo/safecenter/support/MMSReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-boolean v6, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->a:Z

    .line 169
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->a:Z

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/safecenter/support/MMSReceiver;->isIntercept(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/lenovo/safecenter/support/MMSReceiver;->abortBroadcast()V

    .line 173
    iput v6, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->b:I

    .line 174
    iget-object v2, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/lenovo/safecenter/support/MMSReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-boolean v6, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->a:Z

    goto :goto_0
.end method

.method public isIntercept(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 99
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v6, "intercall_mode_type"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "mode":I
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    .line 102
    .local v3, "untils":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 104
    invoke-virtual {v3, p1, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, "isExistCon":Z
    if-nez v0, :cond_1

    .line 127
    .end local v0    # "isExistCon":Z
    :cond_0
    :goto_0
    return v4

    .line 110
    :cond_1
    if-nez v1, :cond_3

    .line 112
    invoke-static {p1, v5, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    invoke-static {p1, v5, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->isNetBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    move v4, v5

    .line 127
    goto :goto_0

    .line 120
    :cond_3
    if-ne v1, v4, :cond_2

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/safecenter/support/MMSReceiver;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0
.end method

.method public isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 136
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 137
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    if-lez v6, :cond_0

    .line 140
    const/4 v2, 0x1

    .line 144
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "count":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v2, v8

    .line 142
    goto :goto_0

    .line 144
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    move v2, v8

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    return-void
.end method

.method public sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "black_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "black_body"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "black_date"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "fromtype"

    iget v2, p0, Lcom/lenovo/safecenter/support/MMSReceiver;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v1, "ACTION_BLACK_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
