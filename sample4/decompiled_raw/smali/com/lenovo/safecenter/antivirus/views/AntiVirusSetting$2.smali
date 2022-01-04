.class final Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;
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
    .line 109
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Const;->setProtectVirusSwitchState(ZLandroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->get(Landroid/content/Context;)Lcom/lenovo/safecenter/utils/LeSafeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/LeSafeObservable;->noticeRefreshProtectVirusDetail()V

    .line 113
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting$2;->a:Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/AntiVirusSetting;->init()V

    .line 114
    return-void
.end method
