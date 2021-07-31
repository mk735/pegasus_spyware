.class final Lcom/lenovo/safecenter/safemode/WhiteContract$a$4;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract$a;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 727
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$4;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 732
    .local v0, "edit_con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$a$4;->a:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    iget-object v1, v1, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->d:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->showChangeContract(Lcom/lenovo/safecenter/support/Contract;)V

    .line 734
    return-void
.end method
