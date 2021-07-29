.class abstract Lledroid/app/LedroidContextImpl$a;
.super Ljava/lang/Object;
.source "LedroidContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/app/LedroidContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/app/LedroidContextImpl$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iget-object v0, p0, Lledroid/app/LedroidContextImpl$a;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lledroid/app/LedroidContextImpl$a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lledroid/app/LedroidContextImpl$a;->a:Ljava/lang/Object;

    .line 30
    :cond_0
    iget-object v0, p0, Lledroid/app/LedroidContextImpl$a;->a:Ljava/lang/Object;

    return-object v0
.end method
