.class public Lcom/tencent/lbsapi/core/QLBSEngine;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field protected a:Ljava/lang/Runnable;

.field protected b:Ljava/lang/Runnable;

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/lbsapi/QLBSNotification;

.field private e:Landroid/os/Handler;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/location/LocationManager;

.field private h:I

.field private i:Landroid/location/LocationListener;

.field private j:Landroid/net/wifi/WifiManager;

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/util/ArrayList;

.field private y:Ljava/util/ArrayList;

.field private z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    iput-boolean v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    iput-boolean v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Z

    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    iput-boolean v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:Ljava/lang/String;

    new-instance v0, Lcom/tencent/lbsapi/core/g;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/g;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/lbsapi/core/i;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/i;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->u()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/QLBSEngine;)V
    .locals 23

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    :goto_1
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x8

    new-array v7, v3, [B

    fill-array-data v7, :array_0

    const/4 v3, 0x0

    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_4

    aget-object v8, v6, v3

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    rsub-int/lit8 v9, v3, 0x5

    int-to-byte v8, v8

    aput-byte v8, v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    const/4 v6, 0x0

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v8, v6

    const/4 v6, 0x1

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v10, v6

    const/4 v6, 0x2

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v12, v6

    const/4 v6, 0x3

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v14, v6

    const/4 v6, 0x4

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v0, v6

    move-wide/from16 v16, v0

    const/4 v6, 0x5

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const/4 v6, 0x6

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v0, v6

    move-wide/from16 v20, v0

    const/4 v6, 0x7

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v22, 0x8

    shl-long v10, v10, v22

    const/16 v22, 0x10

    shl-long v12, v12, v22

    const/16 v22, 0x18

    shl-long v14, v14, v22

    const/16 v22, 0x20

    shl-long v16, v16, v22

    const/16 v22, 0x28

    shl-long v18, v18, v22

    const/16 v22, 0x30

    shl-long v20, v20, v22

    const/16 v22, 0x38

    shl-long v6, v6, v22

    or-long/2addr v8, v10

    or-long/2addr v8, v12

    or-long/2addr v8, v14

    or-long v8, v8, v16

    or-long v8, v8, v18

    or-long v8, v8, v20

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/lbsapi/model/QLBSWifiInfo;

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {v6, v7, v8, v2}, Lcom/tencent/lbsapi/model/QLBSWifiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    const v3, 0x35a4e900

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    const v3, 0x35a4e900

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/QLBSEngine;Landroid/location/Location;)V
    .locals 7

    const v6, 0x35a4e900

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->r()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v0, v2}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_3
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_5
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_8
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v0, v2}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_d
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v0, v3}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    :cond_f
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/QLBSEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/lbsapi/core/QLBSEngine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/lbsapi/core/QLBSEngine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/lbsapi/core/QLBSEngine;)I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/lbsapi/core/QLBSEngine;)I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/lbsapi/core/QLBSEngine;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/lbsapi/core/QLBSEngine;)Lcom/tencent/lbsapi/QLBSNotification;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/lbsapi/core/QLBSEngine;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/lbsapi/core/QLBSEngine;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/lbsapi/core/QLBSEngine;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    return v0
.end method

.method public static t()J
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7b2

    const/4 v3, 0x1

    const/16 v4, 0x8

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private u()V
    .locals 2

    const v1, 0x35a4e900

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-lez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:Ljava/lang/String;

    :cond_4
    :goto_2
    return-void

    :cond_5
    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :try_start_2
    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const-string v0, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    :cond_7
    const-string v0, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    :cond_8
    const-string v0, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    :cond_9
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    :try_start_4
    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->u()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    return-void
.end method

.method public declared-synchronized a(I)Z
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->v()V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/lbsapi/core/h;

    invoke-direct {v1, p0}, Lcom/tencent/lbsapi/core/h;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->b()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    if-eqz v0, :cond_8

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_2
    monitor-exit p0

    return v6

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_6

    :cond_9
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    if-nez v0, :cond_a

    new-instance v0, Lcom/tencent/lbsapi/core/f;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/f;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    :cond_a
    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_b
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Z

    goto :goto_1

    :cond_c
    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_3

    :cond_d
    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    if-le v0, v3, :cond_b

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Z

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    :cond_10
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Z

    return-void
.end method

.method public b()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    :try_start_0
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    return v0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public c()I
    .locals 5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->v()V

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    if-eq v3, v2, :cond_4

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public d()Lcom/tencent/lbsapi/model/QLBSCellInfo;
    .locals 5

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->v()V

    new-instance v0, Lcom/tencent/lbsapi/model/QLBSCellInfo;

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/lbsapi/model/QLBSCellInfo;-><init>(IIII)V

    return-object v0
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->d:Lcom/tencent/lbsapi/QLBSNotification;

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->g:Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Landroid/location/LocationListener;

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->e:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    return v0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:Ljava/lang/String;

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:Ljava/lang/String;

    goto :goto_0
.end method

.method public r()V
    .locals 10

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->s()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    new-instance v2, LLBSAPIProtocol/Measure;

    invoke-direct {v2}, LLBSAPIProtocol/Measure;-><init>()V

    invoke-static {}, Lcom/tencent/lbsapi/core/QLBSEngine;->t()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, LLBSAPIProtocol/Measure;->setLTime(J)V

    new-instance v0, LLBSAPIProtocol/GPS;

    iget v4, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    iget v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    const/4 v6, -0x1

    invoke-direct {v0, v4, v5, v6, v7}, LLBSAPIProtocol/GPS;-><init>(IIII)V

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setStGps(LLBSAPIProtocol/GPS;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, LLBSAPIProtocol/Measure;->getVCells()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, LLBSAPIProtocol/Cell;

    iget v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    int-to-short v5, v5

    iget v6, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    int-to-short v6, v6

    iget v7, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    iget v8, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    invoke-direct {v4, v5, v6, v7, v8}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, LLBSAPIProtocol/Measure;->getVCells()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, LLBSAPIProtocol/Cell;

    iget v7, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    int-to-short v7, v7

    iget v8, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    int-to-short v8, v8

    iget v9, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:I

    invoke-direct {v6, v7, v8, v9, v0}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setVMacs(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setStrExtraInfo(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v2, "lbs_temp"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v3

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_5
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_6
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_8
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public s()Ljava/util/ArrayList;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_6
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_7
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_8
    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->c:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wifiNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
