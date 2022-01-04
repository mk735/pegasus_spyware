.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;
.super Ljava/lang/Object;
.source "NetSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/net/doublemode/NetSetting;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iput p2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iget-object v0, v0, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/cache/NetCache;->setNetSettingHandler(Landroid/os/Handler;)V

    .line 1014
    iget v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;->a:I

    iget-object v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$5;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->startIntent2TrafficCorrect(ILandroid/content/Context;I)V

    .line 1016
    return-void
.end method
