.class public final Ltms/he;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;)V
    .locals 0

    iput-object p1, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string v2, "/proc/stat"

    invoke-static {v2}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_7

    aget-object v2, v6, v4

    if-eqz v2, :cond_0

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    if-nez v2, :cond_1

    iget-object v0, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    :goto_2
    invoke-interface {v0, v5}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    :goto_3
    return-void

    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "/proc/stat"

    invoke-static {v2}, Ltms/v;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v4, v1

    :goto_4
    if-ge v4, v8, :cond_6

    aget-object v2, v7, v4

    if-eqz v2, :cond_2

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    :goto_5
    if-nez v2, :cond_3

    iget-object v0, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_3
    :try_start_2
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v2, v0

    move v3, v1

    :goto_6
    array-length v7, v6

    if-ge v2, v7, :cond_4

    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4
    :goto_7
    array-length v2, v4

    if-ge v0, v2, :cond_5

    aget-object v2, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    sub-int v0, v1, v3

    const/4 v1, 0x4

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v1, v2, v1

    sub-int v1, v0, v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltms/he;->a:Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;

    invoke-interface {v1, v5}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;->onFinish(F)V

    throw v0

    :cond_6
    move-object v2, v3

    goto :goto_5

    :cond_7
    move-object v2, v3

    goto/16 :goto_1
.end method
