.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;
.super Ljava/lang/Object;
.source "AgainstTheftSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 564
    invoke-static {v3}, Lcom/lenovo/safecenter/utils/Const;->setProtecThiefSwitchState(Z)V

    .line 566
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.antitheft.ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->stopService(Landroid/content/Intent;)Z

    .line 567
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "all"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alarm"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->d(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sim_changed_locked_screen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Z)V

    .line 572
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$3;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->h(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 573
    return-void
.end method
