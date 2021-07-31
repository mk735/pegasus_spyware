.class final Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;
.super Ljava/lang/Object;
.source "WhiteSmsShowByNumber.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 324
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1, p3}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;I)I

    .line 326
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 328
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;->a:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    invoke-static {v1, v0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;Lcom/lenovo/safecenter/support/Contract;)V

    .line 329
    return-void
.end method
