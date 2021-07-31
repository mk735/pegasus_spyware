.class final Lcom/lenovo/safecenter/antivirus/support/InitService$2;
.super Ljava/lang/Thread;
.source "InitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/support/InitService;->initDatebase()V
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
    .line 106
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$2;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$2;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/support/InitService;->init()V

    .line 111
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$2;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/support/InitService;->insertMd5_sha1()V

    .line 112
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$2;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->initVirusVersion(Landroid/content/Context;)V

    .line 113
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 114
    .local v1, "mes":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 115
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/support/InitService$2;->a:Lcom/lenovo/safecenter/antivirus/support/InitService;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/support/InitService;->a(Lcom/lenovo/safecenter/antivirus/support/InitService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "mes":Landroid/os/Message;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
