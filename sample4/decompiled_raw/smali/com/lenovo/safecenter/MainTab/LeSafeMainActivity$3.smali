.class final Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;
.super Ljava/lang/Object;
.source "LeSafeMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->e(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "update_apk_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/support/CMDHelper;->installAPK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->m(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity$3;->a:Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;->l(Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "update_apk_path"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
