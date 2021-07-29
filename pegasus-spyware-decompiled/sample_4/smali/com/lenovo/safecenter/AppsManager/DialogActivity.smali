.class public Lcom/lenovo/safecenter/AppsManager/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final OPERATE_FAILED:I = 0x2

.field public static final OPERATE_SUCCESS:I = 0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/safecenter/database/AppDatabase;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/ProgressBar;

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$1;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/DialogActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3
    .param p1, "enableGuestMode"    # Z
    .param p2, "enableChildMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 407
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 410
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 411
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;ZLandroid/content/ContentResolver;Z)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$7;->start()V

    .line 465
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/DialogActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->m:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f04000e

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/MainTab/FirstUsePasswordSettingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lenovo/safecenter/utils/PwdUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 178
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 179
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const/4 v3, 0x2

    invoke-virtual {v0, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "child_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->m:Z

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "guest_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->n:Z

    .line 188
    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->e:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 190
    :pswitch_1
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->m:Z

    if-eqz v3, :cond_4

    .line 191
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 183
    goto :goto_1

    :cond_3
    move v3, v5

    .line 185
    goto :goto_2

    .line 193
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->n:Z

    if-eqz v3, :cond_0

    .line 194
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto/16 :goto_0

    .line 200
    :pswitch_2
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->n:Z

    if-eqz v3, :cond_5

    .line 201
    invoke-direct {p0, v5, v4}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(ZZ)V

    goto/16 :goto_0

    .line 203
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a:Landroid/content/Context;

    const-string v4, "com.lenovo.kidmode"

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/database/AppUtil;->isAppExistence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 204
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/WflUtils;->startKidMode(Landroid/content/Context;)V

    .line 205
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto/16 :goto_0

    .line 207
    :cond_6
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_7

    .line 208
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    :cond_7
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 213
    new-instance v3, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$2;->start()V

    goto/16 :goto_0

    .line 234
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_8

    .line 235
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    :cond_8
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 240
    new-instance v3, Lcom/lenovo/safecenter/AppsManager/DialogActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$3;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V

    invoke-virtual {v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$3;->start()V

    goto/16 :goto_0

    .line 259
    :pswitch_4
    invoke-direct {p0, v4, v5}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(ZZ)V

    goto/16 :goto_0

    .line 263
    :pswitch_5
    invoke-direct {p0, v5, v5}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a(ZZ)V

    goto/16 :goto_0

    .line 267
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/Laboratory/ForbiddenApplication;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto/16 :goto_0

    .line 272
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/Laboratory/GuestModeSet;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto/16 :goto_0

    .line 295
    .end local v0    # "m":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 296
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f:Landroid/widget/TextView;

    const v4, 0x7f0d0058

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 297
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 298
    .local v2, "shake":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 300
    .end local v2    # "shake":Landroid/view/animation/Animation;
    :cond_a
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 301
    .restart local v2    # "shake":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f:Landroid/widget/TextView;

    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 313
    .end local v1    # "pwd":Ljava/lang/String;
    .end local v2    # "shake":Landroid/view/animation/Animation;
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->finish()V

    goto/16 :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902af -> :sswitch_2
        0x7f0902b0 -> :sswitch_0
        0x7f090352 -> :sswitch_2
        0x7f090353 -> :sswitch_1
    .end sparse-switch

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0902ae

    const v6, 0x7f020119

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->requestWindowFeature(I)Z

    .line 118
    iput-object p0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->a:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 121
    const-string v1, "style"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->e:I

    .line 123
    :cond_0
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 124
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->c:Landroid/content/SharedPreferences;

    .line 125
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/PwdUtil;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->d:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->b:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->close()V

    .line 127
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 128
    :cond_1
    const v1, 0x7f030068

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->setContentView(I)V

    .line 134
    :goto_0
    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const v1, 0x7f0902b0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0902af

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :goto_1
    return-void

    .line 130
    :cond_3
    const v1, 0x7f03008b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->setContentView(I)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->o:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 134
    :cond_4
    const v1, 0x7f09034c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v1, 0x7f09034f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f09034d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->l:Landroid/widget/ProgressBar;

    const v1, 0x7f090350

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    const v1, 0x7f090353

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090352

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 165
    const-string v0, "style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->e:I

    .line 166
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 324
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 326
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 330
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    return-void
.end method

.method public showRebootDialog(ZZ)V
    .locals 8
    .param p1, "enableGuestMode"    # Z
    .param p2, "enableChildMode"    # Z

    .prologue
    const v7, 0x7f0d003a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v6, 0x7f0d01fc

    const v5, 0x7f0d0025

    .line 369
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "child_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 371
    .local v1, "child_mode_on":Z
    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    const v2, 0x7f0d00f2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 373
    if-eqz p2, :cond_1

    const v2, 0x7f0d0200

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 387
    :goto_1
    const v2, 0x7f0d0048

    new-instance v3, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$4;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;ZZ)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 392
    const v2, 0x7f0d0049

    new-instance v3, Lcom/lenovo/safecenter/AppsManager/DialogActivity$5;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$5;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 397
    new-instance v2, Lcom/lenovo/safecenter/AppsManager/DialogActivity$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/DialogActivity$6;-><init>(Lcom/lenovo/safecenter/AppsManager/DialogActivity;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .line 402
    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 403
    return-void

    .end local v0    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .end local v1    # "child_mode_on":Z
    :cond_0
    move v1, v2

    .line 369
    goto :goto_0

    .line 374
    .restart local v0    # "builder":Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .restart local v1    # "child_mode_on":Z
    :cond_1
    if-eqz p1, :cond_3

    .line 375
    if-eqz v1, :cond_2

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d01ff

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d01fd

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    goto :goto_1

    .line 379
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d01fd

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    goto/16 :goto_1

    .line 384
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d003b

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d01fe

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/DialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    goto/16 :goto_1
.end method
