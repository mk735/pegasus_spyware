.class final Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;
.super Ljava/lang/Thread;
.source "LowLevelNetFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/LowLevelNetFilter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 171
    invoke-static {}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->addNetWhiteList(Landroid/content/Context;)V

    .line 172
    sget-object v10, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 173
    :cond_0
    invoke-static {}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a()Landroid/content/Context;

    move-result-object v10

    const-string v11, "system info"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 175
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "selected uids"

    const-string v11, ""

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "allUid":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "uidString":[Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    array-length v10, v9

    if-lez v10, :cond_1

    .line 178
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v8, v3, v4

    .line 179
    .local v8, "uid":Ljava/lang/String;
    sget-object v10, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "allUid":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "uid":Ljava/lang/String;
    .end local v9    # "uidString":[Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 185
    :cond_2
    invoke-static {}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a()Landroid/content/Context;

    move-result-object v10

    const-string v11, "wlan info"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 187
    .local v7, "prefsWlan":Landroid/content/SharedPreferences;
    const-string v10, "selected uids"

    const-string v11, ""

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "allUid":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 189
    .restart local v9    # "uidString":[Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    array-length v10, v9

    if-lez v10, :cond_3

    .line 190
    move-object v3, v9

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v5, v3

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v3, v4

    .line 191
    .restart local v8    # "uid":Ljava/lang/String;
    sget-object v10, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "allUid":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "prefsWlan":Landroid/content/SharedPreferences;
    .end local v8    # "uid":Ljava/lang/String;
    .end local v9    # "uidString":[Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v10}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->j(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->refreshUid()V

    .line 196
    iget-object v10, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v12}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->k(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/HashSet;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getAppInfos(Landroid/content/Context;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 197
    invoke-static {}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/net/support/AppInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/support/AppInfo;

    .line 199
    .local v1, "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    iget-object v10, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v10}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->k(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/HashSet;

    move-result-object v10

    iget v11, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const/16 v11, 0x2711

    if-eq v10, v11, :cond_4

    iget v10, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const/16 v11, 0x271d

    if-eq v10, v11, :cond_4

    iget v10, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const/16 v11, 0x3e9

    if-eq v10, v11, :cond_4

    iget v10, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const/16 v11, 0x3f5

    if-eq v10, v11, :cond_4

    iget v10, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const/16 v11, 0x2710

    if-le v10, v11, :cond_4

    iget v10, v1, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    const-string v11, "media"

    invoke-static {v11}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v11

    if-eq v10, v11, :cond_4

    .line 208
    iget-object v10, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v10}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->h(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    .end local v1    # "appInfo":Lcom/lenovo/safecenter/net/support/AppInfo;
    :cond_5
    iget-object v10, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;->a:Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    invoke-static {v10}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    return-void
.end method
