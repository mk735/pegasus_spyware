.class public Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
.super Landroid/app/Activity;
.source "BootSpeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;,
        Lcom/lenovo/performancecenter/performance/BootSpeedActivity$c;,
        Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BootSpeedActivity"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

.field private h:Landroid/content/Context;

.field private i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->k:I

    .line 57
    iput v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    .line 150
    new-instance v0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$1;-><init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->p:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 252
    .local v0, "appItem":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    iget v4, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    if-ne v4, v10, :cond_0

    .line 253
    iput v9, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 254
    new-array v1, v10, [Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    aput-object v4, v1, v8

    iget-object v4, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    aput-object v4, v1, v9

    .line 255
    .local v1, "componentName":[Ljava/lang/String;
    new-array v4, v9, [I

    iget v5, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v5, v4, v8

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    new-array v6, v9, [I

    iget v7, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    .end local v0    # "appItem":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v1    # "componentName":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    invoke-virtual {v4}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->notifyDataSetChanged()V

    .line 260
    const-string v4, "BootSpeedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ALL ALLOW invalidateViews()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    .line 263
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->p:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->setComponentAbleBoot(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 268
    :cond_2
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    const v5, 0x7f0d0891

    invoke-virtual {p0, v5}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->k:I

    return p1
.end method

.method static synthetic b(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 272
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 274
    .local v0, "appItem":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    iget v4, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    if-ne v4, v9, :cond_0

    .line 275
    iput v10, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 276
    new-array v1, v10, [Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    aput-object v4, v1, v8

    iget-object v4, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    aput-object v4, v1, v9

    .line 277
    .local v1, "componentName":[Ljava/lang/String;
    new-array v4, v9, [I

    iget v5, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v5, v4, v8

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    new-array v6, v9, [I

    iget v7, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 281
    .end local v0    # "appItem":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    .end local v1    # "componentName":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    invoke-virtual {v4}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->notifyDataSetChanged()V

    .line 282
    const-string v4, "BootSpeedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ALL FORBID invalidateViews()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput v8, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    .line 285
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->p:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->setComponentAbleBoot(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 290
    :cond_2
    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    const v5, 0x7f0d0892

    invoke-virtual {p0, v5}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method

.method static synthetic c(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    return-object v0
.end method

.method private c()V
    .locals 15

    .prologue
    .line 297
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    iget-object v11, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    iget-object v12, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getBootMap(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 298
    .local v0, "bootMap":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-virtual {v10}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getNeedChangeToForbid()I

    move-result v9

    .line 299
    .local v9, "needChangeToForbid":I
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-virtual {v10}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->getNeedChangeToAllow()I

    move-result v8

    .line 300
    .local v8, "needChangeToAllow":I
    if-nez v9, :cond_1

    if-nez v8, :cond_1

    .line 301
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    const v11, 0x7f0d08a6

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<[Ljava/lang/String;[I>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v6, "listNeedChangeToForbid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v5, "listNeedChangeToAlow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[Ljava/lang/String;[I>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 311
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 312
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 314
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[Ljava/lang/String;[I>;"
    :cond_4
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 319
    .local v4, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    iget-object v10, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 320
    const/4 v10, 0x1

    iput v10, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 321
    iget v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    .line 322
    const/4 v10, 0x2

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    aput-object v11, v1, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    aput-object v11, v1, v10

    .line 323
    .local v1, "componentName":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v12, v10, v11

    invoke-virtual {v7, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    iget-object v11, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    iget v14, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v1    # "componentName":[Ljava/lang/String;
    :cond_6
    iget-object v10, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 327
    const/4 v10, 0x2

    iput v10, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 328
    iget v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    .line 329
    const/4 v10, 0x2

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    aput-object v11, v1, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    aput-object v11, v1, v10

    .line 330
    .restart local v1    # "componentName":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v12, v10, v11

    invoke-virtual {v7, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    iget-object v11, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    iget v14, v4, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 335
    .end local v1    # "componentName":[Ljava/lang/String;
    .end local v4    # "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    :cond_7
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    invoke-virtual {v10}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->notifyDataSetChanged()V

    .line 336
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->p:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    const v11, 0x7f0d0895

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 341
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 343
    iget-object v10, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    invoke-static {v10, v7}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->setComponentAbleBoot(Landroid/content/Context;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 474
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 475
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    const-string v3, "BootSpeedActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :cond_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    iget-object v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;->updatePkgsInBootDB2(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 478
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->finish()V

    .line 482
    return-void
.end method

.method static synthetic e(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0202df

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 487
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    return-void
.end method

.method static synthetic f(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->k:I

    return v0
.end method

.method static synthetic g(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/performancecenter/performance/BootSpeedActivity;

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 204
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d()V

    goto :goto_0

    .line 207
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 208
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0904c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    const v1, 0x7f0905ac

    invoke-virtual {p0, v1}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getScreenWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$2;-><init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 214
    :sswitch_2
    const-string v0, "BootSpeedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 216
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e()V

    goto/16 :goto_0

    .line 220
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c()V

    .line 221
    invoke-static {}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportClickOneKeyEndTask()V

    goto/16 :goto_0

    .line 224
    :sswitch_3
    const-string v0, "BootSpeedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ALL ALLOW start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 226
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e()V

    goto/16 :goto_0

    .line 230
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a()V

    .line 231
    const-string v0, "BootSpeedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ALL ALLOW end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :sswitch_4
    const-string v0, "BootSpeedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ALL FORBID start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 236
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e()V

    goto/16 :goto_0

    .line 240
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b()V

    .line 241
    const-string v0, "BootSpeedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ALL FORBID old"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0904c0 -> :sswitch_4
        0x7f0904c1 -> :sswitch_3
        0x7f0904c2 -> :sswitch_2
        0x7f0905ad -> :sswitch_0
        0x7f0905ae -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0905ae

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->requestWindowFeature(I)Z

    .line 71
    const v0, 0x7f0300e0

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->setContentView(I)V

    .line 72
    const v0, 0x7f0905ad

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d0850

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0904b5

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0904b6

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0904b7

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090278

    invoke-virtual {p0, v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f:Landroid/widget/ListView;

    .line 74
    new-instance v0, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->i:Lcom/lenovo/performancecenter/performance/DataLayerManageBoot;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    .line 77
    iput-object p0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    new-instance v0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;-><init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    .line 81
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    if-nez v0, :cond_0

    .line 85
    iput-boolean v3, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->n:Z

    .line 86
    new-instance v0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    invoke-direct {v0, p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;-><init>(Lcom/lenovo/performancecenter/performance/BootSpeedActivity;)V

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    .line 87
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->start()V

    .line 89
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->n:Z

    .line 143
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;->interrupt()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->o:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$b;

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 172
    const-string v2, "BootSpeedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onItemClick position == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->e()V

    .line 197
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 180
    .local v1, "item":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    iget v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    if-ne v2, v7, :cond_1

    .line 181
    iput v6, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 182
    iget v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    .line 188
    :goto_1
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->g:Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;

    invoke-virtual {v2}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity$a;->notifyDataSetChanged()V

    .line 189
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->p:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    new-array v0, v7, [Ljava/lang/String;

    iget-object v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    aput-object v2, v0, v6

    .line 192
    .local v0, "componentName":[Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->h:Landroid/content/Context;

    iget v3, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    invoke-static {v2, v0, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->setComponentAbleBoot(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 193
    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->m:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    new-array v4, v6, [I

    iget v5, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    aput v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "BootSpeedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onItemClick pkgName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clsName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toState == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/TrackEvent;->reportDisableBootStartApp(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "componentName":[Ljava/lang/String;
    :cond_1
    iput v7, v1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 185
    iget v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->l:I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 466
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/lenovo/performancecenter/performance/BootSpeedActivity;->d()V

    .line 469
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 134
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 114
    return-void
.end method
