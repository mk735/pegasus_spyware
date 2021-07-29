.class final Lcom/lenovo/safecenter/safemode/ContractSetting$22;
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
    .line 415
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->c(Lcom/lenovo/safecenter/safemode/ContractSetting;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v4}, Lcom/lenovo/safecenter/safemode/ContractSetting;->d(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sms_mode"

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v2}, Lcom/lenovo/safecenter/safemode/ContractSetting;->d(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->d(Lcom/lenovo/safecenter/safemode/ContractSetting;)I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 432
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting$22;->a:Lcom/lenovo/safecenter/safemode/ContractSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
