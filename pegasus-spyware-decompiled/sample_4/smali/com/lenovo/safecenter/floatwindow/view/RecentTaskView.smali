.class public Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;
.super Landroid/widget/FrameLayout;
.source "RecentTaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field private d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const-class v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    const v1, 0x7f030056

    invoke-static {v0, v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09024e

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->a:Landroid/widget/GridView;

    new-instance v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->c:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->getTaskList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;-><init>(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->b:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->b:Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$RecentTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView$1;-><init>(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getTaskList(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 135
    .local v2, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 138
    .local v12, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "android.intent.category.HOME"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 139
    .local v8, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/16 v17, 0x40

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v14

    .line 140
    .local v14, "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 141
    .local v13, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v11, Landroid/content/Intent;

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 142
    .local v11, "intentRecentTask":Landroid/content/Intent;
    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 143
    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    :cond_1
    if-eqz v8, :cond_2

    .line 147
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 158
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 159
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_0

    .line 165
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_3

    const-string v17, "com.lenovo.kidmode"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "com.lenovo.safebox"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "com.lenovo.safecenter.plugin"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 167
    new-instance v17, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-direct/range {v17 .. v17}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    .line 168
    const-string v17, "com.lenovo.safecenter.floatwindow.shortcut.ShortcutActivity"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const/high16 v19, 0x7f0d0000

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setName(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    const-string v18, "com.lenovo.safecenter.MainTab.SplashActivity"

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setMainname(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02017a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    const-string v18, "com.lenovo.safecenter"

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setPackagename(Ljava/lang/String;)V

    .line 199
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 200
    .local v4, "containFlag":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_7

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "containFlag":Z
    .end local v8    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "intentRecentTask":Landroid/content/Intent;
    .end local v13    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14    # "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v16

    .line 215
    .local v16, "se":Ljava/lang/SecurityException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 217
    .end local v16    # "se":Ljava/lang/SecurityException;
    :cond_4
    return-object p1

    .line 174
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "intentRecentTask":Landroid/content/Intent;
    .restart local v13    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v14    # "recentTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :try_start_1
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setName(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setPackagename(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setMainname(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v6, "exportedTask":Landroid/content/Intent;
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 185
    .local v7, "exportedapps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    .line 188
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_0

    .line 191
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 192
    .local v5, "exportedInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setName(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setPackagename(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->setMainname(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    .end local v5    # "exportedInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "exportedTask":Landroid/content/Intent;
    .end local v7    # "exportedapps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "containFlag":Z
    :cond_7
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 204
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getPackagename()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getPackagename()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 205
    const/4 v4, 0x1

    .line 209
    :cond_8
    if-nez v4, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/safecenter/floatwindow/view/RecentTaskView;->d:Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 203
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 226
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 233
    return-void
.end method
