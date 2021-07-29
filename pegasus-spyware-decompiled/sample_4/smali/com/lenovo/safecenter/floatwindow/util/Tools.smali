.class public Lcom/lenovo/safecenter/floatwindow/util/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/util/Tools;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static createFloatwindowShortCut(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconResId"    # I
    .param p2, "appnameResId"    # I

    .prologue
    .line 180
    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->hasfFloatwindowShortcut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0d06dc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lenovo/safecenter/floatwindow/shortcut/ShortcutActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 42
    .local v0, "displayMetrics2":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .local v1, "height":I
    return v1
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 31
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static hasfFloatwindowShortcut(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 213
    const/4 v7, 0x0

    .line 225
    .local v7, "result":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 226
    const-string v8, "content://com.android.launcher.settings/favorites?notify=true"

    .line 230
    .local v8, "uriStr":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 231
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, " iconPackage=? and iconResource=? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "com.lenovo.safecenter"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "com.lenovo.safecenter:drawable/shortcut_app_icon"

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    const/4 v7, 0x1

    .line 237
    :cond_0
    return v7

    .line 228
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "uriStr":Ljava/lang/String;
    :cond_1
    const-string v8, "content://com.android.launcher2.settings/favorites?notify=true"

    .restart local v8    # "uriStr":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getAvailMemory()Ljava/lang/String;
    .locals 6

    .prologue
    .line 164
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 165
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v2, p0, Lcom/lenovo/safecenter/floatwindow/util/Tools;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 166
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 168
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTotalMemory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 75
    const-string v5, "/proc/meminfo"

    .line 79
    .local v5, "str1":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 82
    .local v1, "initial_memory":J
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 83
    .local v4, "localFileReader":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v3, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 84
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "str2":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 85
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    int-to-long v1, v7

    .line 88
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .end local v6    # "str2":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 90
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public getUeageRate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "totalstr1"    # Ljava/lang/String;
    .param p2, "totalstr2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v2, v4

    .line 125
    .local v2, "local01":F
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v3, v4

    .line 127
    .local v3, "local02":F
    sub-float v4, v2, v3

    div-float v1, v4, v2

    .line 129
    .local v1, "d":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 131
    .local v0, "b":I
    return v0
.end method

.method public getUeageRate1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "totalstr1"    # Ljava/lang/String;
    .param p2, "totalstr2"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v2, v4

    .line 147
    .local v2, "local01":F
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v3, v4

    .line 149
    .local v3, "local02":F
    div-float v1, v3, v2

    .line 151
    .local v1, "d":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 153
    .local v0, "b":I
    return v0
.end method

.method public getUeageSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "totalstr1"    # Ljava/lang/String;
    .param p2, "totalstr2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "local01":I
    invoke-virtual {p0, p2}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->stringtoInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "local02":I
    sub-int v2, v0, v1

    return v2
.end method

.method public inttostring(I)Ljava/lang/String;
    .locals 2
    .param p1, "mem"    # I

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringtoInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v1, "MB"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "str2":Ljava/lang/String;
    const-string v1, "%"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 101
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
