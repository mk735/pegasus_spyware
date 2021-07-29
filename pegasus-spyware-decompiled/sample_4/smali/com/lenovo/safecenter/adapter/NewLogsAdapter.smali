.class public Lcom/lenovo/safecenter/adapter/NewLogsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewLogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/pm/PackageManager;

.field b:Landroid/content/Context;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafeLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/support/SafeLog;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->c:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->a:Landroid/content/pm/PackageManager;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 48
    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 49
    .local v8, "mInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0300be

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;

    invoke-direct {v6, p0}, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;-><init>(Lcom/lenovo/safecenter/adapter/NewLogsAdapter;)V

    .line 52
    .local v6, "holder":Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;
    const v9, 0x7f09043a

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->a:Landroid/widget/ImageView;

    .line 53
    const v9, 0x7f09043b

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->b:Landroid/widget/TextView;

    .line 54
    const v9, 0x7f09043c

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->c:Landroid/widget/TextView;

    .line 56
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .end local v8    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->c:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/safecenter/support/SafeLog;

    .line 62
    .local v7, "log":Lcom/lenovo/safecenter/support/SafeLog;
    const/4 v2, 0x0

    .line 64
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->a:Landroid/content/pm/PackageManager;

    iget-object v10, v7, Lcom/lenovo/safecenter/support/SafeLog;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    :goto_1
    if-nez v2, :cond_1

    .line 70
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->a:Landroid/widget/ImageView;

    const v10, 0x7f02017b

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_2
    iget v9, v7, Lcom/lenovo/safecenter/support/SafeLog;->logSelected:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    const v11, 0x7f0d0487

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    iget-object v11, v7, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "content":Ljava/lang/String;
    :goto_3
    iget v9, v7, Lcom/lenovo/safecenter/support/SafeLog;->action:I

    if-nez v9, :cond_3

    .line 83
    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    const v10, 0x7f0d0111

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "allow":Ljava/lang/String;
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->c:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->c:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070018

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-static {v9, v10, v11, v12, v13}, Lcom/lenovo/safecenter/utils/MyUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 93
    .end local v1    # "allow":Ljava/lang/String;
    :goto_4
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->b:Landroid/widget/TextView;

    iget-object v10, v7, Lcom/lenovo/safecenter/support/SafeLog;->time:Ljava/lang/String;

    iget-object v11, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/lenovo/safecenter/utils/MyUtils;->formatTime(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-object p2

    .line 58
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "content":Ljava/lang/String;
    .end local v6    # "holder":Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;
    .end local v7    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;

    .restart local v6    # "holder":Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;
    goto/16 :goto_0

    .line 66
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "log":Lcom/lenovo/safecenter/support/SafeLog;
    :catch_0
    move-exception v4

    .line 67
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 72
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 80
    :cond_2
    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    iget-object v10, v7, Lcom/lenovo/safecenter/support/SafeLog;->type:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Lcom/lenovo/safecenter/database/AppUtil;->getDescriptionByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "content":Ljava/lang/String;
    goto/16 :goto_3

    .line 88
    :cond_3
    iget-object v9, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    const v10, 0x7f0d0112

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "forbid":Ljava/lang/String;
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->c:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v9, v6, Lcom/lenovo/safecenter/adapter/NewLogsAdapter$a;->c:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/lenovo/safecenter/adapter/NewLogsAdapter;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070017

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-static {v9, v10, v11, v12, v13}, Lcom/lenovo/safecenter/utils/MyUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto/16 :goto_4
.end method
