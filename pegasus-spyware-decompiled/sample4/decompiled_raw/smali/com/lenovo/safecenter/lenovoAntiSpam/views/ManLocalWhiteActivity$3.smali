.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;
.super Ljava/lang/Object;
.source "ManLocalWhiteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    packed-switch p2, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 237
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const-class v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "from"

    const-string v4, "phone"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const-class v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v1, "intentContract":Landroid/content/Intent;
    const-string v3, "from"

    const-string v4, "call"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    .end local v1    # "intentContract":Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    const-class v4, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManAddWhiteContract;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v2, "intentSMS":Landroid/content/Intent;
    const-string v3, "from"

    const-string v4, "sms"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    .end local v2    # "intentSMS":Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->showAddDialog()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
