.class final Lcom/lenovo/safecenter/safemode/ContractSetting$20;
.super Ljava/lang/Object;
.source "ContractSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/ContractSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/ContractSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0d01ca

    const v6, 0x7f070008

    const/4 v5, 0x1

    .line 357
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->a(Lcom/lenovo/safecenter/safemode/ContractSetting;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "privateCall_mode_on"

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-virtual {v2, v7}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 369
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-virtual {v2, v7}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$20;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-virtual {v2, v7}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
