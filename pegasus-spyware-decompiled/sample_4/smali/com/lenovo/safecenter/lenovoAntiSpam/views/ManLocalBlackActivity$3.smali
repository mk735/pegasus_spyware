.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;
.super Ljava/lang/Object;
.source "ManLocalBlackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 283
    packed-switch p2, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 285
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const-class v5, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-virtual {v4, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const-class v5, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v3, "intentSMS":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 299
    .end local v3    # "intentSMS":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const-class v5, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackAddActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v1, "intentContract":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-virtual {v4, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 306
    .end local v1    # "intentContract":Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    const-class v5, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v2, "intentHand":Landroid/content/Intent;
    const-string v4, "type"

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v4, "method"

    const-string v5, "add"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-virtual {v4, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
