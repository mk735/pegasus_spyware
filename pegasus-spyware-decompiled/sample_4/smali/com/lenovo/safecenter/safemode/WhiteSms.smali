.class public Lcom/lenovo/safecenter/safemode/WhiteSms;
.super Landroid/app/Activity;
.source "WhiteSms.java"


# instance fields
.field a:Landroid/app/NotificationManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/Contract;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lenovo/safecenter/database/AppDatabase;

.field private d:I

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

.field public hand:Landroid/os/Handler;

.field private i:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->j:Z

    .line 50
    new-instance v0, Lcom/lenovo/safecenter/safemode/WhiteSms$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/WhiteSms$1;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->hand:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->d:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteSms;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/WhiteSms;Lcom/lenovo/safecenter/support/Contract;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;
    .param p1, "x1"    # Lcom/lenovo/safecenter/support/Contract;

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const v2, 0x7f0d01ab

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSms;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const v2, 0x7f0d01b0

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSms;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const v2, 0x7f0d05ec

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSms;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/safecenter/support/Contract;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteSms$7;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/safemode/WhiteSms$7;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;Lcom/lenovo/safecenter/support/Contract;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/WhiteSms;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/WhiteSms;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0654

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteSms$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteSms$6;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/safemode/WhiteSms$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/WhiteSms$5;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/WhiteSms;)Lcom/lenovo/safecenter/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/WhiteSms;)Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->h:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/WhiteSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/WhiteSms;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->d:I

    return v0
.end method


# virtual methods
.method public initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    iget-boolean v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->j:Z

    if-nez v1, :cond_2

    .line 240
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->j:Z

    .line 241
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/database/AppDatabase;->getwhiteSms()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->b:Ljava/util/List;

    .line 242
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->i:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;->getWhiteSMS(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->b:Ljava/util/List;

    .line 245
    const-string v1, "txtEmpty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->h:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    .line 256
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->h:Lcom/lenovo/safecenter/adapter/whiteSmsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_2
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    iput-boolean v4, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->j:Z

    goto :goto_0
.end method

.method public onBtnClick()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "txtEmpty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteSms$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteSms$2;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteSms$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteSms$3;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->g:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/safemode/WhiteSms$4;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/WhiteSms$4;-><init>(Lcom/lenovo/safecenter/safemode/WhiteSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03012a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->setContentView(I)V

    .line 71
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->e:Landroid/widget/ListView;

    .line 74
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->f:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f090614

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const v0, 0x7f090613

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    const v0, 0x7f090615

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->g:Landroid/widget/Button;

    .line 81
    new-instance v0, Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    .line 83
    new-instance v0, Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/utils/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->i:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    .line 84
    sget-object v0, Lcom/lenovo/safecenter/utils/DataHelpUtils;->allActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0573

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->onBtnClick()V

    .line 88
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->a:Landroid/app/NotificationManager;

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->a:Landroid/app/NotificationManager;

    sget v1, Lcom/lenovo/safecenter/utils/Constant;->SMS_NOTI_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 297
    :pswitch_0
    sput-boolean v6, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 298
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v1, "intent_del":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/WhiteSms;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    .end local v1    # "intent_del":Landroid/content/Intent;
    :pswitch_1
    sput-boolean v6, Lcom/lenovo/safecenter/support/HttpUtils;->private_isOpenSec:Z

    .line 304
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/safecenter/safemode/ManWhiteSms;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v2, "intent_recover":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/WhiteSms;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    .end local v2    # "intent_recover":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/WhiteSms;->c:Lcom/lenovo/safecenter/database/AppDatabase;

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/database/AppDatabase;->updateSmsStatus(I)V

    .line 310
    const-string v3, "Parent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 313
    const-string v3, "SofeModeMain"

    invoke-static {v3}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->getActivityByName(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;

    .line 314
    .local v0, "activity":Lcom/lenovo/safecenter/safemode/SofeModeMain;
    iget-object v3, v0, Lcom/lenovo/safecenter/safemode/SofeModeMain;->hand:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/WhiteSms;->initData()V

    .line 109
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 110
    return-void
.end method
