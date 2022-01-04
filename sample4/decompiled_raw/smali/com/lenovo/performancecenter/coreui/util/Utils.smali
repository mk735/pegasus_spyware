.class public Lcom/lenovo/performancecenter/coreui/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final CLICK_INTERVAL:J = 0x3a98L

.field public static final SP_SHORTCUT:Ljava/lang/String; = "SHORTCUT"

.field public static final SP_SHORTCUT_CLICKPOSTION:Ljava/lang/String; = "SHORTCUT_CLICKPOSTION"

.field public static final SP_SHORTCUT_ENDMEMORY:Ljava/lang/String; = "SHORTCUT_ENDMEMORY"

.field public static final SP_SHORTCUT_LASTCLICK:Ljava/lang/String; = "SHORTCUT_LASTCLICK"

.field private static a:J

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z

.field public static isPerfRoot:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconResId"    # I
    .param p2, "appnameResId"    # I

    .prologue
    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "shortcutintent":Landroid/content/Intent;
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 219
    .local v0, "icon":Landroid/os/Parcelable;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    const-string v2, "android.intent.extra.shortcut.INTENT"

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/lenovo/safecenter/shortcut/CleanAcitivty;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/lenovo/performancecenter/coreui/util/Utils;->c:Z

    return p0
.end method

