.class public Lcom/lenovo/safecenter/AppsManager/AppPermManager;
.super Landroid/app/Activity;
.source "AppPermManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;
    }
.end annotation


# static fields
.field public static final CHANGE_BACKGROUND:I = 0x8


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:[Landroid/widget/RelativeLayout;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Ljava/lang/String;

.field private H:[Ljava/lang/String;

.field private I:[Ljava/lang/String;

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:I

.field private a:Lcom/lenovo/safecenter/database/AppDatabase;

.field private aa:Landroid/os/Handler;

.field private b:Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;

.field private c:Landroid/app/ProgressDialog;

.field private d:[Landroid/widget/TextView;

.field private e:[Landroid/widget/ImageView;

.field private f:[I

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$1;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    .line 906
    return-void
.end method

.method static synthetic A(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic B(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->K:Ljava/util/List;

    return-object v0
.end method

.method static synthetic C(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->U:Z

    return v0
.end method

.method static synthetic E(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 11
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    const v10, 0x7f0d034b

    const v9, 0x7f09027c

    const/4 v8, 0x1

    const/16 v7, 0x8

    const v6, 0x7f090281

    .line 47
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->K:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/SafeLog;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300bd

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0202d2

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f090435

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090437

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f090280

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v4, v0, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    if-ne v4, v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d0487

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0, v5}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v1, 0x7f09027e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d05d0

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/MyUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget v1, v0, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-nez v1, :cond_2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d05cd

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070018

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_0
    iget-object v4, v0, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lenovo/safecenter/support/SafeLog;->number:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d05ce

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/lenovo/safecenter/support/SafeLog;->id:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070017

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    iput-boolean v8, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->U:Z

    return-void
.end method

.method static synthetic F(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppPermManager$8;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$8;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0160

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$7;->start()V

    return-void
.end method

.method static synthetic I(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic J(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    return-void
.end method

.method private a(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "selected"    # I

    .prologue
    .line 773
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tip ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "off ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    :cond_2
    if-nez p2, :cond_0

    .line 780
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sendmessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;IIII)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    const v3, 0x7f02022f

    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, p1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, p1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, p1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->T:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0d05dd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0d05de

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->W:Z

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # [I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f:[I

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # [Landroid/widget/ImageView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Landroid/widget/RelativeLayout;)[Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # [Landroid/widget/RelativeLayout;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Landroid/widget/TextView;)[Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # [Landroid/widget/TextView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Z:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->K:Ljava/util/List;

    return-object p1
.end method

.method private b(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->R:Z

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/AppsManager/AppPermManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->I:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->d:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->P:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->X:Z

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->W:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d04ca

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d04cc

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d04ce

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->R:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d04cb

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d04cd

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d04ce

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->w:Landroid/widget/TextView;

    const v2, 0x7f0d0587

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->W:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->R:Z

    if-nez v1, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(I)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(I)V

    :goto_3
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->j:Landroid/widget/TextView;

    const v2, 0x7f0d053b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->k:Landroid/widget/TextView;

    const v2, 0x7f0d053a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->w:Landroid/widget/TextView;

    const v2, 0x7f0d0588

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->W:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(I)V

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/lenovo/safecenter/database/AppUtil;->isTariffType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(I)V

    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/lenovo/safecenter/database/AppUtil;->isTariffType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->R:Z

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(I)V

    :goto_6
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/lenovo/safecenter/database/AppUtil;->isTariffType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b(I)V

    :goto_7
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/lenovo/safecenter/database/AppUtil;->isTariffType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method static synthetic p(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->S:Z

    return v0
.end method

.method static synthetic y(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic z(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppPermManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f:[I

    return-object v0
.end method


# virtual methods
.method public declared-synchronized initApps()V
    .locals 2

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$3;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    .line 531
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$4;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 463
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 632
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->T:Z

    if-nez v3, :cond_1

    .line 633
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 698
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 699
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->B:[Landroid/widget/RelativeLayout;

    aget-object v3, v3, v1

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->e:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    if-ne p1, v3, :cond_3

    .line 700
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 701
    .local v2, "type":Ljava/lang/String;
    iput v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Z:I

    .line 702
    const-string v3, "sendmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 703
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 704
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 698
    .end local v2    # "type":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 637
    .end local v1    # "i":I
    :sswitch_0
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    .line 639
    :try_start_0
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    if-eqz v3, :cond_6

    .line 640
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->L:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->updateAppTrust(Ljava/lang/String;Ljava/lang/String;I)V

    .line 641
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 644
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v4, "0"

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_4
    move v3, v5

    .line 637
    goto :goto_3

    .line 646
    .restart local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->L:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/safecenter/database/AppDatabase;->updateAppTrust(Ljava/lang/String;Ljava/lang/String;I)V

    .line 649
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 651
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 652
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-le v3, v4, :cond_7

    .line 653
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->f:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 651
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 655
    :cond_7
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "sendmessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 656
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v4, "2"

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 658
    :cond_8
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "privacy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 659
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v4, "1"

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 661
    :cond_9
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v4, "0"

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 667
    :cond_a
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 675
    .end local v1    # "i":I
    :sswitch_1
    const v3, 0x7f0d0351

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d00f2

    invoke-virtual {v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0046

    new-instance v5, Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$6;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0047

    new-instance v5, Lcom/lenovo/safecenter/AppsManager/AppPermManager$5;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$5;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 679
    :sswitch_2
    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Z:I

    invoke-direct {p0, v3, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(II)V

    .line 680
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 684
    :sswitch_3
    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Z:I

    invoke-direct {p0, v3, v6}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(II)V

    .line 685
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 689
    :sswitch_4
    iget v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Z:I

    invoke-direct {p0, v3, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a(II)V

    .line 690
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 694
    :sswitch_5
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 706
    .restart local v1    # "i":I
    .restart local v2    # "type":Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 709
    :cond_c
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_7
    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v6, "0"

    invoke-interface {v3, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v3, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "on ok"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_8
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 713
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :cond_d
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->aa:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_e
    move v3, v5

    .line 709
    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    const-string v6, "1"

    invoke-interface {v3, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v3, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "off ok"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 635
    :sswitch_data_0
    .sparse-switch
        0x7f0901e7 -> :sswitch_1
        0x7f0901e8 -> :sswitch_5
        0x7f0901eb -> :sswitch_0
        0x7f0901fa -> :sswitch_2
        0x7f0901fb -> :sswitch_3
        0x7f0901fc -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->setContentView(I)V

    .line 248
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->T:Z

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->L:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pkgname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->N:Ljava/lang/String;

    const v1, 0x7f0d0111

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->O:Ljava/lang/String;

    const v1, 0x7f0d0112

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->P:Ljava/lang/String;

    const v1, 0x7f0d01bb

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Q:Ljava/lang/String;

    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->g:Landroid/widget/TextView;

    const v2, 0x7f0d0209

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0905ae

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$2;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901ec

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->h:Landroid/widget/TextView;

    const v1, 0x7f0901ea

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->s:Landroid/widget/ImageView;

    const v1, 0x7f0901ee

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->j:Landroid/widget/TextView;

    const v1, 0x7f090203

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->k:Landroid/widget/TextView;

    const v1, 0x7f090218

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->l:Landroid/widget/TextView;

    const v1, 0x7f0901f2

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->i:Landroid/widget/TextView;

    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t:Landroid/widget/ImageView;

    const v1, 0x7f0901eb

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y:Landroid/widget/ImageView;

    const v1, 0x7f090217

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->x:Landroid/widget/LinearLayout;

    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z:Landroid/widget/TextView;

    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->A:Landroid/widget/TextView;

    const v1, 0x7f0901f1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->m:Landroid/widget/TextView;

    const v1, 0x7f0901f7

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->n:Landroid/widget/TextView;

    const v1, 0x7f090201

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->o:Landroid/widget/TextView;

    const v1, 0x7f090208

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->p:Landroid/widget/TextView;

    const v1, 0x7f09020e

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->q:Landroid/widget/TextView;

    const v1, 0x7f090214

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->r:Landroid/widget/TextView;

    const v1, 0x7f0901e7

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u:Landroid/widget/TextView;

    const v1, 0x7f0901e8

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->v:Landroid/widget/TextView;

    const v1, 0x7f0901ed

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->w:Landroid/widget/TextView;

    const v1, 0x7f0901f9

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    const v1, 0x7f0901fa

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->D:Landroid/widget/LinearLayout;

    const v1, 0x7f0901fc

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->E:Landroid/widget/LinearLayout;

    const v1, 0x7f0901fb

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->F:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->v:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->u:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->C:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->T:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    new-instance v1, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->s:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->T:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->M:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->L:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->isAppTrusted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    iput-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->S:Z

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y:Landroid/widget/ImageView;

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 250
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->initApps()V

    .line 252
    new-instance v1, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;

    invoke-direct {v1, p0, v5}, Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AppPermManager;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    return-void

    .line 249
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->y:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->b:Lcom/lenovo/safecenter/AppsManager/AppPermManager$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    .line 264
    if-ne p1, v2, :cond_0

    .line 265
    iget-boolean v0, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->S:Z

    iget-boolean v1, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->V:Z

    if-eq v0, v1, :cond_1

    .line 266
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->setResult(I)V

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->finish()V

    .line 271
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 268
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->setResult(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 819
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 822
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->H:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 823
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->J:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 824
    .local v1, "select":I
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->a:Lcom/lenovo/safecenter/database/AppDatabase;

    iget v4, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->Y:I

    invoke-virtual {v3, v1, v4, v2}, Lcom/lenovo/safecenter/database/AppDatabase;->updateApp(IILjava/lang/String;)V

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v1    # "select":I
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->T:Z

    if-eqz v3, :cond_1

    .line 827
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/safecenter/support/SafeCenterService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 830
    :cond_1
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->N:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 831
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/AppsManager/AppPermManager;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 836
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 459
    return-void
.end method
