.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;
.super Ljava/lang/Object;
.source "NightPreActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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
    .line 259
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I

    .line 264
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v0, p3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I

    .line 265
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EH"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EM"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)V

    .line 268
    return-void
.end method
