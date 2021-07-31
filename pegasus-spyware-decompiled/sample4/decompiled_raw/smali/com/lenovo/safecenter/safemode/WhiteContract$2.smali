.class final Lcom/lenovo/safecenter/safemode/WhiteContract$2;
.super Ljava/lang/Object;
.source "WhiteContract.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/safemode/WhiteContract;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/safemode/WhiteContract;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/safemode/WhiteContract;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 322
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1, p1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->a(Lcom/lenovo/safecenter/safemode/WhiteContract;I)I

    .line 323
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->c(Lcom/lenovo/safecenter/safemode/WhiteContract;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    .line 330
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->d(Lcom/lenovo/safecenter/safemode/WhiteContract;)Lcom/lenovo/safecenter/safemode/WhiteContract$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract$a;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 332
    if-eq p1, v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 330
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/WhiteContract$2;->a:Lcom/lenovo/safecenter/safemode/WhiteContract;

    invoke-static {v1}, Lcom/lenovo/safecenter/safemode/WhiteContract;->e(Lcom/lenovo/safecenter/safemode/WhiteContract;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    goto :goto_0

    .line 337
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method
