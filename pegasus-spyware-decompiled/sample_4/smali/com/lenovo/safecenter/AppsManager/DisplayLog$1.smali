.class final Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;
.super Landroid/os/Handler;
.source "DisplayLog.java"


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
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->setAdapter()V

    goto :goto_0

    .line 72
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->a(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->b(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->c(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog$LogAdapter;->notifyDataSetChanged()V

    .line 80
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DisplayLog$1;->a:Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/DisplayLog;->d(Lcom/lenovo/safecenter/AppsManager/DisplayLog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
