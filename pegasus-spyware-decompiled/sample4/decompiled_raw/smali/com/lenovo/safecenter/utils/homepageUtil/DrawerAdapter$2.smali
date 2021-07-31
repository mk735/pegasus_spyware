.class final Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$2;
.super Ljava/lang/Object;
.source "DrawerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;

.field final synthetic b:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$2;->b:Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter;

    iput-object p2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$2;->a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/DrawerAdapter$2;->a:Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->onClick()V

    .line 132
    return-void
.end method
