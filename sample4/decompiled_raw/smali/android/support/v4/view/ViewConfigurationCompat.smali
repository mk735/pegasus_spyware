.class public Landroid/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewConfigurationCompat$b;,
        Landroid/support/v4/view/ViewConfigurationCompat$a;,
        Landroid/support/v4/view/ViewConfigurationCompat$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/ViewConfigurationCompat$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 58
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$c;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$a;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$c;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 72
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$c;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
