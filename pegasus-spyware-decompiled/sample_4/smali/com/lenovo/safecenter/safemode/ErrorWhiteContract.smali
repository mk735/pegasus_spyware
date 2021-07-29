.class public Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;
.super Landroid/app/Activity;
.source "ErrorWhiteContract.java"


# static fields
.field public static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/BaseAdapter;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    .line 43
    iput v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->g:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->g:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0d0105

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0d01b0

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0d01ab

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x7f0d01b4

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;

    invoke-direct {v3, p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$7;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->g:I

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;

    .prologue
    .line 36
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01bd

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01b9

    new-instance v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$9;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01ba

    new-instance v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$8;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$8;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    return-void
.end method


# virtual methods
.method public getWhiteCount(I)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 68
    const v1, 0x7f0d01b5

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public initDate()V
    .locals 3

    .prologue
    .line 393
    new-instance v0, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;

    sget-object v1, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget-boolean v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    .line 394
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 395
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$5;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$5;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$6;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030126

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->setContentView(I)V

    .line 49
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v0, 0x7f090606

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    .line 51
    const v0, 0x7f090607

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->d:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f090605

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->c:Landroid/widget/TextView;

    .line 55
    new-instance v0, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 56
    sget-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->onClick()V

    .line 59
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01b7

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f080000

    new-instance v2, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$1;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 501
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 503
    iget-boolean v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    if-eqz v3, :cond_1

    .line 505
    sget-object v3, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 507
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0, v2}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_0

    .line 509
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_0
    iput-boolean v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    .line 510
    new-instance v2, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;

    sget-object v3, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget-boolean v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    invoke-direct {v2, p0, v3, v4}, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    .line 511
    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 512
    const/4 v2, 0x1

    .line 515
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 447
    :pswitch_1
    iput-boolean v5, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    .line 448
    new-instance v4, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;

    sget-object v5, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget-boolean v6, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    invoke-direct {v4, p0, v5, v6}, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    .line 449
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 453
    :pswitch_2
    sget-object v4, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 455
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0, v5}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_1

    .line 457
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 460
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_3
    sget-object v4, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 462
    .restart local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0, v6}, Lcom/lenovo/safecenter/support/Contract;->setSelect(Z)V

    goto :goto_2

    .line 464
    .end local v0    # "con":Lcom/lenovo/safecenter/support/Contract;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 467
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v3, "select_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/Contract;>;"
    sget-object v4, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 470
    sget-object v4, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/safecenter/support/Contract;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/support/Contract;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 472
    sget-object v4, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v4, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 468
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 476
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 479
    const-string v4, "com.lenovo.securityperson.change"

    invoke-static {p0, v4}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 480
    iput-boolean v6, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->f:Z

    .line 481
    new-instance v4, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;

    sget-object v5, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Lcom/lenovo/safecenter/adapter/whiteContractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    .line 482
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->b:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 445
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
    .locals 0

    .prologue
    .line 406
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 408
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 400
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->initDate()V

    .line 401
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 402
    return-void
.end method

.method public showAddDialog()V
    .locals 9

    .prologue
    const/16 v8, 0x90

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300f9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 123
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090501

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 124
    .local v0, "pwd":Landroid/widget/EditText;
    const v5, 0x7f090503

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 125
    .local v1, "pwd2":Landroid/widget/EditText;
    const v5, 0x7f090500

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, "txt1":Landroid/widget/TextView;
    const v5, 0x7f090502

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 127
    .local v3, "txt2":Landroid/widget/TextView;
    const v5, 0x7f0d01e5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v5, 0x7f0d01e6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 129
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 130
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 133
    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0022

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01b9

    new-instance v7, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;

    invoke-direct {v7, p0, v0, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$4;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01ba

    new-instance v7, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$3;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$3;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 184
    return-void
.end method

.method public showChangeContract()V
    .locals 10

    .prologue
    const/16 v9, 0x90

    .line 332
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300f9

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 333
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f090501

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 334
    .local v1, "pwd":Landroid/widget/EditText;
    const v6, 0x7f090503

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 335
    .local v2, "pwd2":Landroid/widget/EditText;
    const v6, 0x7f090500

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 336
    .local v3, "txt1":Landroid/widget/TextView;
    const v6, 0x7f090502

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 337
    .local v4, "txt2":Landroid/widget/TextView;
    const v6, 0x7f0d01e6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 338
    const v6, 0x7f0d01e5

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 339
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 340
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 341
    sget-object v6, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->list:Ljava/util/List;

    iget v7, p0, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;->g:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .line 343
    .local v0, "con":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 345
    :cond_0
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 352
    new-instance v6, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d01b4

    invoke-virtual {v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d01b9

    new-instance v8, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;

    invoke-direct {v8, p0, v2, v1}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$2;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    const v7, 0x7f0d01ba

    new-instance v8, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$10;

    invoke-direct {v8, p0}, Lcom/lenovo/safecenter/safemode/ErrorWhiteContract$10;-><init>(Lcom/lenovo/safecenter/safemode/ErrorWhiteContract;)V

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 387
    return-void

    .line 348
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
