.class final Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/DialogActivity;->showRebootDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/lenovo/safecenter/AppsManager/DialogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;ZZ)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;->c:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    iput-boolean p2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;->a:Z

    iput-boolean p3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;->c:Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;->a:Z

    iget-boolean v2, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;->b:Z

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;ZZ)V

    .line 390
    return-void
.end method
