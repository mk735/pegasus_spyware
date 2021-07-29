.class final Lledroid/root/LedroidServiceLauncher$2;
.super Ljava/lang/Object;
.source "LedroidServiceLauncher.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/LedroidServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lledroid/root/LedroidServiceLauncher$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v1, "@nb."

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->a()Lledroid/root/res/NBJarFile;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lledroid/root/res/NBJarFile;->getNbJarFileVersion(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "v":I
    if-lez v0, :cond_0

    iget v1, p0, Lledroid/root/LedroidServiceLauncher$2;->a:I

    if-ge v0, v1, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 180
    .end local v0    # "v":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
