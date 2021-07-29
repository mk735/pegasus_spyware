.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;
.super Landroid/app/Activity;
.source "ManLocalBlackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field b:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

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

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

.field private h:Landroid/app/ProgressDialog;

.field private i:Landroid/os/Handler;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->i:Landroid/os/Handler;

    .line 427
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;
    .param p1, "x1"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->h:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    return v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    .prologue
    .line 39
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorPositiveButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setColorNegativeButton(Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0500

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$7;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$7;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$6;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$6;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method


# virtual methods
.method public deleteBlack()V
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->deleteLocalBlack(I)V

    .line 385
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->notifyDataSetChanged()V

    .line 387
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 391
    :cond_0
    const-string v0, "com.lenovo.antispam.blackperson.change"

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/ContractHelpUtils;->sendBraodcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public initDate()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    iget v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getLocalBlackList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    .line 175
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    .line 179
    :cond_0
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    .line 180
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->g:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 182
    return-void
.end method

.method public initViewSys()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->initDate()V

    .line 208
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->finish()V

    .line 168
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->e:I

    .line 146
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 147
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->setContentView(I)V

    .line 149
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    .line 150
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 152
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a:Landroid/widget/Button;

    .line 153
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->f:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "guest_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->setOnClick()V

    .line 160
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 317
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d025f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000c

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->create()Lcom/lenovo/safecenter/dialog/CustomDialog;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 220
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->initViewSys()V

    .line 215
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public report(Ljava/lang/String;I)V
    .locals 3
    .param p1, "numbers"    # Ljava/lang/String;
    .param p2, "sb_id"    # I

    .prologue
    const/4 v1, 0x0

    .line 396
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->h:Landroid/app/ProgressDialog;

    .line 397
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 398
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 399
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 402
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$8;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$8;->start()V

    .line 417
    return-void
.end method

.method public setOnClick()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 254
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method public showReportDialog()V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04fb

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setMessage(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$5;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$4;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$4;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 355
    return-void
.end method

.method public transteToEdit()V
    .locals 4

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/HandBlackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "method"

    const-string v2, "modify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v2, "id"

    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->d:Ljava/util/List;

    iget v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->j:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/BlackInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method
