.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$8;
.super Ljava/lang/Object;
.source "AgainstTheftSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;->b()V
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
    .line 225
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$8;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$8;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/safecenter/platform/AgainstTheftSafeMailSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$8;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method
