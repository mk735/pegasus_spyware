.class public Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;
.super Landroid/app/Activity;
.source "QuestionAndAnswer.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->setContentView(I)V

    .line 22
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d0045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer$1;-><init>(Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904a4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->a:Landroid/widget/TextView;

    const v0, 0x7f0904a6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->b:Landroid/widget/TextView;

    const v0, 0x7f0904a8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->c:Landroid/widget/TextView;

    const v0, 0x7f0904aa

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->d:Landroid/widget/TextView;

    const v0, 0x7f0904ac

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->e:Landroid/widget/TextView;

    const v0, 0x7f0904ae

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->f:Landroid/widget/TextView;

    const v0, 0x7f0904b0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->g:Landroid/widget/TextView;

    const v0, 0x7f0904a5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->h:Landroid/widget/TextView;

    const v0, 0x7f0904a7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->i:Landroid/widget/TextView;

    const v0, 0x7f0904a9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->j:Landroid/widget/TextView;

    const v0, 0x7f0904ab

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->k:Landroid/widget/TextView;

    const v0, 0x7f0904ad

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->l:Landroid/widget/TextView;

    const v0, 0x7f0904af

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->m:Landroid/widget/TextView;

    const v0, 0x7f0904b1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->n:Landroid/widget/TextView;

    const v0, 0x7f0904b2

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->o:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ydp"

    const-string v1, "3rd--------."

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0682

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0683

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0684

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->d:Landroid/widget/TextView;

    const v1, 0x7f0d0685

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0686

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0687

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->h:Landroid/widget/TextView;

    const v1, 0x7f0d0688

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->i:Landroid/widget/TextView;

    const v1, 0x7f0d0689

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->j:Landroid/widget/TextView;

    const v1, 0x7f0d068a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->k:Landroid/widget/TextView;

    const v1, 0x7f0d068b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->l:Landroid/widget/TextView;

    const v1, 0x7f0d068c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->m:Landroid/widget/TextView;

    const v1, 0x7f0d068d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    :cond_0
    return-void
.end method
