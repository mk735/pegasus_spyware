.class public Lcom/lenovo/safecenter/utils/DataHelpUtils;
.super Ljava/lang/Object;
.source "DataHelpUtils.java"


# static fields
.field public static allActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static alluserIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->alluserIcon:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string v2, "contract_seetings"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const-string v1, "contract_seetings"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getActivityByName(Ljava/lang/String;)Landroid/app/Activity;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "getac":Landroid/app/Activity;
    sget-object v3, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 224
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    move-object v1, v0

    goto :goto_0

    .line 229
    .end local v0    # "ac":Landroid/app/Activity;
    :cond_1
    return-object v1
.end method

.method public static getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v8, 0x0

    .line 108
    .local v8, "white":Lcom/lenovo/safecenter/support/Contract;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v7, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v7}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    .line 110
    .local v7, "help":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    invoke-virtual {v7, p1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v7, p1}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    :cond_0
    const-string v2, "content://com.lenovo.safecenter.whiteperson/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    new-instance v9, Lcom/lenovo/safecenter/support/Contract;

    invoke-direct {v9}, Lcom/lenovo/safecenter/support/Contract;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v8    # "white":Lcom/lenovo/safecenter/support/Contract;
    .local v9, "white":Lcom/lenovo/safecenter/support/Contract;
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/lenovo/safecenter/support/Contract;->setId(I)V

    .line 120
    const-string v2, "phonenumber"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/lenovo/safecenter/support/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 121
    const-string v2, "name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/lenovo/safecenter/support/Contract;->setName(Ljava/lang/String;)V

    .line 122
    const-string v2, "addtime"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/lenovo/safecenter/support/Contract;->setDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 124
    .end local v9    # "white":Lcom/lenovo/safecenter/support/Contract;
    .restart local v8    # "white":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "help":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    :goto_0
    return-object v8

    .line 126
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v8    # "white":Lcom/lenovo/safecenter/support/Contract;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "help":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    .restart local v9    # "white":Lcom/lenovo/safecenter/support/Contract;
    :catch_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "white":Lcom/lenovo/safecenter/support/Contract;
    .restart local v8    # "white":Lcom/lenovo/safecenter/support/Contract;
    goto :goto_0
.end method

.method public static getHarssAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preName"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "0"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "type":Ljava/lang/String;
    const-string v2, "sms_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const-string v2, "1"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_0
    return-object v1
.end method

.method public static isInWhiteContact(Landroid/content/Context;Ljava/lang/String;)I
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 139
    .local v15, "time3":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 140
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v10}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    .line 141
    .local v10, "help":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v17, v4, v15

    .line 146
    .local v17, "time4":J
    const-string v4, "safemode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "help.isMobileNO(number)=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v4, "content://com.lenovo.safecenter.whiteperson/whiteperson"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 149
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 150
    .local v11, "time":J
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "phonenumber"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',0) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 153
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 154
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v13, v4, v11

    .line 156
    .local v13, "time1":J
    const-string v4, "safemode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.getCount()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    if-lez v8, :cond_1

    .line 164
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "count":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "help":Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    .end local v11    # "time":J
    .end local v13    # "time1":J
    .end local v15    # "time3":J
    .end local v17    # "time4":J
    :goto_0
    return v8

    :catch_0
    move-exception v4

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isInWhiteContactCall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.whiteperson/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "phonenumber"

    aput-object v4, v2, v3

    const-string v3, "realnumber=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 187
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 188
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    if-lez v6, :cond_0

    .line 199
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v6

    .line 196
    :catch_0
    move-exception v2

    :cond_0
    move v6, v8

    .line 199
    goto :goto_0
.end method


# virtual methods
.method public updateTadHost_Str(Lcom/lenovo/safecenter/safemode/SofeModeMain;Lcom/lenovo/safecenter/database/AppDatabase;)Ljava/lang/String;
    .locals 6
    .param p1, "act"    # Lcom/lenovo/safecenter/safemode/SofeModeMain;
    .param p2, "db"    # Lcom/lenovo/safecenter/database/AppDatabase;

    .prologue
    const/4 v4, 0x1

    .line 64
    const v3, 0x7f0d019f

    invoke-virtual {p1, v3}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->getNotReadSms(I)I

    move-result v0

    .line 66
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 68
    const v3, 0x7f0d01a3

    invoke-virtual {p1, v3}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "str_2":Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .end local v2    # "str_2":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public updateTadHostcall_Str(Lcom/lenovo/safecenter/safemode/SofeModeMain;Lcom/lenovo/safecenter/database/AppDatabase;)Ljava/lang/String;
    .locals 6
    .param p1, "act"    # Lcom/lenovo/safecenter/safemode/SofeModeMain;
    .param p2, "db"    # Lcom/lenovo/safecenter/database/AppDatabase;

    .prologue
    .line 77
    const v3, 0x7f0d019e

    invoke-virtual {p1, v3}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lenovo/safecenter/database/AppDatabase;->getNotReadCallCount()I

    move-result v0

    .line 79
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 81
    const v3, 0x7f0d01a3

    invoke-virtual {p1, v3}, Lcom/lenovo/safecenter/safemode/SofeModeMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "str_2":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .end local v2    # "str_2":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
