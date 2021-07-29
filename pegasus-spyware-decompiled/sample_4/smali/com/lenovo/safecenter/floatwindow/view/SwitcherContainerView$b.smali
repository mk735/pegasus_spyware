.class final Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;
.super Landroid/content/BroadcastReceiver;
.source "SwitcherContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;-><init>(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 693
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 696
    .local v2, "intExtra":I
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 697
    .local v3, "msg":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 698
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 699
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    .end local v2    # "intExtra":I
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 704
    .local v1, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 705
    .local v4, "state":I
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 706
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v5, 0x5

    iput v5, v3, Landroid/os/Message;->what:I

    .line 707
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 708
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->f(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    .end local v1    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "state":I
    :cond_1
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    const-string v5, "com.safecenter.broadcast.openChildMode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 723
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->g(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    .line 725
    :cond_2
    const-string v5, "com.safecenter.broadcast.openGuestMode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 726
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->h(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    .line 728
    :cond_3
    const-string v5, "com.lenovo.safecenter.lightChanges"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 729
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v5}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->i(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;)V

    .line 731
    :cond_4
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 732
    iget-object v5, p0, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView$b;->a:Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;->b(Lcom/lenovo/safecenter/floatwindow/view/SwitcherContainerView;Z)V

    .line 742
    :cond_5
    return-void
.end method
