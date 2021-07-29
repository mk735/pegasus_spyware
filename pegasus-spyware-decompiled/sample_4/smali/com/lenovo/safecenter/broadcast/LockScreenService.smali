.class public Lcom/lenovo/safecenter/broadcast/LockScreenService;
.super Landroid/app/Service;
.source "LockScreenService.java"


# static fields
.field static a:Landroid/widget/TextView;

.field static b:Landroid/widget/EditText;

.field static c:Landroid/widget/TextView;

.field static d:Landroid/view/WindowManager$LayoutParams;

.field static e:Landroid/view/WindowManager;

.field static f:Landroid/view/View;

.field static g:Landroid/view/LayoutInflater;

.field static h:Landroid/content/SharedPreferences;

.field static i:Z

.field private static j:Landroid/os/PowerManager;

.field private static k:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 172
    new-instance v0, Lcom/lenovo/safecenter/broadcast/LockScreenService$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/broadcast/LockScreenService$2;-><init>(Lcom/lenovo/safecenter/broadcast/LockScreenService;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/broadcast/LockScreenService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/broadcast/LockScreenService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->k:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method


# virtual methods
.method public getSimSerialNumber(IZLandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .param p2, "state"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    if-nez p2, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 168
    :cond_0
    return-object v0

    .line 162
    :cond_1
    invoke-static {p3}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "number":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :cond_2
    invoke-static {p3}, Landroid/provider/MultiSIMUtils;->getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "......get sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 51
    const-string v1, "phonenumber"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "phoneNumber":Ljava/lang/String;
    sget-boolean v1, Lcom/lenovo/safecenter/utils/MyUtils;->isLocked:Z

    if-nez v1, :cond_1

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->g:Landroid/view/LayoutInflater;

    .line 54
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->f:Landroid/view/View;

    .line 55
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->f:Landroid/view/View;

    const v2, 0x7f0903b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->a:Landroid/widget/TextView;

    .line 56
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->f:Landroid/view/View;

    const v2, 0x7f0903b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->b:Landroid/widget/EditText;

    .line 57
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->f:Landroid/view/View;

    const v2, 0x7f0903b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->c:Landroid/widget/TextView;

    .line 60
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->j:Landroid/os/PowerManager;

    .line 61
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->j:Landroid/os/PowerManager;

    const/16 v2, 0xa

    const-string v3, "BackLight"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->k:Landroid/os/PowerManager$WakeLock;

    .line 62
    const-string v1, "antitheft"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->h:Landroid/content/SharedPreferences;

    .line 64
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->e:Landroid/view/WindowManager;

    .line 65
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7da

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    sput-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->d:Landroid/view/WindowManager$LayoutParams;

    .line 67
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->d:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->d:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->d:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 70
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 71
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 72
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/broadcast/LockScreenService$1;-><init>(Lcom/lenovo/safecenter/broadcast/LockScreenService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/lenovo/safecenter/broadcast/LockScreenService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/LockScreenService;->l:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    sput-boolean v4, Lcom/lenovo/safecenter/utils/MyUtils;->isLocked:Z

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d00be

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0d00c1

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/broadcast/LockScreenService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/lenovo/safecenter/utils/MyUtils;->sendMsgToSafeNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
