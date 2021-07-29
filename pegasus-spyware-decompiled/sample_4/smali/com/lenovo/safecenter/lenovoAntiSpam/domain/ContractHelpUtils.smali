.class public Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
.super Ljava/lang/Object;
.source "ContractHelpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "longtime"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "sfd":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 127
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 132
    const-string v0, ""

    .line 133
    .local v0, "status":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    const v1, 0x7f0d0259

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    const v1, 0x7f0d0258

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    goto :goto_0

    .line 143
    :pswitch_2
    const v1, 0x7f0d025a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getWordCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 71
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 72
    .local v0, "ascii":I
    if-ltz v0, :cond_0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 78
    .end local v0    # "ascii":I
    :cond_1
    return v2
.end method

.method public static sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "intentfilter"    # Ljava/lang/String;

    .prologue
    .line 1198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1199
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1201
    return-void
.end method


# virtual methods
.method public Contacts_Name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1060
    const/4 v6, 0x0

    .line 1061
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1065
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1066
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v3

    .line 1068
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1069
    .local v1, "uri1":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\',0)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1070
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    const-string v3, "display_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1073
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1074
    return-object v6
.end method

.method public GetMyContacts(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 184
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    .line 188
    .local v2, "projection":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 189
    .local v11, "prePhone":Ljava/lang/String;
    const-string v4, "content://com.android.contacts/data/phones"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, "uri1":Landroid/net/Uri;
    const-string v5, " sort_key asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 191
    .local v10, "phoneCursor":Landroid/database/Cursor;
    const-string v4, "count"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "===phoneCursor"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const-string v4, "data1"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "phone":Ljava/lang/String;
    const-string v4, "display_name"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "name":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static {v9}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    move-object v11, v9

    .line 200
    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-direct {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>()V

    .line 201
    .local v6, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v6, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v6, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 203
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v6    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "phone":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 208
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 213
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v7

    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_2
    move-object v7, v3

    goto :goto_1
.end method

.method public deleteWhite(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const-string v3, "content://com.lenovo.safecenter.whiteperson/whiteperson"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1173
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

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1175
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "realnumber=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1177
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_0
    return-void
.end method

.method public getAddlist(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .local p2, "wList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1186
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1182
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1193
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
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v0, "W_con":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v1, 0x0

    .line 1099
    .local v1, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1102
    .restart local v1    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isBlack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1108
    :cond_1
    return-object v0
.end method

.method public getBlackoutCon(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "B_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .local p2, "C_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v5, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 929
    .local v3, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    const/4 v4, 0x0

    .line 930
    .local v4, "isCon":Z
    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 931
    .local v6, "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 933
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 935
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 937
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 938
    if-eqz v4, :cond_2

    .line 943
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_3
    const-string v7, "isnull"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 946
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    .end local v4    # "isCon":Z
    .end local v6    # "optNumber":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 953
    .end local v5    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :goto_1
    return-object v5

    .restart local v5    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getConNotInBlackList(Ljava/util/List;Landroid/content/Context;I)Ljava/util/List;
    .locals 21
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v10, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-eqz p1, :cond_6

    .line 594
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 595
    .local v3, "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getLocalBlackList(I)Ljava/util/List;

    move-result-object v4

    .line 596
    .local v4, "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->close()V

    .line 597
    if-eqz v4, :cond_5

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 600
    .local v12, "time1":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 602
    .local v6, "conn":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    const/4 v9, 0x0

    .line 603
    .local v9, "isExist":Z
    invoke-virtual {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .line 604
    .local v11, "optNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 609
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 611
    .local v5, "black":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 613
    const/4 v9, 0x1

    .line 617
    .end local v5    # "black":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_3
    if-nez v9, :cond_0

    .line 619
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    .end local v6    # "conn":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isExist":Z
    .end local v11    # "optNumber":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 624
    .local v14, "timemc":J
    sub-long v16, v14, v12

    .line 625
    .local v16, "tinmmcend":J
    const-string v18, "timespare"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getConNotInBlackListooooo>>>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 637
    .end local v3    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .end local v4    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .end local v10    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .end local v12    # "time1":J
    .end local v14    # "timemc":J
    .end local v16    # "tinmmcend":J
    :goto_1
    return-object v10

    .restart local v3    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .restart local v4    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .restart local v10    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_5
    move-object/from16 v10, p1

    .line 634
    goto :goto_1

    .line 637
    .end local v3    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .end local v4    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :cond_6
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getConNotInWhiteList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v7, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-eqz p1, :cond_6

    .line 757
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getWhitePersonList()Ljava/util/List;

    move-result-object v1

    .line 759
    .local v1, "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->close()V

    .line 760
    if-eqz v1, :cond_5

    .line 763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 767
    .local v3, "conn":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    const/4 v6, 0x0

    .line 768
    .local v6, "isExist":Z
    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    .line 769
    .local v8, "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 771
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 773
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 775
    .local v2, "black":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 777
    const/4 v6, 0x1

    .line 781
    .end local v2    # "black":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_3
    if-nez v6, :cond_0

    .line 783
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 786
    .end local v3    # "conn":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isExist":Z
    .end local v8    # "optNumber":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 796
    .end local v0    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .end local v1    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .end local v7    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v7

    .restart local v0    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .restart local v1    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .restart local v7    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_5
    move-object v7, p1

    .line 793
    goto :goto_1

    .line 796
    .end local v0    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .end local v1    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getInSmsContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 959
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 962
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "date desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 966
    .local v7, "myCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 969
    .local v8, "phoneNumber":Ljava/lang/String;
    const-string v0, "wappush"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    new-instance v9, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-direct {v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>()V

    .line 972
    .local v9, "sms":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v9, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 973
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 977
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "sms":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 979
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 982
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v6

    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_2
    move-object v6, v3

    goto :goto_1
.end method

.method public getIncallContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 986
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    aput-object v1, v2, v0

    const-string v0, "number"

    aput-object v0, v2, v11

    .line 987
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 990
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v7, "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    const-string v0, "number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 993
    .local v9, "number":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 994
    .local v10, "type":I
    invoke-static {v9}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    if-ne v10, v11, :cond_0

    .line 998
    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-direct {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>()V

    .line 999
    .local v6, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v6, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 1000
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1005
    .end local v6    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1006
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1009
    .end local v7    # "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v7

    .restart local v7    # "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_2
    move-object v7, v3

    goto :goto_1
.end method

.method public getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
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

.method public getSimContacts(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 254
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "code"

    const-string v3, "content://icc/adn"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 257
    .local v8, "mCursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v2

    .line 260
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-direct {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>()V

    .line 265
    .local v6, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 266
    .local v9, "nameFieldColumnIndex":I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setName(Ljava/lang/String;)V

    .line 268
    const-string v0, "number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 269
    .local v10, "numberFieldColumnIndex":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 270
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    .end local v6    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v9    # "nameFieldColumnIndex":I
    .end local v10    # "numberFieldColumnIndex":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move-object v2, v7

    .line 276
    goto :goto_0
.end method

.method public getSmsContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 25
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "address"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "person"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "body"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "date"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "type"

    aput-object v3, v4, v2

    .line 482
    .local v4, "projection":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const-string v3, "display_name"

    aput-object v3, v23, v2

    .line 483
    .local v23, "projectionIn":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "address,date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 484
    .local v17, "myCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 489
    .local v8, "name":Ljava/lang/String;
    const-string v22, ""

    .line 491
    .local v22, "preNum":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_0

    .line 492
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 493
    const-string v2, "address"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 494
    .local v19, "phoneColumn":I
    const-string v2, "body"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 495
    .local v24, "smsColumn":I
    const-string v2, "date"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 496
    .local v14, "dateColumn":I
    const/16 v18, 0x0

    .line 497
    .end local v8    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 498
    .local v21, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 499
    .local v12, "smsContent":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 500
    .local v11, "date":Ljava/lang/String;
    if-eqz v21, :cond_3

    const-string v2, "wappush"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {v21 .. v21}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 509
    move-object/from16 v22, v21

    .line 513
    const-string v2, "content://com.android.contacts/data/phones"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 515
    .local v6, "uri1":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, v23

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 518
    .local v20, "phoneCursor":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 520
    const-string v2, "display_name"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 523
    .end local v18    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 525
    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    const/4 v10, 0x0

    move-object/from16 v9, v21

    invoke-direct/range {v7 .. v12}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 527
    .local v7, "sms":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v6    # "uri1":Landroid/net/Uri;
    .end local v7    # "sms":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v20    # "phoneCursor":Landroid/database/Cursor;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 533
    .end local v11    # "date":Ljava/lang/String;
    .end local v12    # "smsContent":Ljava/lang/String;
    .end local v14    # "dateColumn":I
    .end local v19    # "phoneColumn":I
    .end local v21    # "phoneNumber":Ljava/lang/String;
    .end local v24    # "smsColumn":I
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 534
    const-string v2, "conlist"

    const-string v3, "==++++++++++++++list.size()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v2, "conlist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 537
    new-instance v13, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;)V

    .line 538
    .local v13, "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 542
    .end local v13    # "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_3
    return-object v16

    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_1
    const/16 v16, 0x0

    goto :goto_3

    .end local v8    # "name":Ljava/lang/String;
    .restart local v6    # "uri1":Landroid/net/Uri;
    .restart local v11    # "date":Ljava/lang/String;
    .restart local v12    # "smsContent":Ljava/lang/String;
    .restart local v14    # "dateColumn":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "phoneColumn":I
    .restart local v20    # "phoneCursor":Landroid/database/Cursor;
    .restart local v21    # "phoneNumber":Ljava/lang/String;
    .restart local v24    # "smsColumn":I
    :cond_2
    move-object/from16 v8, v18

    .end local v18    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    goto :goto_1

    .end local v6    # "uri1":Landroid/net/Uri;
    .end local v8    # "name":Ljava/lang/String;
    .end local v20    # "phoneCursor":Landroid/database/Cursor;
    .restart local v18    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v8, v18

    .end local v18    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    goto :goto_2
.end method

.method public getSmsNotInWhiteList(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 21
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v10, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-eqz p1, :cond_6

    .line 647
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 648
    .local v3, "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSmsWhitePersonList()Ljava/util/List;

    move-result-object v4

    .line 649
    .local v4, "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->close()V

    .line 650
    if-eqz v4, :cond_5

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 653
    .local v12, "time1":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 655
    .local v6, "conn":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    const/4 v9, 0x0

    .line 656
    .local v9, "isExist":Z
    invoke-virtual {v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .line 657
    .local v11, "optNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 659
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 662
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 665
    .local v5, "black":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 667
    const/4 v9, 0x1

    .line 671
    .end local v5    # "black":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    :cond_3
    if-nez v9, :cond_0

    .line 673
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    .end local v6    # "conn":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isExist":Z
    .end local v11    # "optNumber":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 678
    .local v14, "timemc":J
    sub-long v16, v14, v12

    .line 679
    .local v16, "tinmmcend":J
    const-string v18, "timespare"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getConNotInBlackListooooo>>>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 691
    .end local v3    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .end local v4    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .end local v10    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    .end local v12    # "time1":J
    .end local v14    # "timemc":J
    .end local v16    # "tinmmcend":J
    :goto_1
    return-object v10

    .restart local v3    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .restart local v4    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .restart local v10    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_5
    move-object/from16 v10, p1

    .line 688
    goto :goto_1

    .line 691
    .end local v3    # "DBhelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .end local v4    # "balckList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :cond_6
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getWhiteFromadd(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1080
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v0, "W_con":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v1, 0x0

    .line 1082
    .local v1, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1084
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1085
    .restart local v1    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isInPrivate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1088
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1091
    :cond_1
    return-object v0
.end method

.method public getcallContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 440
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    const-string v0, "name"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 442
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, " number,date desc "

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 445
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v11, "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const-string v13, ""

    .line 447
    .local v13, "preNum":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    const-string v0, "number"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "number":Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "name"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    move-object v13, v6

    .line 457
    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    const-string v0, "date"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "type"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 461
    .local v4, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 466
    .end local v4    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 467
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 468
    new-instance v10, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;

    invoke-direct {v10, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;)V

    .line 469
    .local v10, "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    invoke-static {v11, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    .end local v10    # "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    .end local v11    # "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v11

    .restart local v11    # "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_2
    move-object v11, v3

    goto :goto_1
.end method

.method public getcallContractList_calling(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 402
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 404
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const-string v5, " number,date desc "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 407
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v10, "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const-string v12, ""

    .line 409
    .local v12, "preNum":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const-string v0, "number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    move-object v12, v5

    .line 419
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    const-string v0, "date"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 423
    .local v3, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    .end local v3    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 429
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 430
    new-instance v9, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;

    invoke-direct {v9, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;)V

    .line 431
    .local v9, "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    invoke-static {v10, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 435
    .end local v9    # "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    .end local v10    # "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v10

    .restart local v10    # "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public getwhiteSmsContractList(Landroid/content/Context;)Ljava/util/List;
    .locals 21
    .param p1, "act"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "type"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "number"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "content"

    aput-object v3, v4, v2

    .line 549
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.lenovo.safecenter.HarassProvider/safe_log_harass"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, " type =?  and fromtype=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v20, "0"

    aput-object v20, v6, v7

    const/4 v7, 0x1

    const-string v20, "3"

    aput-object v20, v6, v7

    const-string v7, " number,time desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 553
    .local v13, "myCursor":Landroid/database/Cursor;
    const-string v16, ""

    .line 554
    .local v16, "preNum":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 555
    invoke-interface {v13, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 556
    const-string v2, "number"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 557
    .local v14, "phoneColumn":I
    const-string v2, "content"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 558
    .local v18, "smsColumn":I
    const-string v2, "time"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 559
    .local v10, "dateColumn":I
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, "phoneNumber":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 561
    .local v19, "smsContent":Ljava/lang/String;
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 562
    .local v9, "date":Ljava/lang/String;
    if-eqz v15, :cond_0

    const-string v2, "wappush"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v15}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 566
    move-object/from16 v16, v15

    .line 567
    new-instance v17, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    invoke-direct/range {v17 .. v17}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;-><init>()V

    .line 568
    .local v17, "sms":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setPhoneNumber(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setSmsContent(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setDate(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v17    # "sms":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 576
    .end local v9    # "date":Ljava/lang/String;
    .end local v10    # "dateColumn":I
    .end local v14    # "phoneColumn":I
    .end local v15    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "smsColumn":I
    .end local v19    # "smsContent":Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 577
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 578
    new-instance v8, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;)V

    .line 579
    .local v8, "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    invoke-static {v12, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 583
    .end local v8    # "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils$a;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v12

    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public hasWhite(Ljava/util/List;Landroid/content/Context;)Z
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1114
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v2, 0x0

    .line 1115
    .local v2, "ishas":Z
    const/4 v0, 0x0

    .line 1116
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1119
    .restart local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isInPrivate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1122
    const/4 v2, 0x1

    .line 1126
    :cond_0
    return v2

    .line 1116
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public hasblack(Ljava/util/List;Landroid/content/Context;)Z
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v2, 0x0

    .line 1133
    .local v2, "ishas":Z
    const/4 v0, 0x0

    .line 1134
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1137
    .restart local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getRealPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->setRealnumber(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getRealnumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isBlack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1140
    const/4 v2, 0x1

    .line 1144
    :cond_0
    return v2

    .line 1134
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public isBlack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1149
    const-string v0, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1151
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

    .line 1153
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1154
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1155
    if-lez v6, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public isInContacts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 290
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 292
    .local v1, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v3}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 293
    .local v0, "bool":Z
    if-eqz v0, :cond_1

    .line 295
    const/4 v3, 0x1

    .line 298
    .end local v0    # "bool":Z
    .end local v1    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_2
    return v3
.end method

.method public isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 334
    :cond_0
    const-string v0, "content://com.android.contacts/data/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 337
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 338
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 340
    if-lez v6, :cond_1

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPrivate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1160
    const-string v0, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1162
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

    .line 1164
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1165
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1166
    if-lez v6, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public isInSmsdia(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 355
    :cond_0
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v1, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 356
    .local v1, "dataHelper":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSmsWhitePersonList()Ljava/util/List;

    move-result-object v3

    .line 357
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->close()V

    .line 358
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 363
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    const/4 v4, 0x1

    .line 369
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isMobileNO(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v3, "^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 39
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 40
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

.method public judgeNum_upload(ILjava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "type"    # I
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1016
    .local v8, "time1":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v7, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getInSmsContractList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1026
    .local v2, "conList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-eqz v2, :cond_3

    .line 1028
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 1030
    .local v5, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    const/4 v6, 0x0

    .line 1036
    .local v6, "isUpload":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 1038
    .local v1, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1040
    const/4 v6, 0x1

    .line 1044
    .end local v1    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_2
    if-eqz v6, :cond_0

    .line 1046
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    .end local v6    # "isUpload":Z
    :cond_3
    const-string v10, "timespare"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "timespare=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1055
    .end local v7    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :goto_1
    return-object v7

    .restart local v7    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public noContractRepeatList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "repeatelist":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-eqz p1, :cond_6

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 220
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 221
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_1
    const/4 v4, 0x0

    .line 224
    .local v4, "isExist":Z
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "opt_number":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 231
    .local v1, "contract":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 232
    const/4 v4, 0x1

    .line 236
    .end local v1    # "contract":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_4
    if-nez v4, :cond_0

    .line 237
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isExist":Z
    .end local v6    # "opt_number":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 245
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :goto_1
    return-object v5

    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
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

.method public updateListName(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p2, "cxt"    # Landroid/content/Context;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    .local p4, "contractList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->GetMyContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 805
    .local v1, "conList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-object p1

    .line 809
    :cond_1
    const-string v8, "conList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "==updateListName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    if-eqz p4, :cond_2

    .line 812
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 814
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 818
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v7, "uList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 821
    .local v5, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 822
    .local v6, "optNumber":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 824
    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 826
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 827
    .restart local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 829
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 831
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 833
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setName(Ljava/lang/String;)V

    .line 834
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 840
    :cond_6
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 841
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 843
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setName(Ljava/lang/String;)V

    .line 844
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 852
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    .end local v6    # "optNumber":Ljava/lang/String;
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 854
    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v2, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 855
    .local v2, "db":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->syncConName(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateSimName(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p2, "cxt"    # Landroid/content/Context;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->getSimContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 865
    .local v1, "conList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;>;"
    if-nez v1, :cond_1

    .line 921
    :cond_0
    return-object p1

    .line 870
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v6, "uList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    .line 873
    .local v5, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;

    .line 874
    .local v0, "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 875
    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 890
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->setName(Ljava/lang/String;)V

    .line 891
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v0    # "con":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/Contract;
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 899
    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v2, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    .line 900
    .local v2, "db":Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->syncConName(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
