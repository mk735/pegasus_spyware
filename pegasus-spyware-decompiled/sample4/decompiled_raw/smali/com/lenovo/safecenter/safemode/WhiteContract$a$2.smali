.class final Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract$a;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract$a;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const-class v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string v2, "number"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v3, v3, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->startActivity(Landroid/content/Intent;)V

    .line 677
    return-void
.end method
