.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "batteryInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const-string v7, "level"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;I)I

    .line 95
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v7, 0x7f0d06a0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->e(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v6, "voltage"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "bVoltage":I
    const/16 v6, 0xa

    if-ge v2, v6, :cond_0

    .line 99
    mul-int/lit16 v2, v2, 0x3e8

    .line 101
    :cond_0
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    int-to-float v7, v2

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;D)D

    .line 104
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v7, 0x7f0d06a1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->f(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v6, "temperature"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "bTemperature":I
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    int-to-float v7, v1

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v6, v7, v8}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->b(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;D)D

    .line 108
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v7, 0x7f0d06a2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "####.0"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->g(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const-string v7, "technology"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->a(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v7, 0x7f0d06a4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v10}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->h(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v4, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;

    invoke-direct {v4}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;-><init>()V

    .line 115
    .local v4, "item":Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;
    const v6, 0x7f02023a

    invoke-virtual {v4, v6}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setIconRes(I)V

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v8, 0x7f0d06a0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->e(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v8, 0x7f0d06a1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->f(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->g(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    cmpl-double v6, v8, v10

    if-ltz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v8, 0x7f0d06a2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->g(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v8, 0x7f0d06a4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v11}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->h(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;->setInfo(Ljava/lang/String;)V

    .line 121
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 122
    .local v5, "msg":Landroid/os/Message;
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->i(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .end local v1    # "bTemperature":I
    .end local v2    # "bVoltage":I
    .end local v3    # "batteryInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "item":Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 116
    .restart local v1    # "bTemperature":I
    .restart local v2    # "bVoltage":I
    .restart local v3    # "batteryInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "item":Lcom/lenovo/safecenter/systeminfo/entity/PhoneInfoItem;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v8, 0x7f0d06a3

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$2;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    const v12, 0x7f0d014e

    invoke-virtual {v11, v12}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
