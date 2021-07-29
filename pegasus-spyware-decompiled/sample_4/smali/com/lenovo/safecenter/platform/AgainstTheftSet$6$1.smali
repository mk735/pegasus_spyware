.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;
.super Ljava/lang/Thread;
.source "AgainstTheftSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/MyUtils;->getNetWorksState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;

    iget-object v0, v0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-static {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->a(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6$1;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;

    iget-object v1, v1, Lcom/lenovo/safecenter/platform/AgainstTheftSet$6;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->getSafeMail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/MyUtils;->backupToMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    return-void
.end method
