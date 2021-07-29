.class public Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;
.super Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
.source "FourBoxKillVirus.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const v0, 0x7f020187

    const v1, 0x7f0d0007

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 155
    :try_start_0
    const-string v0, "scantime"

    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/WflUtils;->getDaysNumFromToday(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 158
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 105
    const-string v1, "virus_state"

    iget-object v2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "virusState":Ljava/lang/String;
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const v1, 0x7f0d0391

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const v1, 0x7f0d0673

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/qv_base.amf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/qv_base.amf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    const-string v1, "2012-11-13"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_2
    :try_start_1
    const-string v1, "2012-11-13"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static enterKillVirus(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/antivirus/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "viruspkgname"

    invoke-static {v1, p0}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVirusCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "it":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .restart local v0    # "it":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void

    .line 135
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 39
    const v10, 0x7f09033a

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, "icon":Landroid/widget/ImageView;
    const v10, 0x7f09033b

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 43
    .local v6, "tvTitle":Landroid/widget/TextView;
    const v10, 0x7f09033d

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "layoutCenterAlign":Landroid/view/View;
    const v10, 0x7f090340

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "layoutLeftAndRightAlign":Landroid/view/View;
    const v10, 0x7f090341

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 56
    .local v8, "tv_LR_Line1Title":Landroid/widget/TextView;
    const v10, 0x7f090342

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 58
    .local v7, "tv_LR_Line1Detail":Landroid/widget/TextView;
    const v10, 0x7f090344

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 63
    .local v9, "tv_LR_Line2Title":Landroid/widget/TextView;
    iget v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->idIcon:I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const-string v10, "scantime"

    iget-object v11, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "scantime":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 69
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0672

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0, v9}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->a(Landroid/widget/TextView;)V

    .line 101
    :goto_0
    return-object p1

    .line 76
    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-direct {p0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->a()I

    move-result v1

    .line 80
    .local v1, "interval":I
    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0311

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-gtz v1, :cond_2

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 85
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "HH:mm"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_1
    invoke-direct {p0, v9}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->a(Landroid/widget/TextView;)V

    goto :goto_0

    .line 89
    :cond_2
    if-lez v1, :cond_3

    const/16 v10, 0x63

    if-gt v1, v10, :cond_3

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    const v12, 0x7f0d0466

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 95
    :cond_3
    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    const v11, 0x7f0d06ce

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v10, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/item/FourBoxKillVirus;->enterKillVirus(Landroid/content/Context;)V

    .line 131
    return-void
.end method
