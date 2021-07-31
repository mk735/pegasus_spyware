.class final Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;
.super Ljava/lang/Object;
.source "EditSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/EditSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/EditSettingActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;->a:Lcom/lenovo/safecenter/safemode/EditSettingActivity;

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
    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;->a:Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    invoke-static {v0, p3}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a(Lcom/lenovo/safecenter/safemode/EditSettingActivity;I)I

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;->a:Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;->a:Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a(Lcom/lenovo/safecenter/safemode/EditSettingActivity;Ljava/util/List;)Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;->a:Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->b(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 60
    return-void
.end method
