.class final Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;
.super Ljava/lang/Thread;
.source "FlowIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->a(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;->sleep(J)V

    .line 112
    iget-object v1, p0, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon$1;->a:Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;

    invoke-static {v1}, Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;->b(Lcom/lenovo/safecenter/floatwindow/view/FlowIcon;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
