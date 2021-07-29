.class final Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;
.super Ljava/lang/Object;
.source "AntiVirusSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->onBtnclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "netScan_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->b(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "netScan_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$6;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->init()V

    goto :goto_0
.end method
