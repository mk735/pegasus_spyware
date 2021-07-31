.class final Lcom/lenovo/safecenter/AppsManager/ApplicationList$7;
.super Ljava/lang/Thread;
.source "ApplicationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/ApplicationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$7;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ApplicationList$7;->a:Lcom/lenovo/safecenter/AppsManager/ApplicationList;

    invoke-static {v0}, Lcom/lenovo/safecenter/AppsManager/ApplicationList;->c(Lcom/lenovo/safecenter/AppsManager/ApplicationList;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.wochacha/.DataService"

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/support/CMDHelper;->disableApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 359
    return-void
.end method
