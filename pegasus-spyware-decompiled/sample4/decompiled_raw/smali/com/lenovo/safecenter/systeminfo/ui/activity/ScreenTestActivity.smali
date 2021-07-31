.class public Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;
.super Landroid/app/Activity;
.source "ScreenTestActivity.java"


# instance fields
.field a:I

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->b:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030100

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f090521

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity$1;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/ScreenTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
