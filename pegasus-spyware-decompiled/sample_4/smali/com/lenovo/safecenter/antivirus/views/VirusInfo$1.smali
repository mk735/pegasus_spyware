.class final Lcom/lenovo/safecenter/antivirus/views/VirusInfo$1;
.super Landroid/os/Handler;
.source "VirusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/VirusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$1;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/VirusInfo$1;->a:Lcom/lenovo/safecenter/antivirus/views/VirusInfo;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/antivirus/views/VirusInfo;->a(Lcom/lenovo/safecenter/antivirus/views/VirusInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
