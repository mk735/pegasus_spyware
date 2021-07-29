.class final Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;
.super Ljava/lang/Thread;
.source "InputMethodChangeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->d:Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;

    iput-object p2, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 84
    const-string v0, "ydp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insterApp ---:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->d:Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->d:Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;

    iget-object v1, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;->a(Lcom/lenovo/safecenter/broadcast/InputMethodChangeBroadcast;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
