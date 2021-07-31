.class final Landroid/support/v4/view/ViewConfigurationCompat$b;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewConfigurationCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method
