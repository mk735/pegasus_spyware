.class final Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;
.super Ljava/lang/Object;
.source "ManLocalBlackActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->setOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1, p1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;I)I

    .line 237
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->a(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    .line 244
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->b(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$a;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 246
    if-eq p1, v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity$1;->a:Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;

    invoke-static {v1}, Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;->c(Lcom/lenovo/safecenter/lenovoAntiSpam/views/ManLocalBlackActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setTranscriptMode(I)V

    goto :goto_0

    .line 251
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method
