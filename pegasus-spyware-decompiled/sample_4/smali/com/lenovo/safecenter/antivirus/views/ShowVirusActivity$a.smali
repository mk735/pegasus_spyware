.class final Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "ShowVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->a:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 64
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setOperate(Z)V

    .line 69
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;->b(Lcom/lenovo/safecenter/antivirus/views/ShowVirusActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "k":I
    :cond_2
    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->removeConfig(Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    .end local v0    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method
