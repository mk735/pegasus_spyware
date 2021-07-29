.class final Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;
.super Landroid/os/Handler;
.source "PhoneListenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->deleteLastestCall(Ljava/lang/String;)V

    .line 37
    return-void
.end method
