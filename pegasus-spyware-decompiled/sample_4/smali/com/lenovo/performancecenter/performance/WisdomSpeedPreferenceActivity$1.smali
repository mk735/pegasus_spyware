.class final Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;
.super Ljava/lang/Object;
.source "WisdomSpeedPreferenceActivity.java"

# interfaces
.implements Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;Z)V
    .locals 6
    .param p1, "buttonView"    # Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2, p2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)V

    .line 78
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    const-string v3, "policy_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "policy_switch"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->b(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Lcom/lenovo/performancecenter/framework/PolicyService;

    move-result-object v2

    const-string v3, "policy_switch"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/performancecenter/framework/PolicyService;->updateConfiguration(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;->a:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-static {v2, p2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->b(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)Z

    .line 98
    return-void
.end method
