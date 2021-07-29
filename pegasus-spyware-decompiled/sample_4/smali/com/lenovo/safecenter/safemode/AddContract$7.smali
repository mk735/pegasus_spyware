.class final Lcom/lenovo/safecenter/safemode/AddContract$7;
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
    .line 368
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/AddContract$7;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    iput-object p2, p0, Lcom/lenovo/safecenter/safemode/AddContract$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/AddContract$7;->b:Lcom/lenovo/safecenter/safemode/AddContract;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/AddContract$7;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/safemode/AddContract;->initApp_deleteBlack(Ljava/util/List;)V

    .line 372
    return-void
.end method
