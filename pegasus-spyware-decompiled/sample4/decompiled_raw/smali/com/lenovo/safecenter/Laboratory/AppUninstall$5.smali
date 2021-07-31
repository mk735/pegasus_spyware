.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$5;
.super Ljava/lang/Object;
.source "AppUninstall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$5;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$5;->a:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getLauncherApp()V

    .line 614
    return-void
.end method
