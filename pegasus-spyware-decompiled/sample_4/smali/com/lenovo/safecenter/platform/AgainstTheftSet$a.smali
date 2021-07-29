.class final Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;
.super Landroid/content/BroadcastReceiver;
.source "AgainstTheftSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/platform/AgainstTheftSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;-><init>(Lcom/lenovo/safecenter/platform/AgainstTheftSet;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/platform/AgainstTheftSet$a;->a:Lcom/lenovo/safecenter/platform/AgainstTheftSet;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/platform/AgainstTheftSet;->finish()V

    .line 54
    :cond_0
    return-void
.end method
