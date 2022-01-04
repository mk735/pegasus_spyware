.class public Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;
.super Landroid/app/Activity;
.source "FlashProActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field protected animation:Landroid/view/animation/Animation;

.field protected animation2:Landroid/view/animation/Animation;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$1;-><init>(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->f:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 41
    const v2, 0x7f03002d

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->setContentView(I)V

    .line 43
    const v2, 0x7f09016a

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->a:Landroid/widget/LinearLayout;

    .line 44
    const v2, 0x7f09016b

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->b:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f09016e

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->c:Landroid/widget/TextView;

    .line 47
    const v2, 0x7f09016d

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->d:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f09016c

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->e:Landroid/widget/TextView;

    .line 49
    const/high16 v2, 0x7f040000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->animation:Landroid/view/animation/Animation;

    .line 50
    const v2, 0x7f040009

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->animation2:Landroid/view/animation/Animation;

    .line 52
    new-instance v1, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$a;-><init>(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;Landroid/content/Context;)V

    .line 53
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1e0

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 55
    iget-object v2, p0, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v2, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;-><init>(Lcom/lenovo/safecenter/antivirus/views/FlashProActivity;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/antivirus/views/FlashProActivity$2;->start()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    return-void
.end method
