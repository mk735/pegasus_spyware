.class final Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
.super Ljava/lang/Object;
.source "DataLayerManagerAccelerate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appName"    # Ljava/lang/CharSequence;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "proName"    # Ljava/lang/String;
    .param p5, "clsName"    # Ljava/lang/String;
    .param p6, "state"    # I
    .param p7, "expertSuggest"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->a:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    .line 111
    iput-object p3, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->d:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    .line 114
    iput p6, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    .line 115
    iput p7, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->g:I

    .line 116
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    iget v1, p1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 148
    instance-of v2, p1, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;

    .line 151
    .local v0, "app":Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;
    iget v2, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    iget v3, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 140
    iget v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    add-int/lit16 v0, v1, 0x275

    .line 142
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clsName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expertSuggest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/performancecenter/performance/DataLayerManagerAccelerate$a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
