.class final Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;
.super Ljava/lang/Thread;
.source "MyMultiSIMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->aganistTheftHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->c:Z

    iput-object p4, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 103
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->c:Z

    iget-object v4, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->e:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->destroyPrivacyMessage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Handler;)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->location(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 106
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    iget-object v1, p0, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/safecenter/utils/MyUtils;->alarming(Landroid/content/Context;)V

    .line 110
    return-void
.end method
