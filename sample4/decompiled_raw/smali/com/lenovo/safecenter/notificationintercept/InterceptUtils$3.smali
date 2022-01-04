.class final Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;
.super Ljava/lang/Thread;
.source "InterceptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/notificationintercept/InterceptUtils;->notificationAllow(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/safecenter/notificationintercept/InterceptUtils$3;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lenovo/performancecenter/coreui/util/RootPassage;->clearnNotification(Ljava/lang/String;Landroid/content/Context;)V

    .line 777
    return-void
.end method
