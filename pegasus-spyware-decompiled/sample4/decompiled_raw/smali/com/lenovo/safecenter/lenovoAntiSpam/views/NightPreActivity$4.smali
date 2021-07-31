.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;
.super Ljava/lang/Object;
.source "NightPreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->onBtnClick()V
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
    .line 144
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
