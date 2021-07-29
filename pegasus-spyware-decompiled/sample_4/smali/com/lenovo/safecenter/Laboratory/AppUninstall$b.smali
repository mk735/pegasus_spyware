.class final Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;
.super Landroid/widget/BaseAdapter;
.source "AppUninstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/AppUninstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/pm/PackageManager;

.field b:Landroid/view/LayoutInflater;

.field c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

.field final synthetic d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V
    .locals 3

    .prologue
    .line 339
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 340
    invoke-virtual {p1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->a:Landroid/content/pm/PackageManager;

    .line 341
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->b:Landroid/view/LayoutInflater;

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->e:Ljava/util/List;

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    .line 350
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v0}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 361
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0901d7

    const v5, 0x7f0901d6

    const v2, 0x7f03003f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->b:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->b:Landroid/view/LayoutInflater;

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030040

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 375
    .local v0, "tv":Landroid/widget/TextView;
    if-nez p1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v3, 0x7f0d0521

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->h(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .end local v0    # "tv":Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 378
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    const v3, 0x7f0d0522

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->g(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 382
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_2
    iput-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    .line 383
    if-nez p2, :cond_5

    .line 384
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 385
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    .line 387
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->a:Landroid/widget/ImageView;

    .line 388
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    const v1, 0x7f0901d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->b:Landroid/widget/TextView;

    .line 389
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->c:Landroid/widget/TextView;

    .line 390
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    const v1, 0x7f0901d9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->d:Landroid/widget/TextView;

    .line 391
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 406
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v2, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v2, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "third"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->c:Landroid/widget/TextView;

    const v2, 0x7f0d022a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-boolean v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->movetoSDcrad:Z

    if-eqz v1, :cond_6

    .line 416
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->e:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 424
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$1;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 441
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->d:Landroid/widget/TextView;

    const v2, 0x7f0d05e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 442
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :goto_3
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b$2;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p2

    .line 500
    goto/16 :goto_0

    .line 393
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    .line 394
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    if-nez v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 396
    new-instance v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-direct {v1, v2}, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;-><init>(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)V

    iput-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    .line 398
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->a:Landroid/widget/ImageView;

    .line 399
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    const v1, 0x7f0901d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->b:Landroid/widget/TextView;

    .line 400
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->c:Landroid/widget/TextView;

    .line 401
    iget-object v2, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    const v1, 0x7f0901d9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->d:Landroid/widget/TextView;

    .line 402
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 418
    :cond_6
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->e:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 420
    :cond_7
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->d:Lcom/lenovo/safecenter/Laboratory/AppUninstall;

    invoke-static {v1}, Lcom/lenovo/safecenter/Laboratory/AppUninstall;->k(Lcom/lenovo/safecenter/Laboratory/AppUninstall;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v1, v1, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->c:Landroid/widget/TextView;

    const v2, 0x7f0d04d2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->e:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 444
    :cond_8
    iget-object v1, p0, Lcom/lenovo/safecenter/Laboratory/AppUninstall$b;->c:Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;

    iget-object v1, v1, Lcom/lenovo/safecenter/Laboratory/AppUninstall$d;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
