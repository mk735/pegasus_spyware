.class final Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;
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
    .line 260
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 262
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safeinputmethod_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v3, 0x7f0d003d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v2, v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    const v3, 0x7f0200de

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "old_input"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "oldInput":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "oldInput":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportSafeInputMethod(Z)V

    .line 275
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeinput error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
