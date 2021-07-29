.class final Lcom/lenovo/safecenter/safemode/AddContract$6;
.super Ljava/lang/Object;
.source "AddContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/AddContract;->showDialogAdd(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/safemode/AddContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/AddContract;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$6;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/AddContract$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$6;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$6;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->initApp_expectBlack(Ljava/util/List;)V

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$6;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/AddContract;->finish()V

    goto :goto_0
.end method
