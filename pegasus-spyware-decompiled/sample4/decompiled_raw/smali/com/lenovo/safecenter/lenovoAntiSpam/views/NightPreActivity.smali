.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "NightPreActivity.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private o:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 247
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$8;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->n:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 259
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->o:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method public static Judge(IIII)Z
    .locals 9
    .param p0, "bh"    # I
    .param p1, "bm"    # I
    .param p2, "eh"    # I
    .param p3, "em"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 302
    .local v3, "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 303
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "times":[Ljava/lang/String;
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "curH":I
    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    .local v1, "curM":I
    if-le p0, p2, :cond_4

    .line 307
    if-le v0, p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v5

    .line 311
    :cond_1
    if-lt v0, p2, :cond_0

    .line 315
    if-ne v0, p0, :cond_2

    .line 317
    if-ge v1, p1, :cond_0

    .line 323
    :cond_2
    if-ne v0, p2, :cond_3

    .line 325
    if-le v1, p3, :cond_0

    :cond_3
    move v5, v6

    .line 365
    goto :goto_0

    .line 330
    :cond_4
    if-ge p0, p2, :cond_7

    .line 332
    if-le v0, p0, :cond_5

    if-gt p2, v0, :cond_0

    .line 337
    :cond_5
    if-ne v0, p0, :cond_6

    .line 339
    if-ge v1, p1, :cond_0

    .line 345
    :cond_6
    if-ne v0, p2, :cond_3

    .line 347
    if-gt v1, p3, :cond_3

    goto :goto_0

    .line 354
    :cond_7
    if-ne p0, p2, :cond_3

    .line 356
    if-ne v0, p0, :cond_3

    .line 358
    if-ge p1, v1, :cond_3

    if-le p3, v1, :cond_3

    goto :goto_0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->e:I

    return p1
.end method

.method private a(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/16 v3, 0xa

    .line 234
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 236
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->k:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    if-ge v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getSpan_str(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 236
    :cond_1
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->j:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    if-ge v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getSpan_str(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0409

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nightharss_callmode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$7;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->e:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    return p1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    return p1
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    return v0
.end method


# virtual methods
.method public findViews()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f09030c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->f:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f090312

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->h:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f09030e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->g:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f090316

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->i:Landroid/widget/LinearLayout;

    .line 65
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->j:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f090315

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->k:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f090311

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->l:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f09030d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->m:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public getSpan(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 212
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 213
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 214
    return-object v0
.end method

.method public getSpan_str(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 227
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 229
    return-object v0
.end method

.method public getSpan_title(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 220
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    return-object v0
.end method

.method public initTimes()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BH"

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    .line 82
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EH"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    .line 84
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BM"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EM"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    .line 88
    invoke-direct {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a(I)V

    .line 89
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a(I)V

    .line 90
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_callmode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0d040a

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 100
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :goto_1
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0d040b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public judgeNightHarass()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return v4

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BH"

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    .line 378
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EH"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    .line 380
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_BM"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    .line 382
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_EM"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    .line 384
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->Judge(IIII)Z

    goto :goto_0
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0300bf

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->findViews()V

    .line 37
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d03f6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 38
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightharss_callmode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->e:I

    .line 39
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->initTimes()V

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->onBtnClick()V

    .line 41
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 281
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 275
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->n:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 278
    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->o:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    iget v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 53
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 54
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 294
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 288
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->a:I

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->c:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 291
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->b:I

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/NightPreActivity;->d:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 47
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 48
    return-void
.end method
