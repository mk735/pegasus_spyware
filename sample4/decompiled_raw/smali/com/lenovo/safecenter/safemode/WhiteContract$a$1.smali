.class final Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;
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
    .line 655
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 660
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v5, v5, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v5}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 662
    .local v0, "callIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v0    # "callIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$1;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    const v3, 0x7f0d04c8

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
