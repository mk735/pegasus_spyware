.class final Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;
.super Ljava/lang/Object;
.source "RootPassage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/performancecenter/coreui/util/RootPassage;->execRootCmdInJar(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
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
    .line 107
    iput-object p1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->exportLenovo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->appProssLenovo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/performancecenter/coreui/util/RootPassage$3;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
