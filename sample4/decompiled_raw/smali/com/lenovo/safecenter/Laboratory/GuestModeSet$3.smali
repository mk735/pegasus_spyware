.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$3;
.super Ljava/lang/Object;
.source "GuestModeSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->showRebootDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$3;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$3;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 538
    return-void
.end method
