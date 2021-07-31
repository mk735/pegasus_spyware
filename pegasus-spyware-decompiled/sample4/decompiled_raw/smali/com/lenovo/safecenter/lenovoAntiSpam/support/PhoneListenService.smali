.class public Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;
.super Landroid/app/Service;
.source "PhoneListenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;,
        Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;
    }
.end annotation


# instance fields
.field a:Landroid/telephony/TelephonyManager;

.field b:Landroid/media/AudioManager;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;B)V

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->c:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public deleteLastestCall(Ljava/lang/String;)V
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "number=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 48
    .local v7, "id":I
    const-string v1, "whiteperson"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    new-array v3, v9, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    .end local v7    # "id":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 55
    return-void
.end method

.method public endCall()V
    .locals 9

    .prologue
    .line 62
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "phone"

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 64
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 65
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 66
    const-string v4, "whiteperson"

    const-string v5, "telephony.endCall();"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->a:Landroid/telephony/TelephonyManager;

    .line 94
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->a:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService$b;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;B)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/support/PhoneListenService;->b:Landroid/media/AudioManager;

    .line 96
    return-void
.end method
