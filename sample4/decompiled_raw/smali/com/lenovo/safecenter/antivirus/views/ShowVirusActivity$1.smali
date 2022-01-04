.class final Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;
.super Ljava/lang/Object;
.source "ShowVirusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->c(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    const v3, 0x7f0d049c

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->finish()V

    .line 210
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->isOperate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->removePackageActivity(Ljava/lang/String;)V

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
