.class final Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;
.super Landroid/os/Handler;
.source "AntiTappingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    new-instance v0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;

    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    iget-object v2, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    iget-object v3, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->a(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;-><init>(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;Landroid/content/Context;[Ljava/lang/String;)V

    .line 46
    .local v0, "adapter":Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$a;
    iget-object v1, p0, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity$1;->a:Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;->b(Lcom/lenovo/safecenter/AppsManager/AntiTappingActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method
