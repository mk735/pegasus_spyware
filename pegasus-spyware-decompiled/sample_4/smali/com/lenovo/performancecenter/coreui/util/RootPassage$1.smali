.class final Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;
.super Ljava/lang/Object;
.source "RootPassage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmd(Landroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "KILLALL"

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

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->d:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->exportLenovo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$1;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
