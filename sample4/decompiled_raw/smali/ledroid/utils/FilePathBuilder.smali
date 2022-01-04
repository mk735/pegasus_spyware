.class public final Lledroid/utils/FilePathBuilder;
.super Ljava/lang/Object;
.source "FilePathBuilder.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lledroid/utils/FilePathBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lledroid/utils/FilePathBuilder;->a:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lledroid/utils/FilePathBuilder;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lledroid/utils/FilePathBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubFile(Ljava/lang/String;)Lledroid/utils/FilePathBuilder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lledroid/utils/FilePathBuilder;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lledroid/utils/FilePathBuilder;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lledroid/utils/FilePathBuilder;-><init>(Ljava/io/File;)V

    return-object v0
.end method
