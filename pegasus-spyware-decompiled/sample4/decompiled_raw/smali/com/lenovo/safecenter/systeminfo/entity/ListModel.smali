.class public Lcom/lenovo/safecenter/systeminfo/entity/ListModel;
.super Ljava/lang/Object;
.source "ListModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STYLE_FOOTER:I = 0x1

.field public static final STYLE_HEADER_FOOTER:I


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .param p2, "paramString"    # Ljava/lang/String;
    .param p3, "paramInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    .local p1, "paramList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->a:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    .line 45
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 2
    .param p2, "headerText"    # Ljava/lang/String;
    .param p3, "style"    # I
    .param p4, "showListNum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->a:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    .line 51
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    .line 54
    iput-boolean p4, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->a:Z

    .line 55
    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getItemModelList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    if-nez v0, :cond_3

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;

    invoke-direct {v2}, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;-><init>()V

    iget-object v3, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->setHeaderLabel(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->setItemStyle(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v1

    .line 112
    :goto_1
    return-object v0

    .line 109
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->getListMiddle()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getListMiddle()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, "middleDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;>;"
    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    .local v1, "dataIterator":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 126
    .local v0, "cmlMode":Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;
    const/4 v2, 0x0

    .line 128
    .local v2, "itemModel":Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmlMode":Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;
    check-cast v0, Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;

    .line 131
    .restart local v0    # "cmlMode":Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;
    new-instance v2, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;

    .end local v2    # "itemModel":Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;
    invoke-direct {v2}, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;-><init>()V

    .line 132
    .restart local v2    # "itemModel":Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;->getContextMenuName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/safecenter/systeminfo/entity/ItemModel;->setHeaderLabel(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    return-object v3
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iget v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    return v0
.end method

.method public isShowListNumber()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->a:Z

    return v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    .local p1, "paramList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->b:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setHeaderLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 153
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->c:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setShowListNumber(Z)V
    .locals 0
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 157
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->a:Z

    .line 158
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 161
    .local p0, "this":Lcom/lenovo/safecenter/systeminfo/entity/ListModel;, "Lcom/lenovo/safecenter/systeminfo/entity/ListModel<TT;>;"
    iput p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ListModel;->d:I

    .line 162
    return-void
.end method
