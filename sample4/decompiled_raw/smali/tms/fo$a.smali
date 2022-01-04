.class final Ltms/fo$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/fo;

.field private b:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

.field private c:Landroid/content/res/AssetManager;

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ltms/fo;)V
    .locals 1

    iput-object p1, p0, Ltms/fo$a;->a:Ltms/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltms/ef;

    invoke-direct {v0, p0, p1}, Ltms/ef;-><init>(Ltms/fo$a;Ltms/fo;)V

    iput-object v0, p0, Ltms/fo$a;->b:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    invoke-static {p1}, Ltms/fo;->b(Ltms/fo;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Ltms/fo$a;->c:Landroid/content/res/AssetManager;

    invoke-static {p1}, Ltms/fo;->b(Ltms/fo;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ltms/fo$a;->d:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final getAssertManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Ltms/fo$a;->c:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltms/fo$a;->a:Ltms/fo;

    invoke-static {v0}, Ltms/fo;->b(Ltms/fo;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutInflater()Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;
    .locals 1

    iget-object v0, p0, Ltms/fo$a;->b:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Ltms/fo$a;->d:Landroid/content/res/Resources;

    return-object v0
.end method
