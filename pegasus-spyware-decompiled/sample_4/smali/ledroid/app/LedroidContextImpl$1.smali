.class final Lledroid/app/LedroidContextImpl$1;
.super Lledroid/app/LedroidContextImpl$a;
.source "LedroidContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/app/LedroidContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lledroid/app/LedroidContextImpl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v0, Lledroid/services/LedroidSettings;

    invoke-direct {v0, p1}, Lledroid/services/LedroidSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
