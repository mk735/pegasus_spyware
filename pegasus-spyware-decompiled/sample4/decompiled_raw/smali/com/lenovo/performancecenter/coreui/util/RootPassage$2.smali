.class final Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;
.super Ljava/lang/Object;
.source "RootPassage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 86
    const-string v0, "KillSingle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION.SDK_INT == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->exportLenovo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->appProssLenovo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
