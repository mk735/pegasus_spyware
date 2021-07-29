.class final Lcom/lenovo/safecenter/antivirus/support/InitService$1;
.super Landroid/os/Handler;
.source "InitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/support/InitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/InitService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/InitService;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$1;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 28
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$1;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    const-string v2, "antivirus"

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/safecenter/antivirus/support/InitService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasInitialized"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    sput-boolean v4, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->isupdating:Z

    .line 43
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$1;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/support/InitService;->stopSelf()V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
