.class final Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;
.super Landroid/os/Handler;
.source "CpuAndMemeoryLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout$a;->a:Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;->a(Lcom/lenovo/performancecenter/performance/CpuAndMemeoryLayout;II)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
