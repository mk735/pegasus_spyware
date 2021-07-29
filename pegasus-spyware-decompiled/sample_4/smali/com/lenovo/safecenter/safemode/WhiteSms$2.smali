.class final Lcom/lenovo/safecenter/safemode/WhiteSms$2;
.super Ljava/lang/Object;
.source "WhiteSms.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteSms;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteSms;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 126
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteSms;->a(Lcom/lenovo/safecenter/safemode/WhiteSms;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 127
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    const-class v3, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, "intent_number":Landroid/content/Intent;
    const-string v2, "number"

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/safemode/WhiteSms;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method
