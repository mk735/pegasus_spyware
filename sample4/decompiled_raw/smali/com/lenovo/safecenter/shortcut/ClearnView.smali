.class public Lcom/lenovo/safecenter/shortcut/ClearnView;
.super Landroid/widget/LinearLayout;
.source "ClearnView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/shortcut/ClearnView$b;,
        Lcom/lenovo/safecenter/shortcut/ClearnView$a;,
        Lcom/lenovo/safecenter/shortcut/ClearnView$WriteText;
    }
.end annotation


# static fields
.field public static final ONEKEY_LAUNCHER:Ljava/lang/String; = "onekey_launcher"

.field public static final ONEKEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final ONEKEY_WIDGET:Ljava/lang/String; = "widget"


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:I

.field private C:[I

.field private a:Z

.field private b:J

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/animation/Animation$AnimationListener;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/content/Context;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/graphics/drawable/ClipDrawable;

.field private p:Landroid/view/ViewGroup;

.field private q:Landroid/view/ViewGroup;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Z

.field private w:Lcom/lenovo/safecenter/shortcut/ClearnView$b;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->a:Z

    .line 54
    iput v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->c:I

    .line 57
    new-instance v0, Lcom/lenovo/safecenter/shortcut/ClearnView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/shortcut/ClearnView$1;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->d:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/lenovo/safecenter/shortcut/ClearnView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/shortcut/ClearnView$2;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->e:Landroid/view/animation/Animation$AnimationListener;

    .line 130
    new-instance v0, Lcom/lenovo/safecenter/shortcut/ClearnView$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/shortcut/ClearnView$3;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->f:Landroid/view/View$OnClickListener;

    .line 223
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    .line 190
    iput-object p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    .line 191
    const v0, 0x7f030107

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->addView(Landroid/view/View;)V

    .line 193
    new-instance v0, Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/shortcut/ClearnView$b;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->w:Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    .line 194
    const v0, 0x7f090550

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->l:Landroid/widget/ImageView;

    .line 195
    const v0, 0x7f09054f

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->m:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f09054d

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->n:Landroid/widget/ImageView;

    .line 198
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->o:Landroid/graphics/drawable/ClipDrawable;

    .line 200
    const v0, 0x7f090548

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->p:Landroid/view/ViewGroup;

    .line 201
    const v0, 0x7f090551

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->q:Landroid/view/ViewGroup;

    .line 202
    const v0, 0x7f090552

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->r:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f090553

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->s:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f090549

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->t:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f09054a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->u:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f04000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->h:Landroid/view/animation/Animation;

    .line 207
    const v0, 0x7f040011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->i:Landroid/view/animation/Animation;

    .line 208
    const v0, 0x7f040010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->j:Landroid/view/animation/Animation;

    .line 209
    new-instance v0, Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/shortcut/ClearnView$a;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    .line 210
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->setDuration(J)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->h:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->i:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->j:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    const v0, 0x7f09054b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->x:Landroid/widget/Button;

    .line 217
    const v0, 0x7f090554

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->y:Landroid/widget/Button;

    .line 218
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->z:Landroid/widget/RelativeLayout;

    .line 219
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->A:Landroid/widget/RelativeLayout;

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/shortcut/ClearnView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 10
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/Button;

    .prologue
    const v9, 0x7f0d0888

    const v8, 0x7f0d0887

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->C:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->C:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-wide v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    const v3, 0x7f0d0889

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    const v2, 0x7f0d088a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/shortcut/ClearnView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/shortcut/ClearnView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->a:Z

    return p1
.end method

.method private a(Landroid/os/Handler;)[I
    .locals 13
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 393
    const-string v7, "OPTI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ---> start Read App List"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v7, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/performancecenter/performance/ScanApplicationInfo;->getRunningAppInfo(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v6

    .line 395
    .local v6, "readRunningAppCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const-string v7, "OPTI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ---> ok Read App List "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, "killedCount":I
    const/4 v0, 0x0

    .line 399
    .local v0, "clearedMemory":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v5, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 402
    .local v1, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v11

    add-int/2addr v0, v7

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v12

    if-ne v7, v11, :cond_0

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :cond_1
    move-object v4, v5

    .line 410
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "OPTI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ---> start Thread to kill"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/lenovo/safecenter/shortcut/ClearnView$5;

    invoke-direct {v8, p0, p1, v4}, Lcom/lenovo/safecenter/shortcut/ClearnView$5;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;Landroid/os/Handler;Ljava/util/ArrayList;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 418
    new-array v7, v12, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    aput v0, v7, v11

    return-object v7
.end method

.method static synthetic b(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 149
    const-string v3, "antitheft"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 151
    .local v2, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 153
    .local v1, "isFirst":Z
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/shortcut/ClearnView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/shortcut/ClearnView;)V
    .locals 9
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    const-wide/16 v7, 0x3a98

    const-wide/16 v5, 0x0

    .line 38
    const-string v0, "OPTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---> start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;

    invoke-direct {v0}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;-><init>()V

    iget-wide v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    cmp-long v1, v1, v7

    if-gtz v1, :cond_1

    iget-wide v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getEndMemory(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->w:Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/shortcut/ClearnView;->a(Landroid/os/Handler;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->C:[I

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->C:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    div-int/lit16 v1, v1, 0x400

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getTotalMemory()J

    move-result-wide v3

    div-long v0, v1, v3

    iget-wide v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    cmp-long v2, v2, v5

    if-ltz v2, :cond_2

    iget v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordEndMemory(Landroid/content/Context;I)V

    const-string v1, "CleanView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScale == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endScale == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x320

    iget v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    add-int/2addr v2, v0

    div-int/2addr v1, v2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lenovo/safecenter/shortcut/ClearnView$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView$4;-><init>(Lcom/lenovo/safecenter/shortcut/ClearnView;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/performancecenter/coreui/util/MemoryTools;->getSystemMeminfo()I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    long-to-int v0, v0

    sub-int v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/shortcut/ClearnView;)Lcom/lenovo/safecenter/shortcut/ClearnView$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/shortcut/ClearnView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->v:Z

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->y:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->A:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->x:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic q(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->j:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic s(Lcom/lenovo/safecenter/shortcut/ClearnView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    return v0
.end method

.method static synthetic t(Lcom/lenovo/safecenter/shortcut/ClearnView;)Lcom/lenovo/safecenter/shortcut/ClearnView$b;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->w:Lcom/lenovo/safecenter/shortcut/ClearnView$b;

    return-object v0
.end method

.method static synthetic u(Lcom/lenovo/safecenter/shortcut/ClearnView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    return v0
.end method

.method static synthetic v(Lcom/lenovo/safecenter/shortcut/ClearnView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->B:I

    return v0
.end method

.method static synthetic w(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->q:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic x(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->p:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic y(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/graphics/drawable/ClipDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->o:Landroid/graphics/drawable/ClipDrawable;

    return-object v0
.end method

.method static synthetic z(Lcom/lenovo/safecenter/shortcut/ClearnView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/shortcut/ClearnView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public doFade()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->j:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 321
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 322
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 327
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 328
    const-string v4, "CleanView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "---> onAttachedToWindow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastKillTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 331
    .local v0, "lastClickTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 332
    .local v2, "nowClickTime":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    .line 333
    iget-object v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/performancecenter/coreui/util/Utils;->getLastClickPosition(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->c:I

    .line 334
    const-string v4, "CleanView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastClick == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nowClick == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->g:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-static {v4, v2, v3, v5}, Lcom/lenovo/performancecenter/coreui/util/Utils;->recordKillTimeAndPosition(Landroid/content/Context;JI)V

    .line 337
    iget-object v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->h:Landroid/view/animation/Animation;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/shortcut/ClearnView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v4, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->h:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->start()V

    .line 339
    return-void
.end method

.method public startDiyAnim()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/shortcut/ClearnView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/safecenter/shortcut/ClearnView;->k:Lcom/lenovo/safecenter/shortcut/ClearnView$a;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/shortcut/ClearnView$a;->start()V

    .line 316
    return-void
.end method
