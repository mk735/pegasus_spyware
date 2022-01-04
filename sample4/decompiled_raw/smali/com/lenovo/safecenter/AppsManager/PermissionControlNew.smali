.class public Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;
.super Landroid/app/Activity;
.source "PermissionControlNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:I

.field private o:Z

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->n:I

    .line 40
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$1;-><init>(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->n:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->n:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->o:Z

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->p:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    packed-switch p2, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->p:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 153
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->finish()V

    goto :goto_0

    .line 157
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "it":Landroid/content/Intent;
    const-string v5, "permType"

    const-string v6, "privacy"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0, v7}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 163
    .end local v0    # "it":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/AppsManager/DisplayLog;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, "it0":Landroid/content/Intent;
    const-string v5, "from"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 169
    .end local v1    # "it0":Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v2, "it1":Landroid/content/Intent;
    const-string v5, "permType"

    const-string v6, "privacy"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v2, v7}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 175
    .end local v2    # "it1":Landroid/content/Intent;
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v3, "it2":Landroid/content/Intent;
    const-string v5, "permType"

    const-string v6, "location"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v3, v7}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 181
    .end local v3    # "it2":Landroid/content/Intent;
    :sswitch_5
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v4, "it3":Landroid/content/Intent;
    const-string v5, "permType"

    const-string v6, "device"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v4, v7}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x7f090204 -> :sswitch_3
        0x7f09020a -> :sswitch_4
        0x7f090277 -> :sswitch_2
        0x7f09037b -> :sswitch_5
        0x7f09047f -> :sswitch_1
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0300d3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->setContentView(I)V

    .line 65
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->o:Z

    .line 67
    const v0, 0x7f09047c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->d:Landroid/widget/TextView;

    const v0, 0x7f09047d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->e:Landroid/widget/TextView;

    const v0, 0x7f09047f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$2;-><init>(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->c:Landroid/widget/TextView;

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->h:Landroid/widget/ImageView;

    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f09020a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f09037b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const v5, 0x7f09047e

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v1, "privacy_first"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->d:Landroid/widget/TextView;

    const v1, 0x7f0d052c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    sget-object v0, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_first"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;-><init>(Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew$3;->start()V

    .line 143
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->d:Landroid/widget/TextView;

    const v1, 0x7f0d052e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/PermissionControlNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
