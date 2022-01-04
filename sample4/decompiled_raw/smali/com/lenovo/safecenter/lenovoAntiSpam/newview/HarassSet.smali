.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "HarassSet.java"


# instance fields
.field private A:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field a:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a:Z

    .line 580
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->z:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 592
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$5;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->A:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->m:I

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->n:I

    return p1
.end method

.method private a(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/16 v3, 0xa

    .line 567
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 569
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->w:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    if-ge v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :cond_0
    :goto_1
    return-void

    .line 569
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->v:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    if-ge v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;II)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/4 v3, 0x3

    .line 29
    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SIMReader;->getSimOperator(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_4

    if-lez p2, :cond_4

    if-ne v1, v3, :cond_3

    const-string v0, "*900"

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "%23%2367%23"

    goto :goto_1

    :cond_4
    if-lez p1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    if-ne v1, v3, :cond_5

    const-string v0, "*9013641244138"

    goto :goto_1

    :cond_5
    const-string v0, "**67*13641244138%23"

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    if-ne v1, v3, :cond_7

    const-string v0, "*9013641244026"

    goto :goto_1

    :cond_7
    const-string v0, "**67*13641244026%23"

    goto :goto_1

    :cond_8
    if-ne p1, v3, :cond_2

    if-ne v1, v3, :cond_9

    const-string v0, "*9013800000000"

    goto :goto_1

    :cond_9
    const-string v0, "**67*13800000000%23"

    goto :goto_1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->n:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->m:I

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    return p1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->s:I

    return p1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0409

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nightharss_callmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$3;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->o:I

    return p1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    return p1
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->s:I

    return v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(I)V

    return-void
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->p:I

    return p1
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->o:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    return p1
.end method

.method static synthetic j(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    return v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->p:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    return v0
.end method


# virtual methods
.method public InitEndMode()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getDefsetting()I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->c:Landroid/widget/TextView;

    const v1, 0x7f0d073c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getDefsetting()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->c:Landroid/widget/TextView;

    const v1, 0x7f0d073d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getDefsetting()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->c:Landroid/widget/TextView;

    const v1, 0x7f0d073e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getDefsetting()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->c:Landroid/widget/TextView;

    const v1, 0x7f0d073f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public InitMode()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intercall_mode_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    .line 255
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0234

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0235

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 263
    :cond_2
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 266
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0236

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 267
    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public InitNONUmberMode()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->initNoNumberState()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public findViews()V
    .locals 1

    .prologue
    .line 357
    const v0, 0x7f090300

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->b:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f0902fb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->d:Landroid/widget/ImageView;

    .line 359
    const v0, 0x7f090304

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->e:Landroid/widget/ImageView;

    .line 360
    const v0, 0x7f0902fd

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->f:Landroid/widget/RelativeLayout;

    .line 362
    const v0, 0x7f090306

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->k:Landroid/widget/RelativeLayout;

    .line 363
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v0, 0x7f090309

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->c:Landroid/widget/TextView;

    .line 368
    const v0, 0x7f090301

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->g:Landroid/widget/RelativeLayout;

    .line 369
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v0, 0x7f09030a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->h:Landroid/widget/RelativeLayout;

    .line 371
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v0, 0x7f09030c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->t:Landroid/widget/ImageView;

    .line 376
    const v0, 0x7f090312

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->j:Landroid/widget/RelativeLayout;

    .line 377
    const v0, 0x7f09030e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->i:Landroid/widget/RelativeLayout;

    .line 378
    const v0, 0x7f090316

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->u:Landroid/widget/RelativeLayout;

    .line 379
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->v:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f090315

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->w:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f090311

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->x:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f09030d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->y:Landroid/widget/TextView;

    .line 383
    return-void
.end method

.method public getDefsetting()I
    .locals 2

    .prologue
    .line 205
    const-string v0, "getendmode"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getendmode"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_1
    const-string v0, "getendmode"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getSpan(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 545
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 546
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 547
    return-object v0
.end method

.method public getSpan_str(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 560
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 561
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 562
    return-object v0
.end method

.method public getSpan_title(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 553
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 554
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 555
    return-object v0
.end method

.method public ininIconState()V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public initNoNumberState()I
    .locals 2

    .prologue
    .line 289
    const-string v0, "getnonumber"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getnonumber"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initTimes()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BH"

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->o:I

    .line 404
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EH"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->p:I

    .line 406
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BM"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    .line 408
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EM"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    .line 410
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(I)V

    .line 411
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->a(I)V

    .line 412
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_callmode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->x:Landroid/widget/TextView;

    const v1, 0x7f0d040a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 422
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->t:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->y:Landroid/widget/TextView;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 433
    :goto_1
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->x:Landroid/widget/TextView;

    const v1, 0x7f0d040b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->t:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->y:Landroid/widget/TextView;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$10;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$10;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->u:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$11;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$11;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$12;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$12;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->t:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$13;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$13;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0d0046

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904b9

    if-ne v1, v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->finish()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0902fb

    if-ne v1, v2, :cond_3

    .line 86
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getProtectHarassSwitchState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00f2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d03e5

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v1, v6, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v4}, Lcom/lenovo/safecenter/utils/Const;->setProtectHarassSwitchState(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->ininIconState()V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090304

    if-ne v1, v2, :cond_5

    .line 97
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->initNoNumberState()I

    move-result v1

    if-nez v1, :cond_4

    .line 99
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    const-string v2, "getnonumber"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 100
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportInterceptUnknownNumbersSwitchChange(Ljava/lang/Boolean;)V

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->InitNONUmberMode()V

    goto :goto_0

    .line 104
    :cond_4
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;-><init>()V

    const-string v2, "getnonumber"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/HttpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 105
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportInterceptUnknownNumbersSwitchChange(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0902fd

    if-ne v1, v2, :cond_6

    .line 110
    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d04f5

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intercall_mode_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$8;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v1, v6, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 111
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090306

    if-ne v1, v2, :cond_8

    .line 113
    invoke-static {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/SIMReader;->getSimOperator(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 115
    new-instance v1, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f08001a

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getDefsetting()I

    move-result v3

    new-instance v4, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$6;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;)V

    invoke-virtual {v1, v6, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    goto/16 :goto_0

    .line 118
    :cond_7
    const v1, 0x7f0d0757

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 120
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090301

    if-ne v1, v2, :cond_9

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09030a

    if-ne v1, v2, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/WhiteABlackMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->setContentView(I)V

    .line 67
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0263

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->findViews()V

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->ininIconState()V

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->InitMode()V

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->InitEndMode()V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->InitNONUmberMode()V

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_callmode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->s:I

    .line 74
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->initTimes()V

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->onBtnClick()V

    .line 76
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 606
    packed-switch p1, :pswitch_data_0

    .line 614
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 608
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->z:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->o:I

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 611
    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->A:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->p:I

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 394
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 395
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 396
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 619
    packed-switch p1, :pswitch_data_0

    .line 627
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 621
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->o:I

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->q:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 624
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->p:I

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/HarassSet;->r:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 387
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 388
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 390
    return-void
.end method
