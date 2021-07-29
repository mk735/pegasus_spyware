.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "ScanVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->a:Landroid/content/Context;

    .line 135
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 141
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

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

    .line 144
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->d(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/safecenter/antivirus/domain/Virus;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/antivirus/domain/Virus;->setOperate(Z)V

    .line 145
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->e(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "k":I
    :cond_2
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 150
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 154
    :cond_4
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->f(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 155
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->e(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/ExpandableListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->g(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0d00a8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->c(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0d03d4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->h(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02032d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    :goto_3
    invoke-static {v2}, Lcom/lenovo/safecenter/antivirus/utils/AppUtils;->getVirusDescKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->removeConfig(Ljava/lang/String;Landroid/content/Context;)V

    .line 165
    .end local v0    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_5
    return-void

    .line 161
    .restart local v0    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$a;->b:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v3}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->setDealTxt()V

    goto :goto_3
.end method
