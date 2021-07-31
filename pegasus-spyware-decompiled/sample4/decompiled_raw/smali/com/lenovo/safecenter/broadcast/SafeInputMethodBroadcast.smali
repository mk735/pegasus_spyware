.class public Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "SafeInputMethodBroadcast.java"


# static fields
.field private static a:Landroid/view/WindowManager;

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:J

.field private static f:Z

.field private static g:Ljava/lang/Thread;

.field private static h:Ljava/lang/String;

.field private static i:Landroid/widget/EditText;

.field private static j:Z

.field private static k:J


# instance fields
.field private b:Landroid/view/WindowManager$LayoutParams;

.field private l:Landroid/content/Context;

.field private m:Landroid/view/inputmethod/InputMethodManager;

.field private n:Landroid/content/SharedPreferences;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 32
    sput-boolean v1, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c:Z

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d:Ljava/lang/String;

    .line 34
    sput-wide v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->e:J

    .line 35
    sput-boolean v1, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    .line 42
    sput-boolean v1, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->j:Z

    .line 43
    sput-wide v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->k:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 256
    new-instance v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$2;-><init>(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 28
    sput-wide p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->e:J

    return-wide p0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->j:Z

    return v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->k:J

    return-wide v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->m:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->m:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 248
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->m:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_input_method"

    const-string v3, "com.android.inputmethod.latin/.LatinIME"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ydp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchInputMethod error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->j:Z

    return v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c:Z

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic h()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->l:Landroid/content/Context;

    .line 60
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->l:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->m:Landroid/view/inputmethod/InputMethodManager;

    .line 61
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->l:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v7, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v3, "info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    :goto_1
    if-nez v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safeinputmethod_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    :cond_0
    :goto_2
    return-void

    .line 61
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 66
    :cond_3
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->a:Landroid/view/WindowManager;

    .line 67
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->n:Landroid/content/SharedPreferences;

    .line 68
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->n:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "safeinput"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_4

    .line 71
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    .line 72
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 74
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x500

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    :cond_4
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->i:Landroid/widget/EditText;

    if-nez v2, :cond_5

    .line 79
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->i:Landroid/widget/EditText;

    .line 80
    :cond_5
    const-string v2, "isPassword"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    .line 81
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v9, :cond_6

    sget-boolean v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    if-nez v2, :cond_6

    .line 82
    const-string v2, "ydp"

    const-string v3, "orientation return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 85
    :cond_6
    sget-boolean v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    if-eqz v2, :cond_7

    .line 86
    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->o:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    :cond_7
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPwd:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v6, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v2, "oldInputMethod"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d:Ljava/lang/String;

    .line 90
    const-string v2, "onlySend"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c:Z

    .line 91
    const-string v2, "ydp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendonly:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-boolean v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->c:Z

    if-eqz v2, :cond_8

    .line 93
    const-string v2, "ydp"

    const-string v3, "sendonly return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "old_input"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 97
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "s":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/safecenter/support/SecurityService;->mSIL()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "com.android.inputmethod.pinyin/.PinyinIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google.android.inputmethod.pinyin/.PinyinIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 103
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->d:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    .line 105
    :cond_9
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->g:Ljava/lang/Thread;

    if-nez v2, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->e:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x7d0

    cmp-long v2, v2, v6

    if-lez v2, :cond_b

    .line 106
    sget-boolean v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->f:Z

    if-eqz v2, :cond_a

    .line 109
    const-string v2, "com.android.inputmethod.latin/.LatinIME"

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "old_input"

    sget-object v4, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->e:J

    goto/16 :goto_2

    .line 114
    :cond_a
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->b(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "old_input"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    const-string v2, ""

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->h:Ljava/lang/String;

    goto :goto_3

    .line 119
    :cond_b
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->g:Ljava/lang/Thread;

    if-nez v2, :cond_c

    .line 120
    new-instance v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast$1;-><init>(Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;Landroid/content/Context;)V

    sput-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->g:Ljava/lang/Thread;

    .line 168
    sget-object v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->g:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 170
    :cond_c
    sput-boolean v5, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->j:Z

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/safecenter/broadcast/SafeInputMethodBroadcast;->k:J

    goto/16 :goto_2
.end method
