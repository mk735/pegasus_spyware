.class final Lcom/lenovo/install/InstallActivity$7;
.super Ljava/lang/Thread;
.source "InstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/InstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallActivity;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 795
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->x(Lcom/lenovo/install/InstallActivity;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->w(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->getAppTrusted(Ljava/lang/String;)I

    move-result v0

    .line 796
    .local v0, "appTrust":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 797
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 798
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    if-lez v3, :cond_2

    .line 799
    const/4 v0, 0x0

    .line 805
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 806
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 807
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iput v0, v3, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 808
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v4, "privacy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 809
    const-string v3, "privacy"

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 797
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/safecenter/support/AppInfo;>;"
    :cond_3
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 812
    const-string v3, "location"

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 814
    :cond_4
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v4, "device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 815
    const-string v3, "device"

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 817
    :cond_5
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v4, "call_phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 818
    const-string v3, "call_phone"

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 820
    :cond_6
    iget-object v3, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v3}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v3, v3, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v4, "sendmessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 821
    const-string v3, "sendmessage"

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->j(Lcom/lenovo/install/InstallActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 825
    :cond_7
    sget-object v3, Lcom/lenovo/install/PackageUtil;->newAppMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/lenovo/install/InstallActivity$7;->a:Lcom/lenovo/install/InstallActivity;

    invoke-static {v4}, Lcom/lenovo/install/InstallActivity;->w(Lcom/lenovo/install/InstallActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    return-void
.end method
