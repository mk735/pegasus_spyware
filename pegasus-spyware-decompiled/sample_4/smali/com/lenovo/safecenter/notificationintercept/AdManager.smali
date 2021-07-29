.class public Lcom/lenovo/safecenter/notificationintercept/AdManager;
.super Landroid/app/Activity;
.source "AdManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 41
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->finish()V

    goto :goto_0

    .line 45
    :sswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->c:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "defaultSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 49
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "notify_switch"

    iget-object v3, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 45
    .end local v0    # "defaultSharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090447 -> :sswitch_1
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->requestWindowFeature(I)Z

    .line 27
    const v0, 0x7f0300c2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->setContentView(I)V

    .line 28
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->a:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0644

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->b:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f090449

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->c:Landroid/widget/ToggleButton;

    .line 32
    const v0, 0x7f090447

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/notificationintercept/AdManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/AdManager;->c:Landroid/widget/ToggleButton;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notify_switch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 61
    return-void
.end method
