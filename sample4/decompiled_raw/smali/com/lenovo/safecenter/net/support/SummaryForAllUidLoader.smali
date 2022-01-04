.class public Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SummaryForAllUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/lenovo/safecenter/net/support/PhoneSimInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Bundle;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsService"    # Ljava/lang/Object;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->d:Ljava/util/HashSet;

    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->e:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->b:Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->c:Landroid/os/Bundle;

    .line 53
    return-void
.end method

.method public static buildArgs(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;JJ)Landroid/os/Bundle;
    .locals 2
    .param p0, "info"    # Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 40
    sput-object p0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "start"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    const-string v1, "end"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/lenovo/safecenter/net/support/PhoneSimInfo;
    .locals 24

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->addNetWhiteList(Landroid/content/Context;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->e:Landroid/content/Context;

    const-string v2, "system info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 65
    .local v14, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->e:Landroid/content/Context;

    const-string v2, "wlan info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 66
    .local v15, "prefsWlan":Landroid/content/SharedPreferences;
    const-string v1, "selected uids"

    const-string v2, ""

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "allUid":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 68
    .local v19, "uidString":[Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, v19

    array-length v1, v0

    if-lez v1, :cond_0

    .line 69
    move-object/from16 v10, v19

    .local v10, "arr$":[Ljava/lang/String;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v18, v10, v12

    .line 70
    .local v18, "uid":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 73
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "uid":Ljava/lang/String;
    :cond_0
    const-string v1, "selected uids"

    const-string v2, ""

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "allUidWlan":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 75
    .local v20, "uidStringWlan":[Ljava/lang/String;
    const-string v1, "nac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allUidWlan ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",uidStringWlan[] length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, v20

    array-length v1, v0

    if-lez v1, :cond_1

    .line 77
    move-object/from16 v10, v20

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v13, v10

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_1
    if-ge v12, v13, :cond_1

    aget-object v18, v10, v12

    .line 78
    .restart local v18    # "uid":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 82
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "uid":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->c:Landroid/os/Bundle;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 83
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->c:Landroid/os/Bundle;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 85
    .local v6, "end":J
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    sget-object v2, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    sget-object v23, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    const-string v1, "getSummaryForAllUid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->b:Ljava/lang/Object;

    sget-object v3, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim1IMSI:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static/range {v1 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->invokeForAllUid(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo1:Landroid/net/NetworkStats;

    .line 90
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo1:Landroid/net/NetworkStats;

    move-object/from16 v16, v0

    .line 91
    .local v16, "stats":Landroid/net/NetworkStats;
    if-eqz v16, :cond_2

    .line 92
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkStats;->getUniqueUids()[I

    move-result-object v21

    .line 93
    .local v21, "uids":[I
    move-object/from16 v10, v21

    .local v10, "arr$":[I
    array-length v13, v10

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_2
    if-ge v12, v13, :cond_2

    aget v11, v10, v12

    .line 94
    .local v11, "i":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->d:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 100
    .end local v10    # "arr$":[I
    .end local v11    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "stats":Landroid/net/NetworkStats;
    .end local v21    # "uids":[I
    :cond_2
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    sget-object v2, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v2, v2, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    sget-object v23, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    const-string v1, "getSummaryForAllUid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->b:Ljava/lang/Object;

    sget-object v3, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->sim2IMSI:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static/range {v1 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->invokeForAllUid(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo2:Landroid/net/NetworkStats;

    .line 104
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    iget-object v0, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkInfo2:Landroid/net/NetworkStats;

    move-object/from16 v16, v0

    .line 105
    .restart local v16    # "stats":Landroid/net/NetworkStats;
    if-eqz v16, :cond_3

    .line 106
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkStats;->getUniqueUids()[I

    move-result-object v22

    .line 107
    .local v22, "uids2":[I
    move-object/from16 v10, v22

    .restart local v10    # "arr$":[I
    array-length v13, v10

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_3

    aget v11, v10, v12

    .line 108
    .restart local v11    # "i":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->d:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 112
    .end local v10    # "arr$":[I
    .end local v11    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "stats":Landroid/net/NetworkStats;
    .end local v22    # "uids2":[I
    :cond_3
    sget-object v23, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    const-string v1, "getSummaryForAllUid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->b:Ljava/lang/Object;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static/range {v1 .. v7}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->invokeForAllUid(Ljava/lang/String;Ljava/lang/Object;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->setNetworkInfoWlan(Landroid/net/NetworkStats;)V

    .line 114
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->getNetworkInfoWlan()Landroid/net/NetworkStats;

    move-result-object v17

    .line 115
    .local v17, "statsWlan":Landroid/net/NetworkStats;
    if-eqz v17, :cond_4

    .line 116
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStats;->getUniqueUids()[I

    move-result-object v22

    .line 117
    .restart local v22    # "uids2":[I
    move-object/from16 v10, v22

    .restart local v10    # "arr$":[I
    array-length v13, v10

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_4
    if-ge v12, v13, :cond_4

    aget v11, v10, v12

    .line 118
    .restart local v11    # "i":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->d:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 121
    .end local v10    # "arr$":[I
    .end local v11    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v22    # "uids2":[I
    :cond_4
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->d:Ljava/util/HashSet;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getNetWorkApps(Landroid/content/Context;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/safecenter/net/support/PhoneSimInfo;->networkList:Ljava/util/HashSet;

    .line 122
    sget-object v1, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->a:Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->loadInBackground()Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 134
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->cancelLoad()Z

    .line 135
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->forceLoad()V

    .line 59
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 128
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->cancelLoad()Z

    .line 129
    return-void
.end method
