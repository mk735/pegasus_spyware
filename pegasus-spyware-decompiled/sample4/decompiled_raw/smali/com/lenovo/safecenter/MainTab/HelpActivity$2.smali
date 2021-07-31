.class final Lcom/lenovo/safecenter/MainTab/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/MainTab/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/HelpActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/HelpActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->a(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->a(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    const-class v3, Lcom/lenovo/safecenter/MainTab/LeSafeMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->appInit(Landroid/content/Context;)V

    .line 172
    iget-object v2, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;->a:Lcom/lenovo/safecenter/MainTab/HelpActivity;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->finish()V

    .line 173
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
