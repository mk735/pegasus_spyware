.class final Lcom/lenovo/safecenter/support/SecurityService$4;
.super Ljava/lang/Thread;
.source "SecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SecurityService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SecurityService;)V
    .locals 0

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SecurityService$4;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 2095
    :try_start_0
    const-string v9, "endCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startActivity curtime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->b()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->b()J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-nez v9, :cond_0

    .line 2124
    :goto_0
    return-void

    .line 2097
    :cond_0
    iget-object v9, p0, Lcom/lenovo/safecenter/support/SecurityService$4;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-static {v9}, Lcom/lenovo/safecenter/support/SecurityService;->m(Lcom/lenovo/safecenter/support/SecurityService;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v9

    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->b()J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/safecenter/database/AppDatabase;->getTappingLogs(J)Ljava/util/List;

    move-result-object v5

    .line 2098
    .local v5, "logList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 2099
    .local v8, "size":I
    const-string v9, "endCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "logList size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    if-lez v8, :cond_2

    .line 2101
    new-array v7, v8, [Ljava/lang/String;

    .line 2102
    .local v7, "pkgnames":[Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/String;

    .line 2103
    .local v6, "pernames":[Ljava/lang/String;
    new-array v0, v8, [I

    .line 2105
    .local v0, "actions":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_1

    .line 2106
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/SafeLog;

    .line 2107
    .local v4, "log":Lcom/lenovo/safecenter/support/SafeLog;
    iget-object v9, v4, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    aput-object v9, v7, v2

    .line 2108
    iget-object v9, v4, Lcom/lenovo/safecenter/support/SafeLog;->permName:Ljava/lang/String;

    aput-object v9, v6, v2

    .line 2109
    iget v9, v4, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    aput v9, v0, v2

    .line 2105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2113
    .end local v4    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/lenovo/safecenter/support/SecurityService$4;->a:Lcom/lenovo/safecenter/support/SecurityService;

    const-class v10, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2114
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2115
    const-string v9, "pkgnames"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    const-string v9, "pernames"

    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2117
    const-string v9, "actions"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2118
    iget-object v9, p0, Lcom/lenovo/safecenter/support/SecurityService$4;->a:Lcom/lenovo/safecenter/support/SecurityService;

    invoke-virtual {v9, v3}, Lcom/lenovo/safecenter/support/SecurityService;->startActivity(Landroid/content/Intent;)V

    .line 2120
    .end local v0    # "actions":[I
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "pernames":[Ljava/lang/String;
    .end local v7    # "pkgnames":[Ljava/lang/String;
    :cond_2
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/support/SecurityService;->a(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2121
    .end local v5    # "logList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    .end local v8    # "size":I
    :catch_0
    move-exception v1

    .line 2122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
