.class final Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;
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
    .line 147
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Const;->getProtectVirusSwitchState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->a(Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;)V

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Const;->setProtectVirusSwitchState(ZLandroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshProtectVirusDetail()V

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$5;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->init()V

    goto :goto_0
.end method
