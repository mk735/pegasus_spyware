.class public Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/dialog/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Landroid/content/DialogInterface$OnClickListener;

.field private B:Landroid/content/DialogInterface$OnCancelListener;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field private q:I

.field private r:I

.field private s:I

.field private t:[Ljava/lang/String;

.field private u:I

.field private v:[Ljava/lang/String;

.field private w:Landroid/content/DialogInterface$OnClickListener;

.field private x:Landroid/content/DialogInterface$OnClickListener;

.field private y:Landroid/content/DialogInterface$OnClickListener;

.field private z:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    .line 66
    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->r:I

    .line 68
    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->s:I

    .line 69
    iput-object v3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->t:[Ljava/lang/String;

    .line 71
    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->u:I

    .line 73
    iput-object v3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->v:[Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->C:Z

    iput-boolean v1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->D:Z

    iput-boolean v1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->E:Z

    .line 82
    iput-boolean v1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->F:Z

    iput-boolean v2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->G:Z

    iput-boolean v2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->H:Z

    .line 104
    const v0, 0x7f020156

    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->a:I

    .line 105
    const v0, 0x7f0202e1

    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->b:I

    .line 106
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->C:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->E:Z

    return v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->D:Z

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->A:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->z:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 12

    .prologue
    const v6, 0x7f0902ab

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/16 v8, 0x8

    const v9, 0x7f0902a7

    .line 543
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 546
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog;

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    const v5, 0x7f0e0008

    invoke-direct {v0, v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 548
    .local v0, "dialog":Lcom/lenovo/safecenter/dialog/CustomDialog;
    const v4, 0x7f030067

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 549
    .local v3, "layout":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    const v4, 0x7f0902a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 552
    .local v1, "icon":Landroid/widget/ImageView;
    iget v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->d:I

    if-eqz v4, :cond_4

    .line 553
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->d:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    :goto_0
    const v4, 0x7f0902a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->m:Landroid/widget/LinearLayout;

    .line 560
    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->o:Landroid/widget/TextView;

    .line 561
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->o:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->g:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 564
    const v4, 0x7f0902ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    .line 566
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-boolean v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->F:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->a:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 568
    :goto_1
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_0

    .line 569
    const v4, 0x7f0902ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$6;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$6;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;Lcom/lenovo/safecenter/dialog/CustomDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->i:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 586
    const v4, 0x7f0902ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    .line 588
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-boolean v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->H:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->a:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 590
    :goto_3
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_1

    .line 591
    const v4, 0x7f0902ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$7;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$7;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;Lcom/lenovo/safecenter/dialog/CustomDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    :cond_1
    :goto_4
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 608
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    .line 610
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-boolean v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->G:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->a:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 612
    :goto_5
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_2

    .line 613
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$8;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;Lcom/lenovo/safecenter/dialog/CustomDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    :cond_2
    :goto_6
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->f:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 630
    const v4, 0x7f0902a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_3
    :goto_7
    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 646
    return-object v0

    .line 556
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 567
    :cond_5
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->b:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 581
    :cond_6
    const v4, 0x7f0902ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 589
    :cond_7
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->b:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 603
    :cond_8
    const v4, 0x7f0902ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 611
    :cond_9
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->b:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    .line 625
    :cond_a
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 631
    :cond_b
    iget v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    if-nez v4, :cond_d

    .line 632
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->t:[Ljava/lang/String;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    const v6, 0x109000f

    iget-object v7, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->t:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_8
    new-instance v5, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const-string v6, "wu0wu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "singleChoiceCheckedId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->s:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v6, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f070000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->s:I

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$10;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;Lcom/lenovo/safecenter/dialog/CustomDialog;)V

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7

    :cond_c
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    const v6, 0x109000f

    iget-object v7, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->r:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_8

    .line 633
    :cond_d
    iget v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 634
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->v:[Ljava/lang/String;

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->u:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :goto_9
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    const v7, 0x1090003

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v6, Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-direct {v6, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v7, 0x7f070000

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v4, 0x7f0902a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$9;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$9;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;Lcom/lenovo/safecenter/dialog/CustomDialog;)V

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_7

    :cond_e
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->v:[Ljava/lang/String;

    goto :goto_9

    .line 635
    :cond_f
    iget-object v4, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->n:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 638
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 640
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->n:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7
.end method

.method public getDialog()Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->p:Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-object v0
.end method

.method public reSetTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->e:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-object p0
.end method

.method public setButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 505
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 506
    if-eqz p1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    :cond_0
    :goto_0
    return-object p0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "isColorNegativeButton"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->G:Z

    .line 94
    return-object p0
.end method

.method public setColorNeutralButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "isColorNeutralButton"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->H:Z

    .line 88
    return-object p0
.end method

.method public setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "isColorPositiveButton"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->F:Z

    .line 100
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->n:Landroid/view/View;

    .line 175
    return-object p0
.end method

.method public setIcon(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->d:I

    .line 111
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 393
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    .line 394
    iput p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->u:I

    .line 395
    if-nez p2, :cond_0

    .line 396
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$2;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 406
    :goto_0
    return-object p0

    .line 404
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->A:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "itemsId"    # [Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 411
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    .line 412
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->v:[Ljava/lang/String;

    .line 413
    if-nez p2, :cond_0

    .line 414
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$3;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->A:Landroid/content/DialogInterface$OnClickListener;

    .line 424
    :goto_0
    return-object p0

    .line 422
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->A:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->f:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->f:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h:Ljava/lang/String;

    .line 266
    if-nez p2, :cond_0

    .line 267
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$13;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$13;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    .line 277
    :goto_0
    return-object p0

    .line 275
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "autoDismiss"    # Z

    .prologue
    .line 315
    iput-boolean p3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->D:Z

    .line 316
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h:Ljava/lang/String;

    .line 318
    if-nez p2, :cond_0

    .line 319
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$15;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$15;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    .line 328
    :goto_0
    return-object p0

    .line 326
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->h:Ljava/lang/String;

    .line 290
    if-nez p2, :cond_0

    .line 291
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$14;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$14;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    .line 301
    :goto_0
    return-object p0

    .line 299
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->y:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNegativeButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 495
    if-eqz p1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :cond_0
    :goto_0
    return-object p0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->i:Ljava/lang/String;

    .line 335
    if-nez p2, :cond_0

    .line 336
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$16;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$16;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 345
    :goto_0
    return-object p0

    .line 343
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "autoDismiss"    # Z

    .prologue
    .line 375
    iput-boolean p3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->E:Z

    .line 376
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->i:Ljava/lang/String;

    .line 378
    if-nez p2, :cond_0

    .line 379
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$18;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$18;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 388
    :goto_0
    return-object p0

    .line 386
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "neutralButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->i:Ljava/lang/String;

    .line 351
    if-nez p2, :cond_0

    .line 352
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$17;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$17;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 362
    :goto_0
    return-object p0

    .line 360
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->x:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNeutralButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 484
    if-eqz p1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    :cond_0
    :goto_0
    return-object p0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->B:Landroid/content/DialogInterface$OnCancelListener;

    .line 468
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->g:Ljava/lang/String;

    .line 189
    if-nez p2, :cond_0

    .line 190
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$1;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    :goto_0
    return-object p0

    .line 198
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "autoDismiss"    # Z

    .prologue
    .line 238
    iput-boolean p3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->C:Z

    .line 239
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->g:Ljava/lang/String;

    .line 241
    if-nez p2, :cond_0

    .line 242
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$12;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$12;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 252
    :goto_0
    return-object p0

    .line 250
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->g:Ljava/lang/String;

    .line 213
    if-nez p2, :cond_0

    .line 214
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$11;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$11;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    :goto_0
    return-object p0

    .line 222
    :cond_0
    iput-object p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->w:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setPositiveButtonVisible(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 473
    if-eqz p1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_0
    :goto_0
    return-object p0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "singleChoiceItemsId"    # I
    .param p2, "singleChoiceCheckedId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    .line 431
    iput p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->r:I

    .line 432
    iput p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->s:I

    .line 433
    if-nez p3, :cond_0

    .line 434
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$4;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 444
    :goto_0
    return-object p0

    .line 442
    :cond_0
    iput-object p3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->z:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setSingleChoiceItems([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "singleChoiceItems"    # [Ljava/lang/String;
    .param p2, "singleChoiceCheckedId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->q:I

    .line 450
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->t:[Ljava/lang/String;

    .line 451
    iput p2, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->s:I

    .line 452
    if-nez p3, :cond_0

    .line 453
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$5;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder$5;-><init>(Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->z:Landroid/content/DialogInterface$OnClickListener;

    .line 463
    :goto_0
    return-object p0

    .line 461
    :cond_0
    iput-object p3, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->z:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->e:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->e:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public show()Lcom/lenovo/safecenter/dialog/CustomDialog;
    .locals 2

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    .line 733
    .local v0, "dialog":Lcom/lenovo/safecenter/dialog/CustomDialog;
    iput-object v0, p0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->p:Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 734
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 735
    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    .line 736
    return-object v0
.end method
