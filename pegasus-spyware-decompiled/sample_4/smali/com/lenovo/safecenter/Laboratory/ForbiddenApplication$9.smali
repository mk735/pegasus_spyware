.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;
.super Ljava/lang/Object;
.source "ForbiddenApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->showRebootDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->w(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)V

    .line 602
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;-><init>(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$9$1;->start()V

    .line 623
    return-void
.end method
