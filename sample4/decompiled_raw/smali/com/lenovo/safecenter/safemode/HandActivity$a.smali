.class final Lcom/lenovo/safecenter/safemode/HandActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "HandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/safemode/HandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/HandActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/safemode/HandActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/HandActivity$a;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/safemode/HandActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/safemode/HandActivity;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/safemode/HandActivity$a;-><init>(Lcom/lenovo/safecenter/safemode/HandActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/HandActivity$a;->a:Lcom/lenovo/safecenter/safemode/HandActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/safemode/HandActivity;->finish()V

    .line 81
    :cond_0
    return-void
.end method
