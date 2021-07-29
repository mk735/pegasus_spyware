.class final Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$5;
.super Ljava/lang/Object;
.source "ErrorWhiteContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->onClick()V
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
    .line 190
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$5;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$5;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->a(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Z

    .line 193
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$5;->a:Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->showDialog(I)V

    .line 194
    return-void
.end method
