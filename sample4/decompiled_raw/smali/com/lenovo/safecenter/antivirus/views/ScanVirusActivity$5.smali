.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;
.super Ljava/lang/Object;
.source "ScanVirusActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->onBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 469
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    .line 470
    .local v1, "vir":Lcom/lenovo/safecenter/antivirus/domain/Virus;
    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->isOperate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const-class v3, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pkgname"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v2, "desc"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getVirusDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v2, "type"

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$5;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->startActivity(Landroid/content/Intent;)V

    .line 483
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
