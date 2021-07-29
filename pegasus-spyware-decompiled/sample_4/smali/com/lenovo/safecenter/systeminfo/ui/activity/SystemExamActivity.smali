.class public Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "SystemExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;,
        Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/Button;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

.field private n:I

.field private o:D

.field private p:D

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Landroid/view/GestureDetector;

.field private v:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r:Z

    .line 71
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$1;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->s:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->t:Landroid/content/BroadcastReceiver;

    .line 359
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;D)D
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
    .param p1, "x1"    # D

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->o:D

    return-wide p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->n:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;D)D
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
    .param p1, "x1"    # D

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->p:D

    return-wide p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m:Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->n:I

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->o:D

    return-wide v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->p:D

    return-wide v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->u:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->u:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 408
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onClick(Landroid/view/View;)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->finish()V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x7f0904b9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xa

    .line 130
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f0300d5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->setContentView(I)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->t:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d06b9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 135
    const v0, 0x7f090485

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090488

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f090487

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f09048a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f090486

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f090489

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f090490

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f09048c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090492

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f090497

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->j:Landroid/widget/ListView;

    const v0, 0x7f09048f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->h:Landroid/widget/ImageView;

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$b;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;B)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/service/PhoneInfoService;->getPhoneInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;-><init>()V

    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setIconRes(I)V

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/safecenter/systeminfo/service/CpuInfoService;->getCpuInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;-><init>()V

    const v1, 0x7f02023d

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setIconRes(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getMemeryInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/safecenter/systeminfo/service/MemoryInfoService;->getRomAndSDcardSizeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;-><init>()V

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setIconRes(I)V

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/service/ScreenInfoService;->getDisplayMetrics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;-><init>()V

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setIconRes(I)V

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->getWifiInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-direct {v0}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;-><init>()V

    const v1, 0x7f02023e

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setIconRes(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/service/NetworkInfoService;->getNetworkInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->getInstance()Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/systeminfo/service/SensorInfoService;->sensorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m:Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m:Lcom/lenovo/safecenter/systeminfo/adapter/PhoneInfoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->u:Landroid/view/GestureDetector;

    .line 141
    new-instance v0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$3;-><init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->v:Landroid/view/View$OnTouchListener;

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 348
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 158
    return-void
.end method
