.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;
.super Landroid/os/Handler;
.source "ScanVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const-string v5, "viruspkgname"

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/utils/HttpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "v_str":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const v6, 0x7f0d049c

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 108
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->finish()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;I)I

    .line 113
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 114
    .local v3, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->b(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v5}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->c(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    iget-object v6, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-static {v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->a(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;I)I

    .line 123
    iget-object v5, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$1;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v5}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->setView()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
