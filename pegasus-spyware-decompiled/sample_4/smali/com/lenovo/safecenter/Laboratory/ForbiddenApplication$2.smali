.class final Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$2;
.super Ljava/lang/Object;
.source "ForbiddenApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->a()V
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
    .line 436
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$2;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication$2;->a:Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;->y(Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;)Landroid/app/ProgressDialog;

    .line 439
    return-void
.end method
