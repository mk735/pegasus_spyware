.class final Lcom/lenovo/safecenter/safemode/ContractSetting$13;
.super Ljava/lang/Object;
.source "ContractSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;->showDialogImageCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/ContractSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$13;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$13;->a:Landroid/widget/ListView;

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
    .line 950
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$13;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0, p3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->d(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I

    .line 952
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$13;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$13;->b:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->j(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->a(Lcom/lenovo/safecenter/safemode/ContractSetting;Ljava/util/List;)Ljava/util/List;

    .line 953
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$13;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 954
    return-void
.end method
