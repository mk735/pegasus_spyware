.class final Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$1;
.super Landroid/os/Handler;
.source "FlashProActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    return-void
.end method
