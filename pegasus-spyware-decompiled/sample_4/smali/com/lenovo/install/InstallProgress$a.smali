.class final Lcom/lenovo/install/InstallProgress$a;
.super Landroid/os/Handler;
.source "InstallProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/InstallProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/install/InstallProgress;


# direct methods
.method constructor <init>(Lcom/lenovo/install/InstallProgress;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v3, 0x7f090386

    const v8, 0x7f070010

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 48
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v2, v3}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->a(Lcom/lenovo/install/InstallProgress;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_boot"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v4, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v4}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/install/InstallProgress;->getBootAppInfoFromRealAllCls(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;->isManageTheBoot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->c(Lcom/lenovo/install/InstallProgress;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->d(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0780

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->d(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->e(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 81
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->e(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v4}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/install/InstallProgress;->a(Lcom/lenovo/install/InstallProgress;Landroid/content/Intent;)Landroid/content/Intent;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->f(Lcom/lenovo/install/InstallProgress;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->f(Lcom/lenovo/install/InstallProgress;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 91
    const/4 v0, 0x1

    .line 94
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->g(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->g(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/install/InstallProgress;->initBoot(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->notificationFilter(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->h(Lcom/lenovo/install/InstallProgress;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 74
    .end local v0    # "enabled":Z
    :cond_3
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->c(Lcom/lenovo/install/InstallProgress;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 105
    .restart local v0    # "enabled":Z
    :cond_4
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->h(Lcom/lenovo/install/InstallProgress;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->b(Lcom/lenovo/install/InstallProgress;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/install/InstallProgress;->initAdv(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "enabled":Z
    :cond_5
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v2, v3}, Lcom/lenovo/install/InstallProgress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->d(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0781

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->d(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->g(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->e(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->e(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0046

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v2}, Lcom/lenovo/install/InstallProgress;->e(Lcom/lenovo/install/InstallProgress;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v3}, Lcom/lenovo/install/InstallProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 143
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    iget-object v3, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-static {v3}, Lcom/lenovo/install/InstallProgress;->f(Lcom/lenovo/install/InstallProgress;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/install/InstallProgress;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v2, p0, Lcom/lenovo/install/InstallProgress$a;->a:Lcom/lenovo/install/InstallProgress;

    invoke-virtual {v2}, Lcom/lenovo/install/InstallProgress;->finish()V

    goto/16 :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
