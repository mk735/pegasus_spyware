.class final Lcom/lenovo/safecenter/safemode/WhiteSms$3;
.super Ljava/lang/Object;
.source "WhiteSms.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 133
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v1, p3}, Lcom/lenovo/safecenter/safemode/WhiteSms;->a(Lcom/lenovo/safecenter/safemode/WhiteSms;I)I

    .line 138
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSms;->a(Lcom/lenovo/safecenter/safemode/WhiteSms;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 139
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms$3;->a:Lcom/lenovo/safecenter/safemode/WhiteSms;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->a(Lcom/lenovo/safecenter/safemode/WhiteSms;Lcom/lenovo/safecenter/support/Contract;)V

    .line 140
    const/4 v1, 0x1

    return v1
.end method
