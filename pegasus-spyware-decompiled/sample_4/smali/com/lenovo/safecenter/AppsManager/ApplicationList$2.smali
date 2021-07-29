.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;
.super Ljava/lang/Thread;
.source "ApplicationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/ApplicationList;->b(Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/safecenter/support/AppInfo;

.field final synthetic c:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;Ljava/util/List;Lcom/lenovo/safecenter/support/AppInfo;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->c:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->b:Lcom/lenovo/safecenter/support/AppInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 438
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->c:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->b:Lcom/lenovo/safecenter/support/AppInfo;

    iget-object v4, v4, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 440
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 441
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$2;->c:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/lenovo/safecenter/support/CMDHelper;->enableApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 444
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
