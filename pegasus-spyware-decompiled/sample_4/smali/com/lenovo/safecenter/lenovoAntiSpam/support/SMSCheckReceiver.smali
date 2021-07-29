.class public Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSCheckReceiver.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/SMSCheckReceiver;->a:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    return-void
.end method
