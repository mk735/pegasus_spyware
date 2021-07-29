.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;
.super Ljava/lang/Object;
.source "NightPreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_callmode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    const v2, 0x7f0d040a

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_callmode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    const v2, 0x7f0d040b

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
