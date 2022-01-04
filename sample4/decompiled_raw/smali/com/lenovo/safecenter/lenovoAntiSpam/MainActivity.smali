.class public Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

.field private b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

.field private c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

.field private d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

.field private e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

.field private f:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;

.field private g:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

.field private h:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->i:Landroid/os/Handler;

    .line 401
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    return-object v0
.end method


# virtual methods
.method public getHarssStatus()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    const-string v1, "HarssStatus"

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->finish()V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ba

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0d0271

    const v6, 0x7f020286

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, -0x777778

    .line 100
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0d0230

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;

    invoke-direct {v5, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->f:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->f:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;

    const-string v6, "harss_preference"

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$e;->setKey(Ljava/lang/String;)V

    new-instance v5, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    invoke-direct {v5, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    const-string v6, "ss"

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    invoke-virtual {v5, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;->setSelectable(Z)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$c;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d000f

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-direct {v6, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const-string v7, "callsafelog"

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f0d028a

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f020023

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(I)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.lenovo.safecenter.view.DisplayLogTab"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "logType"

    const-string v8, "callharass"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v7, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0289

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-direct {v6, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const-string v7, "backcallpreference"

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f0d0272

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v6, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(I)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f0d0275

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f020016

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(I)V

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "type"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v7, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-direct {v6, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const-string v7, "whitepreference"

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f0d0278

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v6, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(I)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f0d0277

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v7, 0x7f020032

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(I)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v5, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-direct {v5, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const-string v6, "backsmspreference"

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v6, 0x7f0d0273

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v5, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(I)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v6, 0x7f0d0276

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v6, 0x7f020026

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(I)V

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "type"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v6, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setIntent(Landroid/content/Intent;)V

    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    new-instance v5, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-direct {v5, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const-string v6, "setpre"

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v5, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(I)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v6, 0x7f0d0274

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v6, 0x7f02002a

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->a(I)V

    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 105
    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->registerAction()V

    .line 107
    const-string v4, "isFirst"

    invoke-virtual {p0, v4, v10}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 109
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "flag11"

    invoke-interface {v2, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 111
    invoke-static {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SafeCenter;->setPathUrl(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SmsCheckUtils;->init(Landroid/content/Context;)V

    .line 113
    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    .line 114
    .local v3, "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;
    const-string v4, "systime"

    const-string v5, "2011.02.13"

    invoke-virtual {v3, v4, v5, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 115
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "flag11"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->initWhiteSMS()V

    .line 123
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "utils":Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 171
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 172
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onPause()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onResume()V

    .line 153
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->updateStatus()V

    .line 154
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setEnabled(Z)V

    .line 166
    :goto_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 167
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->c:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->d:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->e:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->setEnabled(Z)V

    goto :goto_0
.end method

.method public registerAction()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lenovo.antispam.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$d;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public updateHarssStatus(Z)V
    .locals 4
    .param p1, "bool"    # Z

    .prologue
    .line 131
    const-string v2, "HarssStatus"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method public updateStatus()V
    .locals 8

    .prologue
    const v7, 0x7f0d023d

    const v6, 0x7f0d023c

    const v5, 0x7f0d023e

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "smsstr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-static {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "guest_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_0
    const-string v2, "onResume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume==end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "0"

    invoke-static {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "1"

    invoke-static {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->getHarassCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const-string v3, "#29b1ef"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(I)V

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->notifyChanged()V

    .line 200
    return-void

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$b;->b(I)V

    goto :goto_0
.end method
