.class final Lcom/lenovo/feedback2/agent/a;
.super Ljava/lang/Object;
.source "ViewFetcher.java"


# static fields
.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    :try_start_0
    const-string v1, "android.view.WindowManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/lenovo/feedback2/agent/a;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    return-void

    .line 163
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    const-string v0, "sWindowManager"

    iput-object v0, p0, Lcom/lenovo/feedback2/agent/a;->a:Ljava/lang/String;

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "mWindowManager"

    iput-object v0, p0, Lcom/lenovo/feedback2/agent/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a([Landroid/view/View;)Landroid/view/View;
    .locals 13
    .param p0, "views"    # [Landroid/view/View;

    .prologue
    .line 84
    array-length v4, p0

    new-array v0, v4, [Landroid/view/View;

    .line 85
    .local v0, "decorViews":[Landroid/view/View;
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_0

    .line 96
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    move v8, v4

    move-wide v11, v5

    move-wide v4, v11

    :goto_1
    array-length v6, v0

    if-lt v8, v6, :cond_2

    return-object v7

    .line 89
    :cond_0
    aget-object v3, p0, v2

    .line 90
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v5, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    aput-object v3, v0, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    aget-object v6, v0, v8

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->hasWindowFocus()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v4

    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move-object v7, v6

    goto :goto_1

    :cond_3
    move-object v6, v7

    goto :goto_2
.end method


# virtual methods
.method public final a()[Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 182
    :try_start_0
    sget-object v4, Lcom/lenovo/feedback2/agent/a;->b:Ljava/lang/Class;

    const-string v6, "mViews"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 183
    .local v3, "viewsField":Ljava/lang/reflect/Field;
    sget-object v4, Lcom/lenovo/feedback2/agent/a;->b:Ljava/lang/Class;

    iget-object v6, p0, Lcom/lenovo/feedback2/agent/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 184
    .local v2, "instanceField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 185
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "instance":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 197
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "instanceField":Ljava/lang/reflect/Field;
    .end local v3    # "viewsField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    move-object v4, v5

    .line 197
    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
