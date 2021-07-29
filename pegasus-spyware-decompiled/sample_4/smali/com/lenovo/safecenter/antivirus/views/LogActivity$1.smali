.class final Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;
.super Landroid/os/Handler;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->a(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->b(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity$VirusAdapter;->notifyDataSetChanged()V

    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->c(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->a(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/LogActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/LogActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/LogActivity;->d(Lcom/lenovo/safecenter/antivirus/views/LogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
