.class public Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "WisdomSpeedPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;,
        Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$b;,
        Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/performancecenter/framework/PolicyService;

.field private d:Z

.field private e:Landroid/widget/ListView;

.field private final f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private j:Landroid/app/NotificationManager;

.field private k:Landroid/content/ServiceConnection;

.field private l:[Ljava/lang/String;

.field private m:[I

.field private n:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x14

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d:Z

    .line 50
    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->f:Z

    .line 53
    iput-wide v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->h:J

    .line 54
    iput-wide v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->i:J

    .line 106
    new-instance v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->k:Landroid/content/ServiceConnection;

    .line 220
    new-instance v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->o:Landroid/os/Handler;

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Lcom/lenovo/performancecenter/framework/PolicyService;)Lcom/lenovo/performancecenter/framework/PolicyService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
    .param p1, "x1"    # Lcom/lenovo/performancecenter/framework/PolicyService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->c:Lcom/lenovo/performancecenter/framework/PolicyService;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;I)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    const-string v0, "policy_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "policy_time"

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->c:Lcom/lenovo/performancecenter/framework/PolicyService;

    const-string v1, "policy_time"

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/lenovo/performancecenter/framework/PolicyService;->updateConfiguration(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->setEnableed(Z)V

    .line 293
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Lcom/lenovo/performancecenter/framework/PolicyService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->c:Lcom/lenovo/performancecenter/framework/PolicyService;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->n:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d:Z

    return p1
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onClick(Landroid/view/View;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->finish()V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904b9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->setContentView(I)V

    .line 61
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0867

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 62
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->j:Landroid/app/NotificationManager;

    .line 64
    const v1, 0x7f0901d5

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->e:Landroid/widget/ListView;

    .line 66
    const-string v1, "policy_settings"

    invoke-virtual {p0, v1, v4}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "policy_switch"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->g:Z

    .line 69
    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    iput-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    .line 70
    iget-boolean v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->g:Z

    invoke-direct {p0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a(Z)V

    .line 72
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->a:Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;

    new-instance v2, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference;->setOnCheckedChangeListener(Lcom/lenovo/performancecenter/coreui/widget/CheckBoxPreference$OnCheckedChangeListener;)V

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 191
    const-string v0, "WisdomSpeedFragment"

    const-string v1, "onKeyDown()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 217
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->b:Ljava/util/ArrayList;

    const-string v0, "policy_settings"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "policy_time"

    iget-wide v3, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->h:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->l:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->m:[I

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->l:[Ljava/lang/String;

    array-length v4, v0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->m:[I

    array-length v0, v0

    if-ne v4, v0, :cond_0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->m:[I

    aget v0, v0, v2

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v5, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;

    iget-object v6, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->l:[Ljava/lang/String;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->m:[I

    aget v7, v7, v2

    invoke-direct {v5, p0, v6, v7, v0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->n:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->n:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$4;-><init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 254
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStart()V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/performancecenter/framework/PolicyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->k:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 259
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;->d:Z

    .line 263
    :cond_0
    return-void
.end method
