.class final Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;
.super Ljava/lang/Object;
.source "UrlOptionUtils.java"

# interfaces
.implements Lcom/lenovo/safecenter/utils/httpApi/HttpApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->replaceURL(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(II)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "statusCode"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->handlerMessage(Landroid/content/Context;Landroid/os/Handler;)V

    .line 54
    return-void
.end method

.method public final onSuccess(ILjava/lang/Object;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils$1;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/notificationintercept/UrlOptionUtils;->handlerMessage(Landroid/content/Context;Landroid/os/Handler;)V

    .line 49
    return-void
.end method
