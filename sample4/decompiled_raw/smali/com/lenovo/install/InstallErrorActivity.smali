.class public Lcom/lenovo/install/InstallErrorActivity;
.super Landroid/app/Activity;
.source "InstallErrorActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f03008e

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallErrorActivity;->setContentView(I)V

    .line 25
    const v1, 0x7f090357

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->a:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f09035c

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->c:Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/install/InstallErrorActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/install/InstallErrorActivity$1;-><init>(Lcom/lenovo/install/InstallErrorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v1, 0x7f0901d8

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->b:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f090355

    invoke-virtual {p0, v1}, Lcom/lenovo/install/InstallErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->d:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p0}, Lcom/lenovo/install/InstallErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/install/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->e:Landroid/content/pm/PackageParser$Package;

    .line 39
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->e:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->d:Landroid/widget/ImageView;

    const v2, 0x7f0201f9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f0d0797

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->e:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/lenovo/install/InstallErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lenovo/install/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/lenovo/install/PackageUtil$AppSnippet;

    move-result-object v0

    .line 49
    .local v0, "as":Lcom/lenovo/install/PackageUtil$AppSnippet;
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->d:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/lenovo/install/PackageUtil$AppSnippet;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v1, p0, Lcom/lenovo/install/InstallErrorActivity;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
