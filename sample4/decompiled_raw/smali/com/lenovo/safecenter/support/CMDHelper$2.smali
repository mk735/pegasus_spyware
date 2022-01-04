.class final Lcom/lenovo/safecenter/support/CMDHelper$2;
.super Ljava/lang/Thread;
.source "CMDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/support/CMDHelper;->delApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 820
    const-string v11, "ydp"

    const-string v12, "del -------------1"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v9, 0x1

    .line 825
    .local v9, "result":Z
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/lenovo/safecenter/support/CMDHelper;->getMountDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 826
    .local v10, "systemDev":Ljava/lang/String;
    const-string v11, "ydp"

    const-string v12, "del -------------2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mount -o remount,rw "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " /system \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "comm":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rm -r data/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "comm1":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v13, "/"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "comm2":Ljava/lang/String;
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v12, "/"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 833
    .local v7, "path2":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rm data/dalvik-cache"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v13, "/"

    const-string v14, "@"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "@"

    const-string v14, "/"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@classes.dex"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "comm3":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data/dalvik-cache"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v13, "/"

    const-string v14, "@"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "@"

    const-string v14, "/"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@classes.dex"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 842
    .local v8, "path3":Ljava/lang/String;
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/lenovo/safecenter/support/CMDHelper;->reMountSystem(Ljava/lang/String;Landroid/content/Context;)Z

    .line 843
    const-string v11, "ydp"

    const-string v12, "del -------------3"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-static {v1, v11, v12}, Lcom/lenovo/safecenter/support/CMDHelper;->execDel(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 845
    const/4 v9, 0x0

    .line 846
    const-string v11, "ydp"

    const-string v12, "del -------------4"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-static {v2, v7, v11}, Lcom/lenovo/safecenter/support/CMDHelper;->execDel(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 850
    const/4 v9, 0x0

    .line 851
    const-string v11, "ydp"

    const-string v12, "del -------------5"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_1
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->a:Landroid/content/Context;

    invoke-static {v3, v8, v11}, Lcom/lenovo/safecenter/support/CMDHelper;->execDel(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 855
    const/4 v9, 0x0

    .line 856
    const-string v11, "ydp"

    const-string v12, "del -------------6"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0    # "comm":Ljava/lang/String;
    .end local v1    # "comm1":Ljava/lang/String;
    .end local v2    # "comm2":Ljava/lang/String;
    .end local v3    # "comm3":Ljava/lang/String;
    .end local v7    # "path2":Ljava/lang/String;
    .end local v8    # "path3":Ljava/lang/String;
    .end local v10    # "systemDev":Ljava/lang/String;
    :cond_2
    :goto_0
    const-wide/16 v11, 0xbb8

    :try_start_1
    invoke-static {v11, v12}, Lcom/lenovo/safecenter/support/CMDHelper$2;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 870
    :goto_1
    const-string v11, "ydp"

    const-string v12, "del -------------7"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->c:Landroid/os/Handler;

    if-eqz v11, :cond_3

    .line 872
    const-string v11, "ydp"

    const-string v12, "del -------------8"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->c:Landroid/os/Handler;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 874
    .local v6, "msg":Landroid/os/Message;
    if-eqz v9, :cond_4

    .line 875
    const-string v11, "ydp"

    const-string v12, "del -------------9"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 881
    :goto_2
    iget-object v11, p0, Lcom/lenovo/safecenter/support/CMDHelper$2;->c:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 883
    .end local v6    # "msg":Landroid/os/Message;
    :cond_3
    const-string v11, "ydp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSafeCenter over:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 858
    :catch_0
    move-exception v5

    .line 860
    .local v5, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 866
    .end local v5    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 868
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 878
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "msg":Landroid/os/Message;
    :cond_4
    const-string v11, "ydp"

    const-string v12, "del -------------10"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v11, -0x1

    iput v11, v6, Landroid/os/Message;->arg1:I

    goto :goto_2
.end method
