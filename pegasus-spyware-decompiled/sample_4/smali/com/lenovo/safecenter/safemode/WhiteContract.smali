.class public Lcom/lenovo/safecenter/safemode/WhiteContract;
.super Landroid/app/Activity;
.source "WhiteContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/WhiteContract$a;
    }
.end annotation


# instance fields
.field a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private b:Landroid/widget/ExpandableListView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

.field private f:Lcom/lenovo/safecenter/database/AppDatabase;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field public hand:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->h:I

    .line 54
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteContract$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$1;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->hand:Landroid/os/Handler;

    .line 612
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteContract;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->h:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->f:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteContract;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0628

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteContract$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/lenovo/safecenter/safemode/WhiteContract$9;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteContract$8;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$8;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteContract;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "address"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "read"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getIsRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmstype()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "body"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getSmsContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteContract;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d05ee

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteContract$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/lenovo/safecenter/safemode/WhiteContract$7;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteContract$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$6;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/WhiteContract;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->h:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/WhiteContract;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "number"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/safemode/WhiteContract$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->e:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteContract;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public initCopyDel(Lcom/lenovo/safecenter/support/Contract;)V
    .locals 1
    .param p1, "con"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 440
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteContract$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/safecenter/safemode/WhiteContract$3;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/WhiteContract$3;->start()V

    .line 469
    return-void
.end method

.method public initDate()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->f:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/database/AppDatabase;->getAllWhiteContract()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->g:Ljava/util/List;

    .line 589
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$a;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->e:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    .line 590
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->e:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 591
    return-void
.end method

.method public isWhiteEdit(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 569
    :try_start_0
    const-string v0, "content://com.lenovo.safecenter.whiteperson/whiteperson"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 570
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 571
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 572
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    if-lez v6, :cond_0

    move v0, v8

    .line 579
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

    .line 577
    goto :goto_0

    .line 579
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move v0, v9

    goto :goto_0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->c:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteContract$13;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$13;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteContract$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$2;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 340
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->setContentView(I)V

    .line 177
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d01e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->f:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 179
    new-instance v0, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 180
    sget-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    .line 182
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 184
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->c:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->d:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->d:Landroid/widget/TextView;

    const v1, 0x7f0d0575

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->onClick()V

    .line 190
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 602
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 604
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 596
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteContract;->initDate()V

    .line 597
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 598
    return-void
.end method

.method public showAddDialog()V
    .locals 9

    .prologue
    const/16 v8, 0x90

    .line 239
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300f9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 240
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090501

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 241
    .local v0, "pwd":Landroid/widget/EditText;
    const v5, 0x7f090503

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 242
    .local v1, "pwd2":Landroid/widget/EditText;
    const v5, 0x7f090500

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 243
    .local v2, "txt1":Landroid/widget/TextView;
    const v5, 0x7f090502

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, "txt2":Landroid/widget/TextView;
    const v5, 0x7f0d01e5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 245
    const v5, 0x7f0d01e6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 246
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 247
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0022

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01b9

    new-instance v7, Lcom/lenovo/safecenter/safemode/WhiteContract$12;

    invoke-direct {v7, p0, v0, v1}, Lcom/lenovo/safecenter/safemode/WhiteContract$12;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01ba

    new-instance v7, Lcom/lenovo/safecenter/safemode/WhiteContract$11;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$11;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 304
    return-void
.end method

.method public showAddMethod()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01b7

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f080000

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteContract$10;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$10;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 235
    return-void
.end method

.method public showChangeContract(Lcom/lenovo/safecenter/support/Contract;)V
    .locals 10
    .param p1, "con"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    const/16 v9, 0x90

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->e:Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    invoke-virtual {v6}, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->getGroupCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 479
    iget-object v6, p0, Lcom/lenovo/safecenter/safemode/WhiteContract;->b:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300f9

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 482
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f090501

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 483
    .local v1, "pwd":Landroid/widget/EditText;
    const v6, 0x7f090503

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 484
    .local v2, "pwd2":Landroid/widget/EditText;
    const v6, 0x7f090500

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 485
    .local v3, "txt1":Landroid/widget/TextView;
    const v6, 0x7f090502

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 486
    .local v4, "txt2":Landroid/widget/TextView;
    const v6, 0x7f0d01e5

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 487
    const v6, 0x7f0d01e6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 488
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 489
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 491
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 493
    :cond_1
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :goto_1
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    new-instance v6, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d01b4

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d01b9

    new-instance v8, Lcom/lenovo/safecenter/safemode/WhiteContract$5;

    invoke-direct {v8, p0, v1, v2, p1}, Lcom/lenovo/safecenter/safemode/WhiteContract$5;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d01ba

    new-instance v8, Lcom/lenovo/safecenter/safemode/WhiteContract$4;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/safemode/WhiteContract$4;-><init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 562
    return-void

    .line 496
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
