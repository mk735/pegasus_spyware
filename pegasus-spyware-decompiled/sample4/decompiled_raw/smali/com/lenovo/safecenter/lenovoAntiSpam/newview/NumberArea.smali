.class public Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;
.super Lcom/lenovo/safecenter/platform/BaseTitleActivity;
.source "NumberArea.java"


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "NumberArea.java"


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field private d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;)Lcom/tencent/tmsecure/module/phoneservice/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904b9

    if-ne v1, v2, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0300d1

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->setContentView(I)V

    .line 27
    const v0, 0x7f020286

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d0697

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 28
    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->d:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    .line 29
    const v0, 0x7f090478

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->a:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f090477

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->c:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f09047a

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->b:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$1;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v0, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea$2;-><init>(Lcom/lenovo/safecenter/lenovoAntiSpam/newview/NumberArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitleActivity;->onResume()V

    .line 96
    return-void
.end method
