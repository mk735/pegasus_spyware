.class final Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;
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
    .line 131
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 134
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safeinputmethod_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 135
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    .line 183
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v3, v3, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    const-string v4, "safeinput"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 141
    .local v1, "i":I
    if-ne v1, v5, :cond_1

    .line 142
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safeinputmethod_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300f7

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0550

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    .line 148
    .local v0, "cd":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->k:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 149
    invoke-virtual {v0, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 151
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    const v4, 0x7f0d0551

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 153
    .end local v0    # "cd":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    if-nez v1, :cond_2

    .line 154
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    iget-object v4, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-direct {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d00f2

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0553

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0046

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safeinputmethod_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v3, v3, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v3, v3, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    iget-object v3, v3, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    const v4, 0x7f0200df

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-static {v6}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportSafeInputMethod(Z)V

    goto/16 :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;->a:Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    const v4, 0x7f0d058c

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
