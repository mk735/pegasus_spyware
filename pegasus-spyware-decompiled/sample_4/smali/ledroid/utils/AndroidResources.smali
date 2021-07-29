.class public Lledroid/utils/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lledroid/utils/AndroidResources;->a:Landroid/content/res/Resources;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/utils/AndroidResources;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lledroid/utils/AndroidResources;-><init>(Landroid/content/res/Resources;)V

    .line 20
    iput-object p2, p0, Lledroid/utils/AndroidResources;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lledroid/utils/AndroidResources;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lledroid/utils/AndroidResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "defType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lledroid/utils/AndroidResources;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lledroid/utils/AndroidResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "defPackage"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lledroid/utils/AndroidResources;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p3, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
