.class final Lledroid/root/res/NBJarFile$1;
.super Ljava/lang/Object;
.source "NBJarFile.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/root/res/NBJarFile;->updateIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lledroid/root/res/NBJarFile;


# direct methods
.method constructor <init>(Lledroid/root/res/NBJarFile;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lledroid/root/res/NBJarFile$1;->a:Lledroid/root/res/NBJarFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "name":Ljava/lang/String;
    const-string v5, "nb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ".jar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const-string v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "nameParts":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 70
    .end local v1    # "nameParts":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 61
    .restart local v1    # "nameParts":[Ljava/lang/String;
    :cond_1
    const-string v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 62
    .local v2, "version":I
    if-ge v2, v7, :cond_2

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 65
    :cond_2
    if-ne v2, v7, :cond_3

    move v3, v4

    .line 66
    goto :goto_0

    :cond_3
    move v3, v4

    .line 68
    goto :goto_0
.end method
