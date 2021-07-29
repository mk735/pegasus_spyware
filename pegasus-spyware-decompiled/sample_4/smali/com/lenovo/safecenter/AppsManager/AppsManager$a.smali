.class final Lcom/lenovo/safecenter/AppsManager/AppsManager$a;
.super Landroid/content/BroadcastReceiver;
.source "AppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AppsManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$a;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/AppsManager/AppsManager;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/AppsManager/AppsManager$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AppsManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/AppsManager$a;->a:Lcom/lenovo/safecenter/AppsManager/AppsManager;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/AppsManager;->initData()V

    .line 380
    return-void
.end method
