.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "HandBlackActivity.java"


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/CheckBox;

.field private i:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->f:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->i:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    return-object v0
.end method

.method public static isLocalBlack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    .line 266
    .local v8, "help":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    invoke-virtual {v8, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->isMobileNO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v8, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->optNUmber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    :cond_0
    const-string v2, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 271
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 273
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    if-lez v6, :cond_1

    .line 276
    const/4 v2, 0x1

    .line 280
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "help":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :goto_0
    return v2

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "count":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "help":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :cond_1
    move v2, v9

    .line 278
    goto :goto_0

    .line 280
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "help":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    :catch_0
    move-exception v2

    move v2, v9

    goto :goto_0
.end method


# virtual methods
.method public isLocalBlackEdit(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 289
    :try_start_0
    const-string v0, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 290
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) and _id<>?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 291
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 292
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    if-lez v6, :cond_0

    move v0, v8

    .line 299
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "count":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    move v0, v9

    .line 297
    goto :goto_0

    .line 299
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move v0, v9

    goto :goto_0
.end method

.method public onBtnClick()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->finish()V

    .line 115
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f020286

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->j:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->a:I

    .line 41
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->setContentView(I)V

    .line 43
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->i:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 44
    const v1, 0x7f0900c3

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    .line 45
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    .line 46
    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b:Landroid/widget/EditText;

    .line 47
    const v1, 0x7f0900c2

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->c:Landroid/widget/EditText;

    .line 48
    const v1, 0x7f0900c6

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d:Landroid/widget/Button;

    .line 49
    const v1, 0x7f0900c5

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->e:Landroid/widget/Button;

    .line 52
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->f:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->onBtnClick()V

    .line 54
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->j:Ljava/lang/String;

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d027a

    invoke-virtual {p0, v1, v2, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 58
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->j:Ljava/lang/String;

    const-string v2, "modify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d:Landroid/widget/Button;

    const v2, 0x7f0202e1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 63
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->i:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getLocalBlackDemo(I)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    move-result-object v0

    .line 64
    .local v0, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;
    const-string v1, "info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->d:Landroid/widget/Button;

    const v2, 0x7f0d004a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d004b

    invoke-virtual {p0, v1, v2, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 72
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 74
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getIsUpload()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 93
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 100
    :goto_2
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 78
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 82
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 120
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 126
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 127
    return-void
.end method
