.class final Lledroid/root/LedroidServiceLauncher$a;
.super Ljava/lang/Object;
.source "LedroidServiceLauncher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/LedroidServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lledroid/root/LedroidServiceLauncher$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->b()Lledroid/services/ILedroidService;

    .line 234
    :try_start_0
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->launchLedroidService()V
    :try_end_0
    .catch Lledroid/root/RootPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
