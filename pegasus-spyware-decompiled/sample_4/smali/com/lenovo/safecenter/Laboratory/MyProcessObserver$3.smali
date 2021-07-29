.class final Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;
.super Landroid/os/Handler;
.source "MyProcessObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x7f0902a7

    const v7, 0x7f0300fd

    const/16 v11, 0x378

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 185
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const-string v6, "ydp"

    const-string v7, "handler ok"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    const-string v7, ""

    const-string v8, ""

    invoke-virtual {v6, v10, v7, v8}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->showNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_1
    const-string v6, "ydp"

    const-string v7, "handler no"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/lenovo/safecenter/Laboratory/SafePaymentDialogActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v4, v6

    check-cast v4, [Ljava/lang/String;

    .line 206
    .local v4, "strs":[Ljava/lang/String;
    const-string v6, "pkgName"

    aget-object v7, v4, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v6, "safeAppName"

    aget-object v7, v4, v10

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const v6, 0x14008000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    aget-object v7, v4, v10

    aget-object v8, v4, v9

    invoke-virtual {v6, v9, v7, v8}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->showNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "strs":[Ljava/lang/String;
    :pswitch_2
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 216
    .local v1, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 217
    .local v3, "rv":Landroid/widget/RemoteViews;
    const/16 v6, 0xa

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 218
    const v6, 0x7f0202a8

    iput v6, v1, Landroid/app/Notification;->icon:I

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v7}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d051f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 220
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d051d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 222
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 223
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v6, v6, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b:Landroid/app/NotificationManager;

    invoke-virtual {v6, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 224
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v6, v6, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b:Landroid/app/NotificationManager;

    invoke-virtual {v6, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 228
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v3    # "rv":Landroid/widget/RemoteViews;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 229
    .local v2, "pkgAndAppName":[Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 231
    .restart local v1    # "notification":Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 232
    .restart local v3    # "rv":Landroid/widget/RemoteViews;
    const/16 v6, 0x18

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 233
    const v6, 0x7f0202a9

    iput v6, v1, Landroid/app/Notification;->icon:I

    .line 234
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0520

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 235
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d051e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aget-object v8, v2, v10

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 236
    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 237
    aget-object v6, v2, v9

    sput-object v6, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->NOTIFY_PKGNAME:Ljava/lang/String;

    .line 243
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/lenovo/safecenter/broadcast/SafePaymenUninstallService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v5, "uninstallService":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    const-string v6, "pkgName"

    aget-object v7, v2, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    invoke-static {v6}, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->a(Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v5, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 247
    iget-object v6, p0, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver$3;->a:Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;

    iget-object v6, v6, Lcom/lenovo/safecenter/Laboratory/MyProcessObserver;->b:Landroid/app/NotificationManager;

    invoke-virtual {v6, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
