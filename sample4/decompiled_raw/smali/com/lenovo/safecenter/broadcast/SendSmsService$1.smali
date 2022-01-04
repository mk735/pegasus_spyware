.class final Lcom/lenovo/safecenter/broadcast/SendSmsService$1;
.super Ljava/lang/Thread;
.source "SendSmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/SendSmsService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/lenovo/safecenter/broadcast/SendSmsService;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/SendSmsService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->b:Lcom/lenovo/safecenter/broadcast/SendSmsService;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->b:Lcom/lenovo/safecenter/broadcast/SendSmsService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->a:Landroid/content/Intent;

    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->a(Lcom/lenovo/safecenter/broadcast/SendSmsService;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->b:Lcom/lenovo/safecenter/broadcast/SendSmsService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->a:Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->b(Lcom/lenovo/safecenter/broadcast/SendSmsService;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->b:Lcom/lenovo/safecenter/broadcast/SendSmsService;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->b:Lcom/lenovo/safecenter/broadcast/SendSmsService;

    invoke-static {v1}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->a(Lcom/lenovo/safecenter/broadcast/SendSmsService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SendSmsService$1;->b:Lcom/lenovo/safecenter/broadcast/SendSmsService;

    invoke-static {v2}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->b(Lcom/lenovo/safecenter/broadcast/SendSmsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/broadcast/SendSmsService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
