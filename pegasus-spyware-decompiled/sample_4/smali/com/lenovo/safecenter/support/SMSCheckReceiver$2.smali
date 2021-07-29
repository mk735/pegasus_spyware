.class final Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;
.super Ljava/lang/Thread;
.source "SMSCheckReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/support/SMSCheckReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 636
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v2}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->c(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Z

    move-result v2

    iget-object v3, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v3}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->d(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$2;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v4}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->e(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->destroyPrivacyMessage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Handler;)V

    .line 637
    return-void
.end method
