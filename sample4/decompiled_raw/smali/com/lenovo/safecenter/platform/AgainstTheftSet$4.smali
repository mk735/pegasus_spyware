.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$4;
.super Ljava/lang/Object;
.source "AgainstTheftSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 593
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafePhoneSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 596
    const-string v1, "firstsetphone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$4;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->startActivityForResult(Landroid/content/Intent;I)V

    .line 598
    return-void
.end method
