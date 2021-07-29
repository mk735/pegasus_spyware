.class public Lcom/lenovo/safecenter/safemode/WhiteCall;
.super Landroid/app/Activity;
.source "WhiteCall.java"


# instance fields
.field a:Landroid/app/NotificationManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/safecenter/database/AppDatabase;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field public hand:Landroid/os/Handler;

.field private i:Landroid/widget/BaseAdapter;

.field private j:I

.field private k:I

.field private l:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    .line 49
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteCall$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/WhiteCall$1;-><init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->hand:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteCall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->k:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteCall;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const v2, 0x7f0d01ab

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const v2, 0x7f0d01b0

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const v2, 0x7f0d01b1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteCall$6;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/safemode/WhiteCall$6;-><init>(Lcom/lenovo/safecenter/safemode/WhiteCall;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/WhiteCall;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/WhiteCall;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/WhiteCall;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/WhiteCall;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0654

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteCall$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteCall$5;-><init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteCall$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteCall$4;-><init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/WhiteCall;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/safemode/WhiteCall;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteCall;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->k:I

    return v0
.end method


# virtual methods
.method public initData()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->getAllCall()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    .line 274
    const-string v0, "txtEmpty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 288
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    return-void

    .line 291
    :cond_2
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 293
    new-instance v0, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    goto :goto_0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteCall$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteCall$2;-><init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->l:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteCall$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteCall$3;-><init>(Lcom/lenovo/safecenter/safemode/WhiteCall;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03012a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->setContentView(I)V

    .line 71
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    const v0, 0x7f090613

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->h:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f090614

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->f:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->g:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    .line 79
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->e:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f090615

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->l:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->l:Landroid/widget/Button;

    const v1, 0x7f0d063b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0574

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 85
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->a:Landroid/app/NotificationManager;

    .line 86
    sget-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->onClick()V

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 120
    iget v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    if-ne v4, v2, :cond_1

    .line 122
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 124
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_0

    .line 126
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    iput v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    .line 127
    new-instance v3, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    .line 128
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 337
    :pswitch_1
    iput v7, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    .line 338
    new-instance v5, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-direct {v5, p0, v6}, Lcom/lenovo/safecenter/adapter/ManwhiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    .line 339
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 345
    .local v1, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1, v7}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_1

    .line 347
    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 350
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_3
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 352
    .restart local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v1, v6}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_2

    .line 354
    .end local v1    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 357
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v4, "select_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_4

    .line 360
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 362
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 358
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 366
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 368
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->deleteCall(Ljava/util/List;)V

    .line 369
    iput v6, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->j:I

    .line 370
    new-instance v5, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->b:Ljava/util/List;

    invoke-direct {v5, p0, v6}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    .line 371
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->d:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    const-string v5, "SofeModeMain"

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 373
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v5, v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteCall;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->updateCall()V

    .line 107
    const-string v1, "SofeModeMain"

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "SofeModeMain"

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 110
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    .end local v0    # "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    :cond_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteCall;->initData()V

    .line 98
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/WhiteCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 99
    .local v0, "nmanager":Landroid/app/NotificationManager;
    sget v1, Lcom/lenovo/safecenter/utils/Constant;->CALL_NOTI_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 101
    return-void
.end method
