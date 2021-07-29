.class public Lcom/lenovo/performancecenter/performance/ClearCacheActivity;
.super Landroid/app/Activity;
.source "ClearCacheActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/ClearCacheActivity$b;,
        Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/Button;

.field private i:Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 166
    new-instance v0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$3;-><init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->l:Landroid/os/Handler;

    .line 325
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c:J

    return-wide p1
.end method

.method static synthetic a(Ljava/util/List;)J
    .locals 6
    .param p0, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;

    iget-wide v4, v0, Lcom/lenovo/performancecenter/framework/DataLayerManager$CacheInfo;->appCacheSize:J

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->i:Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/ClearCacheActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904c7

    if-ne v1, v2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/performancecenter/service/object/ApplicationDataInfo;->clearAllCache(Landroid/content/pm/PackageManager;)V

    .line 232
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c:J

    .line 233
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 234
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->i:Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    invoke-virtual {v1}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;->notifyDataSetChanged()V

    .line 235
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->l:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0905ad

    if-ne v1, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->requestWindowFeature(I)Z

    .line 70
    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0d086d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->a:Landroid/content/pm/PackageManager;

    .line 73
    const v0, 0x7f0904c3

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->d:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0904c4

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->f:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0904c5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g:Landroid/widget/ListView;

    .line 77
    const v0, 0x7f0904c7

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 150
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 151
    const-string v0, "ClearCacheActivity"

    const-string v1, "onKeyDown()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->finish()V

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 222
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->c:J

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->b:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    new-instance v0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->i:Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    .line 114
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->i:Lcom/lenovo/performancecenter/performance/ClearCacheActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/ClearCacheActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/ClearCacheActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/ClearCacheActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    return-void
.end method
