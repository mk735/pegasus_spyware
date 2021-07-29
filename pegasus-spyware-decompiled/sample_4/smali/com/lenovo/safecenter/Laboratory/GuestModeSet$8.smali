.class final Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;
.super Ljava/lang/Object;
.source "GuestModeSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/GuestModeSet;
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
    .line 243
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->f(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;->a:Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;->p(Lcom/lenovo/safecenter/Laboratory/GuestModeSet;)V

    .line 247
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8$1;-><init>(Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/GuestModeSet$8$1;->start()V

    .line 277
    return-void
.end method
