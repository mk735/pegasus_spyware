.class final Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;
.super Landroid/os/Handler;
.source "SyncDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/support/SyncDownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->a(Lcom/lenovo/safecenter/antivirus/support/SyncDownService;)V

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->stopSelf()V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/support/SyncDownService$1;->a:Lcom/lenovo/safecenter/antivirus/support/SyncDownService;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/support/SyncDownService;->stopSelf()V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
