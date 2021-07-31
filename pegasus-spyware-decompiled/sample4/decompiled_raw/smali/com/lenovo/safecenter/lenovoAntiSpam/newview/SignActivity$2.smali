.class final Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;
.super Ljava/lang/Thread;
.source "SignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->initData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->getSignCallList()V

    .line 179
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity$2;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;->f(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/SignActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
