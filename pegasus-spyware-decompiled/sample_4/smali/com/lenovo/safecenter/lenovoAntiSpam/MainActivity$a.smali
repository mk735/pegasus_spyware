.class final Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity$a;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/MainActivity;->updateStatus()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
