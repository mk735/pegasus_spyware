.class final Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;
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
    .line 1029
    iput-object p1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iput p2, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1032
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0839

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1044
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    iget v1, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->a:I

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->d(Lcom/lenovo/safecenter/net/doublemode/NetSetting;I)V

    .line 1039
    iget-object v0, p0, Lcom/lenovo/safecenter/net/doublemode/NetSetting$6;->b:Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/doublemode/NetSetting;->f(Lcom/lenovo/safecenter/net/doublemode/NetSetting;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0838

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
