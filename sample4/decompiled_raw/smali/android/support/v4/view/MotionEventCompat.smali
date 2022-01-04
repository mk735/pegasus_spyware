.class public Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MotionEventCompat$b;,
        Landroid/support/v4/view/MotionEventCompat$a;,
        Landroid/support/v4/view/MotionEventCompat$c;
    }
.end annotation


# static fields
.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field static final a:Landroid/support/v4/view/MotionEventCompat$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 85
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$c;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$a;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$c;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerId"    # I

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$c;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 160
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$c;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 169
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$c;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 178
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$c;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
