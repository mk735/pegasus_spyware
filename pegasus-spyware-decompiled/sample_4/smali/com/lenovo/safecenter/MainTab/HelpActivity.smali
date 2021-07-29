.class public Lcom/lenovo/safecenter/MainTab/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"

# interfaces
.implements Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;


# static fields
.field static a:Z


# instance fields
.field private b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/content/SharedPreferences;

.field private g:[Landroid/widget/ImageView;

.field private h:[Landroid/widget/ImageView;

.field private i:[Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:Landroid/widget/LinearLayout;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/HelpActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/HelpActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/MainTab/HelpActivity;)Lcom/lenovo/safecenter/MainTab/MyScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/HelpActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/MainTab/HelpActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/MainTab/HelpActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    return v0
.end method


# virtual methods
.method public OnViewChange(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 215
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->k:I

    if-ne v0, p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->k:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput p1, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->k:I

    iget v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0d06cf

    const/16 v10, 0x21

    const v9, 0x7f0d06d3

    const/4 v8, 0x0

    const v7, 0x7f0d06d0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f030086

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->setContentView(I)V

    .line 54
    const-string v3, "antitheft"

    invoke-virtual {p0, v3, v8}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->f:Landroid/content/SharedPreferences;

    .line 55
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->f:Landroid/content/SharedPreferences;

    const-string v4, "frommain"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->m:Z

    .line 57
    const v3, 0x7f090187

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    .line 65
    iget v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    new-array v3, v3, [Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->i:[Landroid/graphics/Bitmap;

    .line 66
    iget v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->h:[Landroid/widget/ImageView;

    .line 67
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->i:[Landroid/graphics/Bitmap;

    const v4, 0x7f02014d

    invoke-static {p0, v4}, Lcom/lenovo/safecenter/utils/WflUtils;->readBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v8

    .line 70
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->h:[Landroid/widget/ImageView;

    const v3, 0x7f090324

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v8

    .line 73
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->h:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->i:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    const v3, 0x7f090186

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->l:Landroid/widget/LinearLayout;

    .line 77
    const v3, 0x7f090329

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->c:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f09032a

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->d:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f090328

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->e:Landroid/widget/TextView;

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d06d4

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d06d5

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "help5":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .local v2, "ss":Landroid/text/SpannableString;
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Landroid/text/style/URLSpan;

    const-string v4, "http://safe.lenovo.com/new/safeMobile/permission.html"

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 85
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xf66e16

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    new-instance v3, Landroid/text/style/URLSpan;

    const-string v4, "http://safe.lenovo.com/new/safeMobile/contract.html"

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xf66e16

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    const-string v3, "ydp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "help5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ss:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->e:Landroid/widget/TextView;

    new-instance v4, Lcom/lenovo/safecenter/MainTab/HelpActivity$1;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/MainTab/HelpActivity$1;-><init>(Lcom/lenovo/safecenter/MainTab/HelpActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 146
    iget v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->j:I

    if-ge v1, v3, :cond_0

    .line 148
    iget-object v4, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v1

    .line 149
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "help5":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "ss":Landroid/text/SpannableString;
    :catch_0
    move-exception v3

    const-string v3, "ydp"

    const-string v4, "load new app error!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v3, 0x7f0d04db

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/safecenter/MainTab/HelpActivity;->finish()V

    .line 199
    :goto_1
    return-void

    .line 152
    .restart local v0    # "help5":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "ss":Landroid/text/SpannableString;
    :cond_0
    iput v8, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->k:I

    .line 153
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->g:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->k:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 154
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->b:Lcom/lenovo/safecenter/MainTab/MyScrollLayout;

    invoke-virtual {v3, p0}, Lcom/lenovo/safecenter/MainTab/MyScrollLayout;->SetOnViewChangeListener(Lcom/lenovo/safecenter/MainTab/OnViewChangeListener;)V

    .line 155
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->c:Landroid/widget/TextView;

    new-instance v4, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/MainTab/HelpActivity$2;-><init>(Lcom/lenovo/safecenter/MainTab/HelpActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v3, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->d:Landroid/widget/TextView;

    new-instance v4, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/MainTab/HelpActivity$3;-><init>(Lcom/lenovo/safecenter/MainTab/HelpActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/HelpActivity;->i:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 223
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 203
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 209
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    return-void
.end method
