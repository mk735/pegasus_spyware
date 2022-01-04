.class final Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;
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
    .line 679
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v2, v2, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getId()I

    move-result v2

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$3;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v3, v3, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/WhiteContract;->b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;ILjava/lang/String;)V

    .line 685
    return-void
.end method
