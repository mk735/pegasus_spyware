.class public Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "WhiteSmsShowByNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field public hand:Landroid/os/Handler;

.field private i:Lcom/lenovo/safecenter/database/AppDatabase;

.field private j:Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

.field private k:Ljava/lang/String;

.field private l:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private m:I

.field private n:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;

.field private o:Ljava/lang/String;

.field private p:Lcom/lenovo/safecenter/support/Contract;

.field private q:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->m:I

    .line 58
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$1;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->hand:Landroid/os/Handler;

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->q:J

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->m:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    const v4, 0x7f0d01b1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0d01b0

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v1

    if-eq v1, v2, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$5;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/support/Contract;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->p:Lcom/lenovo/safecenter/support/Contract;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->m:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)Lcom/lenovo/safecenter/utils/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->l:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    return-object v0
.end method


# virtual methods
.method public backToSms(Lcom/lenovo/safecenter/support/Contract;Landroid/content/Context;)V
    .locals 9
    .param p1, "con"    # Lcom/lenovo/safecenter/support/Contract;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    const-string v0, "address"

    .line 466
    .local v0, "ADDRESS":Ljava/lang/String;
    const-string v2, "date"

    .line 467
    .local v2, "DATE":Ljava/lang/String;
    const-string v3, "read"

    .line 468
    .local v3, "READ":Ljava/lang/String;
    const-string v4, "status"

    .line 469
    .local v4, "STATUS":Ljava/lang/String;
    const-string v5, "type"

    .line 470
    .local v5, "TYPE":Ljava/lang/String;
    const-string v1, "body"

    .line 471
    .local v1, "BODY":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://sms"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 479
    return-void
.end method

.method public getSubStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getWordCount(Ljava/lang/String;)I

    move-result v0

    if-le v0, p2, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    :cond_0
    return-object p1
.end method

.method public getWordCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 204
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 205
    .local v0, "ascii":I
    if-ltz v0, :cond_0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 202
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 211
    .end local v0    # "ascii":I
    :cond_1
    return v2
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getwhiteSmsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    .line 286
    new-instance v0, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->j:Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

    .line 287
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->j:Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 313
    return-void
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$2;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$3;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$4;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->finish()V

    .line 230
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x5

    const v7, 0x7f020286

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f03012a

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 102
    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    .line 103
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->f:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f090078

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a:Landroid/widget/Button;

    .line 106
    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    .line 107
    const v2, 0x7f090616

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->g:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 110
    const v2, 0x7f090079

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b:Landroid/widget/Button;

    .line 112
    const v2, 0x7f090076

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d:Landroid/widget/LinearLayout;

    .line 113
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a:Landroid/widget/Button;

    const v3, 0x7f0d01ae

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    .line 116
    new-instance v2, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->l:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 117
    new-instance v2, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 118
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getContractModel(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/safecenter/support/Contract;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->p:Lcom/lenovo/safecenter/support/Contract;

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->onBtnClick()V

    .line 121
    sget-object v2, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->getAllSimState(Landroid/content/Context;)[I

    move-result-object v1

    .line 123
    .local v1, "states":[I
    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    aget v2, v1, v4

    if-eq v2, v8, :cond_0

    aget v2, v1, v4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    aget v2, v1, v4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :goto_0
    aget v2, v1, v5

    if-eq v2, v8, :cond_1

    aget v2, v1, v5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    aget v2, v1, v5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :goto_1
    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;

    invoke-direct {v2, p0, v4}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;B)V

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->n:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->n:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/database/AppDatabase;->getwhiteSmsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    .line 154
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->o:Ljava/lang/String;

    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v6}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->setTitle(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    :goto_2
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 182
    new-instance v2, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->h:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->j:Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

    .line 183
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->e:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->j:Lcom/lenovo/safecenter/adapter/whiteSmsbyNumberAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->hand:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    :cond_2
    return-void

    .line 131
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 144
    :cond_5
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->a:Landroid/widget/Button;

    const v3, 0x7f0d01ad

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->b:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 162
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->p:Lcom/lenovo/safecenter/support/Contract;

    if-eqz v2, :cond_8

    .line 164
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->p:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->o:Ljava/lang/String;

    .line 167
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v6}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->setTitle(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 170
    :cond_7
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->p:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v2}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->o:Ljava/lang/String;

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->p:Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v6}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->setTitle(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->o:Ljava/lang/String;

    .line 176
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v6}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->setTitle(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 259
    const-string v1, "SofeModeMain"

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "SofeModeMain"

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 262
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v1, v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    .end local v0    # "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    :cond_0
    const-string v1, "WhiteSmsShowByNumber"

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    sget-object v1, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->n:Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber$a;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 272
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->q:J

    .line 274
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 252
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 253
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 237
    iget-wide v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->q:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b580

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 239
    sput-boolean v4, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 240
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->finish()V

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->i:Lcom/lenovo/safecenter/database/AppDatabase;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateSmsStatus(Ljava/lang/String;I)V

    .line 244
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onStop()V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSmsShowByNumber;->q:J

    .line 281
    return-void
.end method
