.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$1;
.super Ljava/lang/Object;
.source "AppUninstall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4$1;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$4;->b:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getLauncherApp()V

    .line 569
    return-void
.end method
