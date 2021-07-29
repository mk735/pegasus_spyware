.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$9;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$9;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v2, 0x7f0d01bf

    .line 305
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$9;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 308
    const-string v0, "content"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$9;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method
