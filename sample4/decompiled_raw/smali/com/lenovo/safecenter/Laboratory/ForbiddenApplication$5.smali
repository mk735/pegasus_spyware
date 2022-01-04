.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;
.super Ljava/lang/Object;
.source "ForbiddenApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->k(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/database/AppDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->j(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Lcom/lenovo/safecenter/support/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->insertApp(Lcom/lenovo/safecenter/support/AppInfo;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    .line 484
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->c(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 485
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5$1;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$5$1;->start()V

    .line 494
    :cond_0
    return-void
.end method
