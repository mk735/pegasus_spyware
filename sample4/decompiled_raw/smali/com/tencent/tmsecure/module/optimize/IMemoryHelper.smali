.class public interface abstract Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearAllCacheData()Z
.end method

.method public abstract clearCacheData(Ljava/lang/String;)Z
.end method

.method public abstract getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
.end method

.method public abstract getFreeMemery()J
.end method

.method public abstract getRamSize([Ljava/lang/String;)[Landroid/os/Debug$MemoryInfo;
.end method

.method public abstract getTotalMemery()J
.end method
