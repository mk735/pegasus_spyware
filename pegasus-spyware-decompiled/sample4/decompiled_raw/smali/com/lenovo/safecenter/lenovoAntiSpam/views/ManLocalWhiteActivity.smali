.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;
.super Landroid/app/Activity;
.source "ManLocalWhiteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$b;
    }
.end annotation


# instance fields
.field a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field b:Landroid/widget/Button;

.field private c:Landroid/widget/ExpandableListView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

.field private h:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

.field private i:Landroid/os/Handler;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->i:Landroid/os/Handler;

    .line 514
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    return v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;

    .prologue
    .line 43
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04ff

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$9;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$9;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$8;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method public deleteWhite()V
    .locals 3

    .prologue
    .line 499
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->deleteWhite(I)V

    .line 500
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;->notifyDataSetChanged()V

    .line 502
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 507
    :cond_0
    const-string v0, "com.lenovo.antispam.whiteperson.change"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public initDate()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getWhitePersonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    .line 158
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    .line 159
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->h:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 160
    return-void
.end method

.method public initViewSys()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->initDate()V

    .line 168
    return-void
.end method

.method public isBlack(Ljava/lang/String;)Z
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 450
    const-string v0, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 451
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 452
    .local v7, "phoneCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 453
    .local v6, "isBlack":Z
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    const/4 v6, 0x1

    .line 457
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 458
    return v6
.end method

.method public iswhite(Ljava/lang/String;)Z
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 435
    const-string v0, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 437
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 438
    .local v7, "phoneCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 439
    .local v6, "isWhite":Z
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 441
    const/4 v6, 0x1

    .line 443
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 444
    return v6
.end method

.method public iswhiteEdit(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 420
    const-string v0, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 422
    .local v1, "uri1":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 423
    .local v7, "phoneCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 424
    .local v6, "isWhite":Z
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 426
    const/4 v6, 0x1

    .line 428
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 429
    return v6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->finish()V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->setContentView(I)V

    .line 126
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    .line 127
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 129
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0285

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->b:Landroid/widget/Button;

    .line 132
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    invoke-direct {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;

    .line 133
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 134
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->setOnClick()V

    .line 140
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 264
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 230
    :pswitch_0
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d025f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000e

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->initViewSys()V

    .line 174
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public setOnClick()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method public showAddDialog()V
    .locals 8

    .prologue
    .line 275
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300f9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 276
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090501

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 277
    .local v0, "pwd":Landroid/widget/EditText;
    const v5, 0x7f090503

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 278
    .local v1, "pwd2":Landroid/widget/EditText;
    const v5, 0x7f090500

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 279
    .local v2, "txt1":Landroid/widget/TextView;
    const v5, 0x7f090502

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 280
    .local v3, "txt2":Landroid/widget/TextView;
    const v5, 0x7f0d01e5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 281
    const v5, 0x7f0d0291

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 282
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 283
    const/16 v5, 0x90

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 286
    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d027c

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d03c7

    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;

    invoke-direct {v7, p0, v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01ba

    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$4;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 337
    return-void
.end method

.method public showEditDialog()V
    .locals 8

    .prologue
    .line 343
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300f9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 344
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090501

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 345
    .local v0, "pwd":Landroid/widget/EditText;
    const v5, 0x7f090503

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 346
    .local v1, "pwd2":Landroid/widget/EditText;
    const v5, 0x7f090500

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 347
    .local v2, "txt1":Landroid/widget/TextView;
    const v5, 0x7f090502

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 348
    .local v3, "txt2":Landroid/widget/TextView;
    const v5, 0x7f0d01e5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 349
    const v5, 0x7f0d01e6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 350
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 351
    const/16 v5, 0x90

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 352
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    iget v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    iget v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d027c

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01b9

    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;

    invoke-direct {v7, p0, v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01ba

    new-instance v7, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$6;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 414
    return-void

    .line 353
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->d:Ljava/util/List;

    iget v6, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalWhiteActivity;->j:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
