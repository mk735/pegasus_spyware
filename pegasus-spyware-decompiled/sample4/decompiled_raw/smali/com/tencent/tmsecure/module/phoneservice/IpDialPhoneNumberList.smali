.class public final Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final b:J = 0x1L


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->existed(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final copyFrom(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-direct {v3, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final copyFrom(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    new-instance v2, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-direct {v2, v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    invoke-virtual {p0, v2}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->add(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final existed(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ltms/ag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final get(I)Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValidIndex(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final listToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final toArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumberList;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
