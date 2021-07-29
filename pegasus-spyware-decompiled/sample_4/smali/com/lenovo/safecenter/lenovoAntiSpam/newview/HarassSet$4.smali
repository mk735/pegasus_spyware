.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;
.super Ljava/lang/Object;
.source "HarassSet.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

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
    .line 584
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v0, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->e(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I

    .line 585
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v0, p3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I

    .line 586
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BH"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BM"

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    invoke-static {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->j(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->g(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)V

    .line 589
    return-void
.end method
