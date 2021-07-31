.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;
.super Ljava/lang/Object;
.source "ApplicationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/ApplicationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->q(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->j(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(Ljava/util/ArrayList;I)V

    .line 378
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->r(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)I

    .line 379
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->i(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$9;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->m(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
