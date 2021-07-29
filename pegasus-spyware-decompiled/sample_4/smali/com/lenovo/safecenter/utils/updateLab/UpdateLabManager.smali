.class public Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;
.super Ljava/lang/Object;
.source "UpdateLabManager.java"


# static fields
.field public static final ACTION_NOTICE_QUERY_NETBLACK_LAB:Ljava/lang/String; = "com.lenovo.antispam.netblackquery"

.field public static final ACTION_NOTICE_QUERY_SIGNCALL_LAB:Ljava/lang/String; = "com.lenovo.antispam.signcallquery"

.field public static final ACTION_NOTICE_QUERY_VIRUS_LAB:Ljava/lang/String; = "com.lenovo.antivirus.query"

.field public static final ACTION_NOTICE_UPDATE_NETBLACK_LAB:Ljava/lang/String; = "com.lenovo.antispam.netblackupdate"

.field public static final ACTION_NOTICE_UPDATE_SIGNCALL_LAB:Ljava/lang/String; = "com.lenovo.antispam.signcallupdate"

.field public static final ACTION_NOTICE_UPDATE_SYS_LAB:Ljava/lang/String; = "com.lenovo.antispam.sysupdate"

.field public static final ACTION_NOTICE_UPDATE_VIRUS_LAB:Ljava/lang/String; = "com.lenovo.antivirus.update"

.field public static final UPDATE_STATUS_NET_ERROR:I = 0x2

.field public static final UPDATE_STATUS_NEWEST:I = 0x1

.field public static final UPDATE_STATUS_SUCCESS:I

.field private static a:[Z

.field private static b:[Z

.field private static c:[I

.field private static d:[I

.field public static isManualUpdateLab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isManualUpdateLab:Z

    .line 46
    new-array v0, v1, [Z

    sput-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    .line 51
    new-array v0, v1, [Z

    sput-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    .line 53
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    .line 55
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIs_QueryLabing(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getIs_UpdateLabing(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getQueryLabStatus(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 75
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getUpdateLabStatus(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v0, v0, p0

    return v0
.end method

.method public static hasNewVersionLab()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 191
    :cond_1
    return v0
.end method

.method public static hasUpdatedSuccessLab()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 202
    :cond_1
    return v0
.end method

.method public static initQueryLabStatus()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 206
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 207
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 208
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 209
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 210
    return-void
.end method

.method public static isAllNewVersionLab()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 214
    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aget v2, v2, v0

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-ne v2, v0, :cond_0

    .line 220
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isQueryedLab()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 156
    :cond_1
    return v0
.end method

.method public static isUpdateingLab()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 161
    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    sget-object v2, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 165
    :cond_1
    return v0
.end method

.method public static setIs_QueryLabing(IZ)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "isQuerying"    # Z

    .prologue
    .line 90
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->b:[Z

    aput-boolean p1, v0, p0

    .line 91
    return-void
.end method

.method public static setIs_UpdateLabing(IZ)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "isUpdating"    # Z

    .prologue
    .line 100
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->a:[Z

    aput-boolean p1, v0, p0

    .line 101
    return-void
.end method

.method public static setQueryLabStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 169
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v0, v0, v3

    if-eq v0, v1, :cond_0

    .line 170
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aput v2, v0, v3

    .line 172
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v0, v0, v4

    if-eq v0, v1, :cond_1

    .line 173
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aput v2, v0, v4

    .line 175
    :cond_1
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v0, v0, v1

    if-eq v0, v1, :cond_2

    .line 176
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aput v2, v0, v1

    .line 178
    :cond_2
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aget v0, v0, v5

    if-eq v0, v1, :cond_3

    .line 179
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aput v2, v0, v5

    .line 181
    :cond_3
    return-void
.end method

.method public static setQueryLabStatus(II)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "state"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aput p1, v0, p0

    .line 81
    return-void
.end method

.method public static setUpdateLabStatus(II)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "state"    # I

    .prologue
    .line 64
    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aput p1, v0, p0

    .line 65
    return-void
.end method

.method public static startServiceQueryLab(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 141
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/httpApi/LeSafeAPI;->getAppSync(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->hasNewVersionLab()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->isAllNewVersionLab()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getDialogNoticeUpdateTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getLastUpdateLabTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 143
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_QueryLabing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wu0wu"

    const-string v3, "startServiceQueryVirusLab-->"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->c:[I

    aput v7, v0, v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.lenovo.antivirus.query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v2, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    .line 144
    :cond_0
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_QueryLabing(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wu0wu"

    const-string v2, "startServiceQueryNetBlackLab-->"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v7}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.lenovo.antispam.netblackquery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v1, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    .line 145
    :cond_1
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_QueryLabing(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wu0wu"

    const-string v2, "startServiceQuerySysLab-->"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v7}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.lenovo.antispam.sysquery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v8, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    .line 146
    :cond_2
    invoke-static {v9}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_QueryLabing(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "wu0wu"

    const-string v2, "startServiceQuerySignCallLab-->"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v7}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setQueryLabStatus(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.lenovo.antispam.signcallquery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v9, v1}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_QueryLabing(IZ)V

    .line 148
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 142
    goto/16 :goto_0
.end method

.method public static startServiceUpdateLab(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 105
    invoke-static {v4}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 106
    invoke-static {v4}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wu0wu"

    const-string v1, "startServiceUpdateVirusLab-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->d:[I

    aput v3, v0, v4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.antivirus.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v4, v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeUpdatingLab()V

    .line 108
    :cond_0
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 109
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wu0wu"

    const-string v1, "startServiceUpdateNetBlackLab-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.antispam.netblackupdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v2, v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeUpdatingLab()V

    .line 111
    :cond_1
    invoke-static {v5}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 112
    invoke-static {v5}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wu0wu"

    const-string v1, "startServiceUpdateSysLab-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.antispam.sysupdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v5, v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeUpdatingLab()V

    .line 114
    :cond_2
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getQueryLabStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 115
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->getIs_UpdateLabing(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "wu0wu"

    const-string v1, "startServiceUpdateSignCallLab-->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v3}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setUpdateLabStatus(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.antispam.signcallupdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v6, v2}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->setIs_UpdateLabing(IZ)V

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeUpdatingLab()V

    .line 117
    :cond_3
    return-void
.end method

.method public static useWifiUpdateVirusLab(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->isAutoUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/AutoUpdateLabManager;->getAutoUpdateMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "wu0wu"

    const-string v1, "WifiConnectedReceiver is_auto_update=true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getLastUpdateLabTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "wu0wu"

    const-string v1, "WifiConnectedReceiver isInTheSameDay=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/WflUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "wu0wu"

    const-string v1, "WifiConnectedReceiver isWifiNetwork=true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/updateLab/UpdateLabManager;->startServiceUpdateLab(Landroid/content/Context;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, "wu0wu"

    const-string v1, "WifiConnectedReceiver isInTheSameDay=true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
