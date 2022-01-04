.class final Lcom/lenovo/safecenter/safemode/WhiteContract$13;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$13;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$13;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->showAddMethod()V

    .line 315
    return-void
.end method
