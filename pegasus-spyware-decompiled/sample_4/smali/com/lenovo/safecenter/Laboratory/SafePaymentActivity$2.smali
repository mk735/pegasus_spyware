.class final Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;
.super Ljava/lang/Object;
.source "SafePaymentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 99
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "safepaymen_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->i:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->register()Z

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d021d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v0, v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-static {v2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportsafePay(Z)V

    .line 129
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    goto :goto_0
.end method
