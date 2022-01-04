.class final Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$2;
.super Ljava/lang/Object;
.source "FourBoxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;

.field final synthetic b:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$2;->b:Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter;

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$2;->a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/FourBoxAdapter$2;->a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->onClick()V

    .line 108
    return-void
.end method
