.class public Lcom/lenovo/install/ShowPkgInfoActivity;
.super Landroid/app/Activity;
.source "ShowPkgInfoActivity.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "drawID"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view1":Landroid/view/View;
    const v2, 0x7f09047b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "txtnumber":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v5, 0x7f03008d

    invoke-virtual {p0, v5}, Lcom/lenovo/install/ShowPkgInfoActivity;->setContentView(I)V

    .line 31
    const v5, 0x7f090359

    invoke-virtual {p0, v5}, Lcom/lenovo/install/ShowPkgInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->a:Landroid/widget/LinearLayout;

    .line 32
    const v5, 0x7f090357

    invoke-virtual {p0, v5}, Lcom/lenovo/install/ShowPkgInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->b:Landroid/widget/TextView;

    .line 33
    const v5, 0x7f0901d8

    invoke-virtual {p0, v5}, Lcom/lenovo/install/ShowPkgInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->c:Landroid/widget/TextView;

    .line 34
    const v5, 0x7f090355

    invoke-virtual {p0, v5}, Lcom/lenovo/install/ShowPkgInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->d:Landroid/widget/ImageView;

    .line 35
    iget-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->b:Landroid/widget/TextView;

    new-instance v6, Lcom/lenovo/install/ShowPkgInfoActivity$1;

    invoke-direct {v6, p0}, Lcom/lenovo/install/ShowPkgInfoActivity$1;-><init>(Lcom/lenovo/install/ShowPkgInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/lenovo/install/ShowPkgInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "uri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/install/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 46
    .local v4, "mPkgInfo":Landroid/content/pm/PackageParser$Package;
    invoke-static {v4, p0}, Lcom/lenovo/install/PackageUtil;->getPerssions(Landroid/content/pm/PackageParser$Package;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, "listpre":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionInfo;

    .line 51
    .local v2, "info":Landroid/content/pm/PermissionInfo;
    iget-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lenovo/install/ShowPkgInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lenovo/install/ShowPkgInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/pm/PermissionInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/lenovo/install/ShowPkgInfoActivity;->getView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 54
    .end local v2    # "info":Landroid/content/pm/PermissionInfo;
    :cond_0
    const-string v5, "ww"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/tencent/tmsecure/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/lenovo/install/ShowPkgInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "uri"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/lenovo/install/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/lenovo/install/PackageUtil$AppSnippet;

    move-result-object v0

    .line 60
    .local v0, "as":Lcom/lenovo/install/PackageUtil$AppSnippet;
    iget-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->c:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v5, p0, Lcom/lenovo/install/ShowPkgInfoActivity;->d:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/lenovo/install/PackageUtil$AppSnippet;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method
