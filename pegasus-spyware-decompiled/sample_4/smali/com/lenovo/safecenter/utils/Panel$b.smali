.class final Lcom/lenovo/safecenter/utils/Panel$b;
.super Landroid/os/Handler;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/Panel;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/utils/Panel;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/Panel$b;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/utils/Panel;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/utils/Panel;

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/utils/Panel$b;-><init>(Lcom/lenovo/safecenter/utils/Panel;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 751
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 760
    :goto_0
    return-void

    .line 753
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel$b;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Panel;->u(Lcom/lenovo/safecenter/utils/Panel;)V

    goto :goto_0

    .line 756
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel$b;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Panel;->v(Lcom/lenovo/safecenter/utils/Panel;)V

    .line 757
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/Panel$b;->a:Lcom/lenovo/safecenter/utils/Panel;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Panel;->u(Lcom/lenovo/safecenter/utils/Panel;)V

    goto :goto_0

    .line 751
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
