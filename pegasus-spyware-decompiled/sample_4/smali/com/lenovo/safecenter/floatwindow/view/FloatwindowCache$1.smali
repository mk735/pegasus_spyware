.class final Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;
.super Ljava/lang/Thread;
.source "FloatwindowCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 50
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/floatwindow/view/FloatwindowCache;->finish()V

    .line 55
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
