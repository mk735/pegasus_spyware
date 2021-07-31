.class public Lcom/lenovo/safecenter/antivirus/support/DeleteSDFileBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "DeleteSDFileBroadcast.java"


# static fields
.field public static final DELETE_SD_FILE:Ljava/lang/String; = "action.antivirus.delete.sdfile"

.field public static final DELETE_SD_FILE_COMPLETE:Ljava/lang/String; = "action.antivirus.delete.sdfile.complete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.antivirus.delete.sdfile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 21
    const/4 v4, 0x0

    .line 22
    .local v4, "sucess":Z
    const-string v5, "filePath"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    .line 29
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 30
    .restart local p2    # "intent":Landroid/content/Intent;
    const-string v5, "action.antivirus.delete.sdfile.complete"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v5, "sucess"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const-string v5, "filePath"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    if-eqz v4, :cond_1

    .line 37
    const v5, 0x7f0d031f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "desc":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "db":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v0, v5, v6, v7}, Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v0    # "db":Lcom/lenovo/safecenter/antivirus/support/AntiVirusDBHelper;
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "sucess":Z
    :cond_1
    return-void
.end method
