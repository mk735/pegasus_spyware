.class final Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$1;
.super Ljava/lang/Thread;
.source "SMSNotifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity$1;->a:Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;->a(Lcom/lenovo/safecenter/MainTab/SMSNotifyActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    return-void
.end method
