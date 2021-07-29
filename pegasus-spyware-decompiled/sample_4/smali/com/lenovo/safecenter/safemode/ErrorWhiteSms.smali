.class public Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;
.super Landroid/app/Activity;
.source "ErrorWhiteSms.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->a:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->c:Landroid/widget/TextView;

    const v1, 0x7f0d01a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 71
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->a:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->e:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->e:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03012a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->setContentView(I)V

    .line 34
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->b:Landroid/widget/ListView;

    .line 35
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->c:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f090616

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->d:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0573

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteSms;->initData()V

    .line 48
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 49
    return-void
.end method
