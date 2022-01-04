.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 87
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const-class v4, Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v3, "fromtype"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v0    # "callIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const-class v4, Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v3, "fromtype"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    .end local v2    # "smsIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const-class v4, Lcom/lenovo/safecenter/safemode/ErrorAddContract;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v1, "contractIntent":Landroid/content/Intent;
    const-string v3, "fromtype"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v1    # "contractIntent":Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->showAddDialog()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
