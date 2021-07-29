.class final Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;
.super Ljava/lang/Object;
.source "AppPermManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 1

    .prologue
    .line 842
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 844
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;->a:I

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    .line 847
    :cond_0
    return-void
.end method
