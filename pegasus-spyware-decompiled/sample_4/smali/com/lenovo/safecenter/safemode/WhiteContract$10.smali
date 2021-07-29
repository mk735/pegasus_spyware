.class final Lcom/lenovo/safecenter/safemode/WhiteContract$10;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;->showAddMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 204
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 206
    :pswitch_0
    sput-boolean v5, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 207
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const-class v4, Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v3, "fromtype"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    .end local v0    # "callIntent":Landroid/content/Intent;
    :pswitch_1
    sput-boolean v5, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 214
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const-class v4, Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v3, "fromtype"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v2    # "smsIntent":Landroid/content/Intent;
    :pswitch_2
    sput-boolean v5, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 221
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const-class v4, Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v1, "contractIntent":Landroid/content/Intent;
    const-string v3, "fromtype"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v1    # "contractIntent":Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$10;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->showAddDialog()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
