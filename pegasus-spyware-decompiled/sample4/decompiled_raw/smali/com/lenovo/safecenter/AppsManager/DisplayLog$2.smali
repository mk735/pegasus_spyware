.class final Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;
.super Ljava/lang/Object;
.source "DisplayLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/DisplayLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const-class v4, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->startActivity(Landroid/content/Intent;)V

    .line 97
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->finish()V

    .line 111
    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->e(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$2;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->setResult(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
