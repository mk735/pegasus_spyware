.class final Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$4;
.super Ljava/lang/Object;
.source "AntiVirusSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;
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
    .line 130
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$4;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$4;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "netScan_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$4;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->init()V

    .line 134
    return-void
.end method
