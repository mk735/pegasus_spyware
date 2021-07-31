.class public Lcom/lenovo/safecenter/safemode/EditSettingActivity;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "EditSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/EditSettingActivity$MyAdapter;,
        Lcom/lenovo/safecenter/safemode/EditSettingActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/Button;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Lcom/lenovo/safecenter/safemode/EditSettingActivity$MyAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/EditSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/EditSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    return p1
.end method

.method private a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v8, 0x7f0200e2

    const v7, 0x7f0200e1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    if-nez v2, :cond_2

    .line 103
    const-string v2, "imgon"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_0
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v2, v4, :cond_3

    .line 110
    const-string v2, "img"

    const v3, 0x7f020163

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    if-ne v2, v4, :cond_5

    .line 125
    const-string v2, "imgon"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_2
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v2, v4, :cond_6

    .line 132
    const-string v2, "img"

    const v3, 0x7f020299

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object v0

    .line 106
    :cond_2
    const-string v2, "imgon"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_3
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v2, v5, :cond_4

    .line 113
    const-string v2, "img"

    const v3, 0x7f0202f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_4
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v2, v6, :cond_0

    .line 116
    const-string v2, "img"

    const v3, 0x7f0200e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_5
    const-string v2, "imgon"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 133
    :cond_6
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v2, v5, :cond_7

    .line 135
    const-string v2, "img"

    const v3, 0x7f02020a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 136
    :cond_7
    iget v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v2, v6, :cond_1

    .line 138
    const-string v2, "img"

    const v3, 0x7f02020a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/EditSettingActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/EditSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public defultPos()V
    .locals 5

    .prologue
    const v4, 0x7f0d01d5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 151
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    if-ne v0, v2, :cond_4

    .line 154
    const-string v0, "changeimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "changeimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    :cond_0
    iput v3, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    .line 162
    :goto_0
    const-string v0, "changeNametitle"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 213
    :cond_1
    :goto_1
    return-void

    .line 159
    :cond_2
    iput v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    const-string v1, "changeNametitle"

    invoke-static {v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :cond_4
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 175
    const-string v0, "changesmsimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "changesmsimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    :cond_5
    iput v3, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    .line 183
    :goto_2
    const-string v0, "smsnotifytitle"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    goto :goto_1

    .line 180
    :cond_6
    iput v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    goto :goto_2

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    const-string v1, "smsnotifytitle"

    invoke-static {v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 192
    :cond_8
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 195
    const-string v0, "changecallimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "changecallimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 197
    :cond_9
    iput v3, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    .line 202
    :goto_3
    const-string v0, "callnotifytitle"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_1

    .line 200
    :cond_a
    iput v2, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    goto :goto_3

    .line 207
    :cond_b
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    const-string v1, "callnotifytitle"

    invoke-static {v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public findView()V
    .locals 1

    .prologue
    .line 301
    const v0, 0x7f0902d7

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->c:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f0902d4

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->b:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    .line 305
    const v0, 0x7f0902d8

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->e:Landroid/widget/ListView;

    .line 306
    const v0, 0x7f0902d9

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->f:Landroid/widget/Button;

    .line 307
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method public getWordCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 357
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 359
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 360
    .local v0, "ascii":I
    if-ltz v0, :cond_0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    .line 361
    add-int/lit8 v2, v2, 0x1

    .line 357
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 366
    .end local v0    # "ascii":I
    :cond_1
    return v2
.end method

.method public initData()V
    .locals 5

    .prologue
    const v4, 0x7f0d01c8

    const/4 v3, 0x0

    const v2, 0x7f020286

    .line 67
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d01c2

    invoke-virtual {p0, v0, v1, v3}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0769

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d076a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :goto_0
    new-instance v0, Lcom/lenovo/safecenter/safemode/EditSettingActivity$MyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity$MyAdapter;-><init>(Lcom/lenovo/safecenter/safemode/EditSettingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->j:Lcom/lenovo/safecenter/safemode/EditSettingActivity$MyAdapter;

    .line 89
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->j:Lcom/lenovo/safecenter/safemode/EditSettingActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    return-void

    .line 73
    :cond_0
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0d076c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d01f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v3}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0d076b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0d01f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0d01cf

    const/4 v2, 0x0

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->finish()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902d9

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 318
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 320
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->getWordCount(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 322
    const-string v0, "changeimg"

    iget v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 323
    const-string v0, "changeNametitle"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 324
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->finish()V

    goto :goto_0

    .line 329
    :cond_2
    const v0, 0x7f0d05ad

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 332
    :cond_3
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 334
    const-string v0, "changesmsimg"

    iget v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 335
    const-string v0, "smsnotifytitle"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 336
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->finish()V

    goto/16 :goto_0

    .line 338
    :cond_4
    iget v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 340
    const-string v0, "changecallimg"

    iget v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 341
    const-string v0, "callnotifytitle"

    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->UpdateConfig(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 342
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->finish()V

    goto/16 :goto_0

    .line 348
    :cond_5
    const v0, 0x7f0d01d0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->findView()V

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->i:I

    .line 47
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->defultPos()V

    .line 48
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->g:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->initData()V

    .line 50
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/EditSettingActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/EditSettingActivity$1;-><init>(Lcom/lenovo/safecenter/safemode/EditSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onDestroy()V

    .line 382
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 371
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 372
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onPause()V

    .line 373
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 376
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 377
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 378
    return-void
.end method
