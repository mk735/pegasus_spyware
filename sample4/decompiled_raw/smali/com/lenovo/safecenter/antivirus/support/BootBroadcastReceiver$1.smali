.class final Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "BootBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver$1;->a:Lcom/lenovo/safecenter/antivirus/support/BootBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 26
    return-void
.end method
