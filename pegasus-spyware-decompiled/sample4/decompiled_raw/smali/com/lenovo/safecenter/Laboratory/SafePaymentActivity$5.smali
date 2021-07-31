.class final Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;
.super Ljava/lang/Object;
.source "SafePaymentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->i:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->unRegister()Z

    .line 248
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportsafePay(Z)V

    .line 252
    return-void
.end method
