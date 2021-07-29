.class final Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const v7, 0x7f0200df

    const v6, 0x7f0200de

    const/4 v2, 0x0

    .line 70
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->a(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->b(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->b(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->c(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->d(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 85
    :pswitch_2
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->e(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->a(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;Z)Z

    .line 92
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "inject_switch"

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v4}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->f(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->g(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 103
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .local v1, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 107
    .end local v1    # "m":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_4
    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 111
    :pswitch_5
    sget-object v4, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v5, "safehomepage_on"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->unRegister()Z

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportSafeHomePageSwitchChange(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 117
    :cond_5
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/AppsManager/SettingsActivity;->h(Lcom/lenovo/safecenter/AppsManager/SettingsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/SettingsActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/SettingsActivity;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/SafeHomePage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/Laboratory/SafeHomePage;->register()Z

    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportSafeHomePageSwitchChange(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
