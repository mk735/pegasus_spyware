.class final Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;
.super Ljava/lang/Thread;
.source "FlashProActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 57
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->animation2:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->animation2:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->animation2:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 66
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->a:Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->a(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
