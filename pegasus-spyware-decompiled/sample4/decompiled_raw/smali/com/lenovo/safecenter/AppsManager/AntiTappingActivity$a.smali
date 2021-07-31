.class final Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;
.super Landroid/widget/BaseAdapter;
.source "AntiTappingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "list"    # [Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->b:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->c:[Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->b:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v8, "layout":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    const/16 v12, 0x10

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/16 v15, 0xc

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 154
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->b:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v7, "imageView":Landroid/widget/ImageView;
    const/16 v12, 0x12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 157
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x3a

    const/16 v14, 0x3a

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->b:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v11, "textView":Landroid/widget/TextView;
    const/16 v12, 0x12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-virtual {v12}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    move-object/from16 p2, v8

    .line 166
    new-instance v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-direct {v6, v12}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;-><init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)V

    .line 167
    .local v6, "holder":Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;
    iput-object v7, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->a:Landroid/widget/ImageView;

    .line 168
    iput-object v11, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->b:Landroid/widget/TextView;

    .line 170
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "layout":Landroid/widget/LinearLayout;
    .end local v11    # "textView":Landroid/widget/TextView;
    :goto_0
    const-string v9, ""

    .line 177
    .local v9, "name":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->d(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v13}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->a(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, p1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 178
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v13}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->d(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->d(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 185
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    const v14, 0x7f0d0487

    invoke-virtual {v13, v14}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v14}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->e(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, p1

    invoke-static {v13, v14}, Lcom/lenovo/safecenter/database/AppUtil;->getPerDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v12}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->f(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[I

    move-result-object v12

    aget v12, v12, p1

    if-nez v12, :cond_1

    .line 188
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    const v14, 0x7f0d0111

    invoke-virtual {v13, v14}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "allow":Ljava/lang/String;
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->b:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->b:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070018

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-static/range {v12 .. v16}, Lcom/lenovo/safecenter/utils/MyUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 200
    .end local v1    # "allow":Ljava/lang/String;
    :goto_2
    return-object p2

    .line 172
    .end local v3    # "content":Ljava/lang/String;
    .end local v6    # "holder":Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;
    .end local v9    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;

    .restart local v6    # "holder":Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;
    goto/16 :goto_0

    .line 180
    .restart local v9    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 182
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->a:Landroid/widget/ImageView;

    const v13, 0x7f02017b

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 193
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "content":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    const v14, 0x7f0d00e8

    invoke-virtual {v13, v14}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "str":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "forbid":Ljava/lang/String;
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->b:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v12, v6, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$b;->b:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070017

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-static/range {v12 .. v16}, Lcom/lenovo/safecenter/utils/MyUtils;->setSpannableString(Landroid/widget/TextView;Ljava/lang/String;III)V

    goto :goto_2
.end method
