.class final Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap$1;
.super Ljava/lang/Object;
.source "ListOrderedMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap$1;->a:Lcom/lenovo/safecenter/HealthCheck/util/ListOrderedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;

    .end local p2    # "x1":Ljava/lang/Object;
    iget v0, p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    iget v1, p2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->weight:I

    sub-int v2, v0, v1

    if-nez v2, :cond_0

    iget v0, p1, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    iget v1, p2, Lcom/lenovo/safecenter/HealthCheck/HealthItemResult;->key:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0
.end method
