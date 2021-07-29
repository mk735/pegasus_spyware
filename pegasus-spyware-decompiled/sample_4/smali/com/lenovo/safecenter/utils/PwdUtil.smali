.class public Lcom/lenovo/safecenter/utils/PwdUtil;
.super Ljava/lang/Object;
.source "PwdUtil.java"


# static fields
.field public static key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "lenovo_wufenglong"

    sput-object v0, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "newPwd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    sget-object v1, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkPassword(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "newPwd"    # Ljava/lang/String;
    .param p2, "isjiaMiJudge"    # Z

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-eqz p2, :cond_2

    .line 96
    sget-object v1, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_2
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkPasswordAnswer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "newAnswer"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    sget-object v2, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->queryPwdQuestionAndAnswer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public static getPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->queryPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPasswordWithJieMi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->queryPwd()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Untils;->jieMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static hasPassword(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static insertPwdQuestionAndAnswer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "question"    # Ljava/lang/String;
    .param p3, "answer"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    sget-object v0, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/lenovo/safecenter/utils/Untils;->jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 130
    :cond_1
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/safecenter/database/AppDatabase;->insertPwdQuestionAndAnswer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static judgeUpdateAppLockPatch(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v1, "com.lenovo.safebox"

    invoke-static {p0, v1}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->mustUpdateAppLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "df":Landroid/content/SharedPreferences;
    const-string v1, "note_update_app_lock_patch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->isInTheSameDay(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/safecenter/MainTab/AppLockMustUpdateDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "note_update_app_lock_patch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v0    # "df":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static judgeUpdateAppLockPatchAtBackgroud(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.lenovo.safebox"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->mustUpdateAppLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "LenovoSafeBox455.apk"

    const-string v1, "com.lenovo.safebox"

    invoke-static {v0, p0, v1}, Lcom/lenovo/safecenter/MainTab/AppDownloadActivity;->copyAssetsFilesInstallAtBackgroud(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static queryPwdQuestionAndAnswer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->queryPwdQuestionAndAnswer()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryPwdQuestionAndAnswerWithJieMi(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 58
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->queryPwdQuestionAndAnswer()[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "str":[Ljava/lang/String;
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    aget-object v1, v0, v3

    sget-object v2, Lcom/lenovo/safecenter/utils/PwdUtil;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/utils/Untils;->jieMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 62
    :cond_0
    return-object v0
.end method
