.class public Lcom/lenovo/safecenter/support/CallInfoWin;
.super Ljava/lang/Object;
.source "CallInfoWin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/support/CallInfoWin$a;
    }
.end annotation


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "CallInfoWin.java"


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/LinearLayout;

.field private e:Z

.field public mDm:Landroid/util/DisplayMetrics;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

    .line 34
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 35
    new-instance v0, Lcom/lenovo/safecenter/support/CallInfoWin$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/support/CallInfoWin$1;-><init>(Lcom/lenovo/safecenter/support/CallInfoWin;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->c:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->e:Z

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/support/CallInfoWin;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/support/CallInfoWin;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static getCallShowPostionX(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "callshow_ptx"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCallShowPostionY(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, -0x32

    .line 76
    .local v1, "y":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "callshow_pty"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static isScreenLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 59
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCallShowPostion(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "callshow_ptx"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v2, "callshow_pty"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    const-string v2, "alreadyscroll"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 306
    iget-boolean v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->e:Z

    if-eqz v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 314
    iget-object v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/support/CallInfoWin;->setCallShowPostion(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->e:Z

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public show(Landroid/text/SpannableString;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "text"    # Landroid/text/SpannableString;
    .param p2, "b"    # Z
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    iput-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mWm:Landroid/view/WindowManager;

    .line 96
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iput-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mDm:Landroid/util/DisplayMetrics;

    .line 98
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 100
    .local v4, "inflate":Landroid/view/LayoutInflater;
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    .line 102
    const v11, 0x7f03005a

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 104
    .local v8, "rl":Landroid/widget/LinearLayout;
    const v11, 0x7f090256

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 105
    .local v1, "all_bg":Landroid/widget/LinearLayout;
    const v11, 0x7f09025a

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 107
    .local v9, "signshow":Landroid/widget/LinearLayout;
    const v11, 0x7f090257

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 108
    .local v10, "stoplisten_lin":Landroid/widget/LinearLayout;
    const v11, 0x7f09025d

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 109
    .local v5, "lin_float3":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    sget-object v11, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v12, "alreadyscroll"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 111
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    :cond_0
    const v11, 0x7f09025b

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 114
    .local v7, "pop_number":Landroid/widget/TextView;
    const v11, 0x7f09025c

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 116
    .local v6, "pop_desc":Landroid/widget/TextView;
    const v11, 0x7f090258

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, "float_top":Landroid/widget/TextView;
    const v11, 0x7f090259

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "float_bottom":Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 122
    const v11, 0x7f02011f

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 123
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    sget-object v11, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v12, "anti_tapping"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_3

    .line 126
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    :goto_0
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x28

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x7d3

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 190
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x1

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 196
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x2

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x2

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 200
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x31

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 203
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    invoke-static {v12}, Lcom/lenovo/safecenter/support/CallInfoWin;->getCallShowPostionX(Landroid/content/Context;)I

    move-result v12

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 204
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->a:Landroid/content/Context;

    invoke-static {v12}, Lcom/lenovo/safecenter/support/CallInfoWin;->getCallShowPostionY(Landroid/content/Context;)I

    move-result v12

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 206
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mWm:Landroid/view/WindowManager;

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    iget-object v13, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v11, v12, v13}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->d:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/lenovo/safecenter/support/CallInfoWin$2;

    invoke-direct {v12, p0}, Lcom/lenovo/safecenter/support/CallInfoWin$2;-><init>(Lcom/lenovo/safecenter/support/CallInfoWin;)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

    if-nez v11, :cond_1

    .line 296
    new-instance v11, Lcom/lenovo/safecenter/support/CallInfoWin$a;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/lenovo/safecenter/support/CallInfoWin$a;-><init>(Lcom/lenovo/safecenter/support/CallInfoWin;B)V

    iput-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

    .line 297
    :cond_1
    if-eqz p2, :cond_2

    .line 300
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->c:Landroid/os/Handler;

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CallInfoWin;->b:Lcom/lenovo/safecenter/support/CallInfoWin$a;

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_2
    return-void

    .line 131
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 136
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_4
    const v11, 0x7f0d048a

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 145
    :cond_5
    sget-object v11, Lcom/lenovo/safecenter/utils/Const;->mDefaultPreference:Landroid/content/SharedPreferences;

    const-string v12, "anti_tapping"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_6

    .line 147
    const v11, 0x7f02011f

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 148
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 156
    :cond_6
    const v11, 0x7f02011e

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 157
    const v11, 0x7f0d048a

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 158
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 161
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
