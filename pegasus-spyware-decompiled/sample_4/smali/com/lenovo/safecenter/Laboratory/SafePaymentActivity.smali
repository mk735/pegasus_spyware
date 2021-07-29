.class public Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;
.super Landroid/app/Activity;
.source "SafePaymentActivity.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Lcom/lenovo/safecenter/adapter/DaoImpl;

.field g:Landroid/content/pm/PackageManager;

.field h:Landroid/app/ActivityManager;

.field i:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

.field j:Landroid/content/SharedPreferences;

.field k:Lcom/lenovo/safecenter/dialog/CustomDialog;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/widget/RelativeLayout;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 197
    new-instance v0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$4;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    .prologue
    .line 37
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04c5

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$5;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    .line 280
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, "InputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 282
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "NewInputMethodName":Ljava/lang/String;
    const-string v3, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const-string v3, "info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v3, 0x1

    .line 288
    .end local v1    # "NewInputMethodName":Ljava/lang/String;
    :goto_1
    return v3

    .line 281
    .restart local v1    # "NewInputMethodName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "NewInputMethodName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    .prologue
    .line 37
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04c6

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$6;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0200df

    const v7, 0x7f0200de

    const/4 v6, 0x1

    const/high16 v5, -0x10000

    const/16 v4, 0x8

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f0300fc

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_input_method"

    const-string v3, "com.android.inputmethod.latin/.LatinIME"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_input_broadcast"

    const-string v3, "com.lenovo.safecenter.safeinputmethod"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    .line 56
    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "topBar":Landroid/widget/TextView;
    const v1, 0x7f0d020b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$1;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a()Z

    .line 65
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->g:Landroid/content/pm/PackageManager;

    .line 66
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->h:Landroid/app/ActivityManager;

    .line 68
    invoke-static {p0}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->getDefault(Landroid/content/Context;)Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->i:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    .line 69
    new-instance v1, Lcom/lenovo/safecenter/adapter/DaoImpl;

    new-instance v2, Lcom/lenovo/safecenter/adapter/DbAdapter;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/safecenter/adapter/DbAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/adapter/DaoImpl;-><init>(Lcom/lenovo/safecenter/adapter/DbAdapter;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->f:Lcom/lenovo/safecenter/adapter/DaoImpl;

    .line 70
    const v1, 0x7f090517

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->l:Landroid/widget/RelativeLayout;

    .line 71
    const v1, 0x7f090516

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->e:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f090511

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f09051a

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f090512

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a:Landroid/widget/ImageView;

    .line 75
    const v1, 0x7f09051b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f09051c

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->m:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    const-string v2, "safepaymen_on"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0d021d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safeinputmethod_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 88
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->j:Landroid/content/SharedPreferences;

    const-string v2, "safeinput"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0220

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d054f

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$2;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity$3;-><init>(Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    :cond_1
    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0d003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/SafePaymentActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 232
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 238
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    return-void
.end method
