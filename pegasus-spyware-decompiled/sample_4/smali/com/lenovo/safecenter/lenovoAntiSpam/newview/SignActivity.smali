.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "SignActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:I

.field private j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field private k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->i:I

    .line 49
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->o:Landroid/os/Handler;

    .line 458
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public deleteSign(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V
    .locals 6
    .param p1, "sing_call"    # Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    .prologue
    const/4 v5, 0x0

    .line 411
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->delSignCall(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 414
    invoke-virtual {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;->notifyDataSetChanged()V

    .line 428
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 429
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0d04e3

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    return-void

    .line 412
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findViews()V
    .locals 2

    .prologue
    .line 193
    const v0, 0x7f090568

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f09056a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b:Landroid/widget/LinearLayout;

    .line 195
    const v0, 0x7f09049c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->c:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f09049d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    .line 197
    const v0, 0x7f09049e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->d:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 200
    const v0, 0x7f090569

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->e:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f09056b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->f:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f090566

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->g:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 213
    return-void
.end method

.method public getDescFromType(I)Ljava/lang/String;
    .locals 2
    .param p1, "stype"    # I

    .prologue
    const v1, 0x7f0d04e6

    .line 358
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 360
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 361
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 363
    const v0, 0x7f0d04e7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 366
    const v0, 0x7f0d04e8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 369
    const v0, 0x7f0d04e9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 372
    const v0, 0x7f0d04ea

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 375
    const v0, 0x7f0d04eb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_5
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignCallList()V
    .locals 14

    .prologue
    const/4 v4, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 218
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v13

    const-string v0, "date"

    aput-object v0, v2, v11

    const-string v0, "type"

    aput-object v0, v2, v4

    const-string v0, "duration"

    aput-object v0, v2, v12

    .line 220
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=? or type=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string v5, "number,date desc "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 223
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->n:Ljava/util/List;

    .line 224
    const-string v9, ""

    .line 226
    .local v9, "preNum":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "number":Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Untils;->isPhoneNUmber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    move-object v9, v8

    .line 235
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->isStangerPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getStrange_sign(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    move-result-object v10

    .line 239
    .local v10, "signCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    if-eqz v10, :cond_0

    .line 241
    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setAddTime(Ljava/lang/String;)V

    .line 242
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_1

    .line 244
    const/16 v0, 0x3e8

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setCallDur(I)V

    .line 249
    :goto_1
    invoke-virtual {v10, v8}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setNumber(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->n:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setCallDur(I)V

    goto :goto_1

    .line 258
    .end local v8    # "number":Ljava/lang/String;
    .end local v10    # "signCall":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 259
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 260
    new-instance v6, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$a;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    .line 261
    .local v6, "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$a;
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->n:Ljava/util/List;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    .end local v6    # "comp":Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$a;
    :cond_3
    return-void
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 8
    .param p1, "time"    # I

    .prologue
    const v7, 0x7f0d0365

    const/16 v4, 0x3c

    const v6, 0x7f0d03c2

    .line 386
    if-ge p1, v4, :cond_0

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 400
    :goto_0
    return-object v4

    .line 391
    :cond_0
    div-int/lit8 v2, p1, 0x3c

    .line 392
    .local v2, "minite":I
    if-ge v2, v4, :cond_1

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x3c

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 397
    :cond_1
    div-int/lit16 v0, p1, 0xe10

    .line 398
    .local v0, "hour":I
    mul-int/lit8 v4, v0, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    sub-int v4, p1, v4

    div-int/lit8 v1, v4, 0x3c

    .line 399
    .local v1, "min":I
    mul-int/lit8 v4, v0, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    sub-int v4, p1, v4

    mul-int/lit8 v5, v1, 0x3c

    sub-int v3, v4, v5

    .line 400
    .local v3, "second":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d0222

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getStrange_sign(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, "sign":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->m:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-virtual {v2, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;->local_netSign(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    move-result-object v1

    .line 272
    if-nez v1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->m:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-virtual {v2, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;->get_netSign(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    :cond_0
    :goto_0
    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initData(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const v6, 0x7f070004

    const v3, 0x7f020311

    const v2, 0x7f020310

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 135
    if-nez p1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;-><init>()V

    .line 141
    .local v0, "ss":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setId(I)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 144
    .end local v0    # "ss":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    :cond_0
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    .line 145
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0d04f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iput v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->i:I

    .line 151
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0d04e3

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->n:Ljava/util/List;

    if-nez v1, :cond_2

    .line 171
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;->start()V

    .line 188
    :cond_2
    return-void

    .line 154
    :cond_3
    if-ne p1, v4, :cond_1

    .line 156
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->l:Ljava/util/List;

    .line 157
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    .line 158
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 159
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0d04f8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iput v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->i:I

    .line 164
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0d04e3

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "act"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 313
    const-string v0, "content://com.android.contacts/data/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 314
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(data1,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 316
    .local v7, "phoneCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 317
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 319
    if-lez v6, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSign(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCall(Ljava/lang/String;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    move-result-object v0

    .line 303
    .local v0, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    if-eqz v0, :cond_0

    .line 305
    const/4 v1, 0x1

    .line 308
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStangerPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 285
    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->secutityPerson:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->localBlackPerson:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->netBlackPerson:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/support/SecurityService;->whitePerson:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p0, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->isInContactsdia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->isSign(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->finish()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09056a

    if-ne v0, v1, :cond_2

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->initData(I)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090568

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->initData(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v1, 0x7f03010b

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->setContentView(I)V

    .line 84
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0766

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->findViews()V

    .line 86
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 88
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->k:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$SignCallBlackApater;

    .line 89
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->m:Lcom/lenovo/safecenter/lenovoAntiSpam/database/NetAppDatabase;

    .line 92
    :try_start_0
    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->i:I

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->initData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 130
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 123
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public showReport_fail(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V
    .locals 3
    .param p1, "sing_call"    # Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    .prologue
    .line 439
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d04ed

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04ee

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 455
    return-void
.end method