.method public static createShortCut(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconResId"    # I
    .param p2, "appnameResId"    # I

    .prologue
    .line 191
    invoke-static {p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->hasShortcut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/performancecenter/coreui/util/Utils;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static createShortCut(Landroid/content/Context;IIZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconResId"    # I
    .param p2, "appnameResId"    # I
    .param p3, "toast"    # Z

    .prologue
    .line 202
    invoke-static {p0}, Lcom/lenovo/performancecenter/coreui/util/Utils;->hasShortcut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const v0, 0x7f0d08a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/performancecenter/coreui/util/Utils;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static getBootTime()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->a:J

    return-wide v0
.end method

.method public static getEndMemory(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v1, "SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "SHORTCUT_ENDMEMORY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getIsRoot()Z
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/performancecenter/coreui/util/Utils$2;

    invoke-direct {v1}, Lcom/lenovo/performancecenter/coreui/util/Utils$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-boolean v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastClickPosition(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string v1, "SHORTCUT"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "SHORTCUT_CLICKPOSTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastKillTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v1, "SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "SHORTCUT_LASTCLICK"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getRecordPkgList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->b:Ljava/util/ArrayList;

    .line 69
    :cond_0
    sget-object v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSoftreference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTotleCpu()I
    .locals 9

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, "start":J
    invoke-static {}, Lcom/lenovo/performancecenter/LeemCenterJNITools;->getTotalCpuload_native()F

    move-result v4

    .line 135
    .local v4, "totleCpu":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, "end":J
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTotleCpu() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    float-to-int v5, v4

    return v5
.end method

.method public static hasShortcut(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v7, 0x0

    .line 252
    .local v7, "result":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 253
    const-string v8, "content://com.android.launcher.settings/favorites?notify=true"

    .line 257
    .local v8, "uriStr":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 258
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

    const-string v9, "com.lenovo.safecenter:drawable/onkey_shutcut_green"

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 261
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    const/4 v7, 0x1

    .line 264
    :cond_0
    return v7

    .line 255
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "uriStr":Ljava/lang/String;
    :cond_1
    const-string v8, "content://com.android.launcher2.settings/favorites?notify=true"

    .restart local v8    # "uriStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isLenovoApk(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "bool":Z
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    sget-object v1, Lcom/lenovo/safecenter/utils/Const;->LENOVO_APKS:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 186
    :cond_0
    return v0
.end method

.method public static readCpuUsage()I
    .locals 25

    .prologue
    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 143
    .local v16, "start":J
    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v21, "/proc/stat"

    const-string v22, "r"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v14, "reader":Ljava/io/RandomAccessFile;
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "load":Ljava/lang/String;
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, "toks":[Ljava/lang/String;
    const/16 v21, 0x5

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 147
    .local v9, "idle1":J
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const/16 v23, 0x3

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x4

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x6

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x7

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x8

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v23

    add-long v2, v21, v23

    .line 151
    .local v2, "cpu1":J
    const-wide/16 v21, 0x168

    :try_start_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_0
    const-wide/16 v21, 0x0

    :try_start_2
    move-wide/from16 v0, v21

    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 156
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 157
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 158
    const/16 v21, 0x5

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 159
    .local v11, "idle2":J
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const/16 v23, 0x3

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x4

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x6

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x7

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    const/16 v23, 0x8

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v4, v21, v23

    .line 163
    .local v4, "cpu2":J
    add-long v21, v4, v11

    add-long v23, v2, v9

    sub-long v19, v21, v23

    .line 165
    .local v19, "totalDiff":J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-nez v21, :cond_0

    .line 166
    const/4 v15, 0x0

    .line 171
    .local v15, "result":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 172
    .local v6, "end":J
    const-string v21, "test"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "readCpuUsage() "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v23, v6, v16

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "cpu1":J
    .end local v4    # "cpu2":J
    .end local v6    # "end":J
    .end local v9    # "idle1":J
    .end local v11    # "idle2":J
    .end local v13    # "load":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .end local v15    # "result":I
    .end local v18    # "toks":[Ljava/lang/String;
    .end local v19    # "totalDiff":J
    :goto_2
    return v15

    .line 168
    .restart local v2    # "cpu1":J
    .restart local v4    # "cpu2":J
    .restart local v9    # "idle1":J
    .restart local v11    # "idle2":J
    .restart local v13    # "load":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    .restart local v18    # "toks":[Ljava/lang/String;
    .restart local v19    # "totalDiff":J
    :cond_0
    const-wide/16 v21, 0x64

    sub-long v23, v4, v2

    mul-long v21, v21, v23

    div-long v21, v21, v19
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide/from16 v0, v21

    long-to-int v15, v0

    .restart local v15    # "result":I
    goto :goto_1

    .line 174
    .end local v2    # "cpu1":J
    .end local v4    # "cpu2":J
    .end local v9    # "idle1":J
    .end local v11    # "idle2":J
    .end local v13    # "load":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .end local v15    # "result":I
    .end local v18    # "toks":[Ljava/lang/String;
    .end local v19    # "totalDiff":J
    :catch_0
    move-exception v8

    .line 175
    .local v8, "ex":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    const/4 v15, 0x0

    goto :goto_2

    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v2    # "cpu1":J
    .restart local v9    # "idle1":J
    .restart local v13    # "load":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    .restart local v18    # "toks":[Ljava/lang/String;
    :catch_1
    move-exception v21

    goto/16 :goto_0
.end method

.method public static recordBootTime(J)V
    .locals 0
    .param p0, "bootTime"    # J

    .prologue
    .line 47
    sput-wide p0, Lcom/lenovo/performancecenter/coreui/util/Utils;->a:J

    .line 48
    return-void
.end method

.method public static recordEndMemory(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endMeomory"    # I

    .prologue
    .line 100
    const-string v2, "SHORTCUT"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SHORTCUT_ENDMEMORY"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public static recordKillTimeAndPosition(Landroid/content/Context;JI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "killTime"    # J
    .param p3, "position"    # I

    .prologue
    .line 73
    const-string v2, "SHORTCUT"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SHORTCUT_LASTCLICK"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v2, "SHORTCUT_CLICKPOSTION"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/performancecenter/service/object/KillAllPackageReceiver;->sendBroadcastAboutKillEvent(Landroid/content/Context;JI)V

    .line 79
    return-void
.end method

.method public static recordOpenPkgList(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->b:Ljava/util/ArrayList;

    .line 58
    :cond_0
    sget-object v0, Lcom/lenovo/performancecenter/coreui/util/Utils;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showMessage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 113
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    new-instance v1, Lcom/lenovo/performancecenter/coreui/util/Utils$1;

    invoke-direct {v1}, Lcom/lenovo/performancecenter/coreui/util/Utils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 127
    return-object v0
.end method
