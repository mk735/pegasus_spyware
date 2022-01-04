.class final Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;
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
    .line 673
    iput-object p1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v0}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->a(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/support/SMSCheckReceiver$4;->a:Lcom/lenovo/safecenter/support/SMSCheckReceiver;

    invoke-static {v1}, Lcom/lenovo/safecenter/support/SMSCheckReceiver;->b(Lcom/lenovo/safecenter/support/SMSCheckReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->location(Landroid/content/Context;Ljava/lang/String;)V

    .line 676
    return-void
.end method
