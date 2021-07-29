.class final Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;
.super Ljava/lang/Object;
.source "SafePaymentDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->a(Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->e:Z

    .line 65
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity$1;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;->finish()V

    .line 66
    return-void
.end method
