.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;
.super Ljava/lang/Thread;
.source "MessageBlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->initApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;->b:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    iput-object p2, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;->b:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->w(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V

    .line 269
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 270
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 271
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$11;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    return-void
.end method
