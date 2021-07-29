.class public Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;
.super Landroid/app/Activity;
.source "SpamConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:I

.field private j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->pos:I

    .line 40
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public addSign(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 185
    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;

    invoke-direct {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;-><init>()V

    .line 186
    .local v1, "info":Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setNumber(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setAddTime(Ljava/lang/String;)V

    .line 188
    iget v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->pos:I

    if-le v2, v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setbType(I)V

    .line 189
    invoke-virtual {v1, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setsType(I)V

    .line 190
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "wastetime"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;->setTotalCall(I)V

    .line 191
    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSignaddSignaddSignaddSign==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->insertSignCall(Lcom/lenovo/safecenter/lenovoAntiSpam/domain/SignCall;)V

    .line 193
    if-ne p1, v6, :cond_0

    .line 195
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/utils/CheckCenter;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "bool":Z
    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSignaddSignaddSignaddSign==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "bool":Z
    :cond_0
    new-instance v2, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)V

    invoke-virtual {v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$3;->start()V

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->showToast()V

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->finish()V

    .line 218
    return-void

    :cond_1
    move v2, v3

    .line 188
    goto/16 :goto_0
.end method

.method public getDescFromType(I)Ljava/lang/String;
    .locals 2
    .param p1, "stype"    # I

    .prologue
    const v1, 0x7f0d04e6

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 165
    const v0, 0x7f0d04e7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 168
    const v0, 0x7f0d04e8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 171
    const v0, 0x7f0d04e9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 174
    const v0, 0x7f0d04ea

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 177
    const v0, 0x7f0d04eb

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_5
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f090564

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->h:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->b:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f09055d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->c:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f09055e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->d:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f09055f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->e:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f090561

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->f:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f090562

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->g:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    iput v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    .line 132
    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->addSign(I)V

    goto :goto_0

    .line 135
    :pswitch_2
    iput v4, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    .line 136
    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->addSign(I)V

    goto :goto_0

    .line 139
    :pswitch_3
    iput v2, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    .line 140
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->addSign(I)V

    goto :goto_0

    .line 143
    :pswitch_4
    iput v5, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    .line 144
    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->addSign(I)V

    goto :goto_0

    .line 147
    :pswitch_5
    iput v3, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    .line 148
    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->addSign(I)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x7f09055d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->setContentView(I)V

    .line 63
    sget v0, Lcom/lenovo/safecenter/utils/Const;->SDK_VERSION:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->setFinishOnTouchOutside(Z)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->initViews()V

    .line 68
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 254
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 256
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0592

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public showToast()V
    .locals 13

    .prologue
    .line 222
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 223
    .local v3, "toast":Landroid/widget/Toast;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03010d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 224
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 226
    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f090570

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 227
    .local v4, "txt1":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f090571

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 228
    .local v6, "txt2":Landroid/widget/TextView;
    const v9, 0x7f0d05d2

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    invoke-virtual {p0, v12}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getDescFromType(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "txt1_content":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .local v1, "spannable":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v10, 0x15

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->i:I

    invoke-virtual {p0, v11}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getDescFromType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 232
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v9, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->j:Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;

    invoke-virtual {v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/database/AppDatabase;->getSignCount()I

    move-result v0

    .line 235
    .local v0, "count":I
    const v9, 0x7f0d05d3

    invoke-virtual {p0, v9}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "txt2_content":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    .local v2, "spannable2":Landroid/text/SpannableString;
    const-string v9, "mes"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "==="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "====="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "===="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/SpamConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/16 v12, 0x21

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 240
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 242
    const-string v9, "Gravity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 244
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 245
    return-void
.end method
