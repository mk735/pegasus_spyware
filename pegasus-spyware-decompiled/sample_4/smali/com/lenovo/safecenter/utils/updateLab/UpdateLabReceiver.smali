.class public Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateLabReceiver.java"


# instance fields
.field private a:Lcom/lenovo/safecenter/utils/LeSafeObservable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(ILandroid/content/Intent;)V
    .locals 4
    .param p0, "index"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 287
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 290
    invoke-static {p0, v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 293
    invoke-static {p0, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "time"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.lenovo.antivirus.updateresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    if-nez v3, :cond_5

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0d0390

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    sput-boolean v1, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isfrom:Z

    invoke-static {v1, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    const-string v5, "wu0wu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", version="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeUpdatedLab()V

    :cond_1
    if-nez v2, :cond_3

    .line 56
    const-string v2, "com.lenovo.antivirus.queryresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v1, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    :cond_2
    :goto_2
    invoke-static {v1, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    :goto_3
    if-eqz v0, :cond_3

    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isQueryedLab()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;->a:Lcom/lenovo/safecenter/utils/LeSafeObservable;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeQueryedLab()V

    .line 59
    :cond_3
    const-string v0, "com.lenovo.safecenter.Broadcast.updateLab"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "wu0wu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoupdate action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "wu0wu"

    const-string v1, "isNetworkAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getLastUpdateLabTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceUpdateLab(Landroid/content/Context;)V

    .line 61
    :cond_4
    return-void

    .line 55
    :cond_5
    if-ne v3, v0, :cond_6

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0d0391

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    if-ne v3, v8, :cond_0

    sget-boolean v2, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isfrom:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0d02d7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0d0392

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    const-string v2, "com.lenovo.antispam.blackupdateresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v0, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    if-nez v3, :cond_a

    invoke-static {v0, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_9

    const v2, 0x7f0d05a5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_4
    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    move v2, v0

    goto/16 :goto_1

    :cond_a
    if-ne v3, v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    invoke-static {v0, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_9

    const v2, 0x7f0d05a6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_b
    if-ne v3, v8, :cond_9

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_9

    const v2, 0x7f0d05a7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_c
    const-string v2, "com.lenovo.antispam.sysupdateresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v8, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    if-nez v3, :cond_e

    invoke-static {v8, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    :cond_d
    :goto_5
    invoke-static {v8, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    move v2, v0

    goto/16 :goto_1

    :cond_e
    if-ne v3, v0, :cond_d

    invoke-static {v8, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    goto :goto_5

    :cond_f
    const-string v2, "com.lenovo.antispam.signcallupdateresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v9, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    if-nez v3, :cond_11

    invoke-static {v9, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_10

    const v2, 0x7f0d0582

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_10
    :goto_6
    invoke-static {v9, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    move v2, v0

    goto/16 :goto_1

    :cond_11
    if-ne v3, v0, :cond_12

    invoke-static {v9, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/utils/Const;->setLastUpdateLabTime(J)V

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_10

    const v2, 0x7f0d0583

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_12
    if-ne v3, v8, :cond_10

    sget-boolean v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    if-eqz v2, :cond_10

    const v2, 0x7f0d0584

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 56
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_14

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_2

    invoke-static {v1, v8}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    goto/16 :goto_2

    :cond_15
    const-string v2, "com.lenovo.antispam.blackqueryresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v0, p2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;->a(ILandroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    goto/16 :goto_3

    :cond_16
    const-string v2, "com.lenovo.antispam.sysqueryresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v8, p2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;->a(ILandroid/content/Intent;)V

    invoke-static {v8, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    goto/16 :goto_3

    :cond_17
    const-string v2, "com.lenovo.antispam.signcallqueryresult"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v9, p2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabReceiver;->a(ILandroid/content/Intent;)V

    invoke-static {v9, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    goto/16 :goto_3

    :cond_18
    move v0, v1

    goto/16 :goto_3

    :cond_19
    move v2, v1

    goto/16 :goto_1
.end method
