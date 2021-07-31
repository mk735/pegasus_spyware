.class public Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 41
    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->a(I)I

    move-result p1

    .line 43
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 44
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 45
    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 46
    return-void
.end method

.method private static a(I)I
    .locals 4
    .param p0, "need"    # I

    .prologue
    const/4 v3, 0x1

    .line 354
    mul-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    shl-int v2, v3, v1

    add-int/lit8 v2, v2, -0xc

    if-gt v0, v2, :cond_1

    shl-int v0, v3, v1

    add-int/lit8 v0, v0, -0xc

    :cond_0
    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a([III)I
    .locals 5
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "key"    # I

    .prologue
    .line 314
    add-int/lit8 v1, p1, 0x0

    .local v1, "high":I
    const/4 v2, -0x1

    .line 316
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 317
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 319
    .local v0, "guess":I
    aget v3, p0, v0

    if-ge v3, p2, :cond_0

    .line 320
    move v2, v0

    goto :goto_0

    .line 322
    :cond_0
    move v1, v0

    goto :goto_0

    .line 325
    .end local v0    # "guess":I
    :cond_1
    add-int/lit8 v3, p1, 0x0

    if-ne v1, v3, :cond_3

    .line 326
    add-int/lit8 v3, p1, 0x0

    xor-int/lit8 v1, v3, -0x1

    .line 330
    .end local v1    # "high":I
    :cond_2
    :goto_1
    return v1

    .line 327
    .restart local v1    # "high":I
    :cond_3
    aget v3, p0, v1

    if-eq v3, p2, :cond_2

    .line 330
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private a()V
    .locals 7

    .prologue
    .line 104
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 105
    .local v2, "n":I
    const/4 v3, 0x0

    .line 106
    .local v3, "o":I
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 107
    .local v1, "keys":[I
    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 109
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 110
    aget-object v4, v5, v0

    .line 112
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 113
    if-eq v0, v3, :cond_0

    .line 114
    aget v6, v1, v0

    aput v6, v1, v3

    .line 115
    aput-object v4, v5, v3

    .line 118
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 123
    iput v3, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 126
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 284
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 311
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 290
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 293
    :cond_1
    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 294
    .local v3, "pos":I
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 295
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Landroid/support/v4/app/HCSparseArray;->a(I)I

    move-result v0

    .line 297
    .local v0, "n":I
    new-array v1, v0, [I

    .line 298
    .local v1, "nkeys":[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 301
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 305
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 308
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aput p1, v4, v3

    .line 309
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 310
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 268
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 269
    .local v1, "n":I
    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 271
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 272
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 276
    iput-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 277
    return-void
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 74
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->a([III)I

    move-result v0

    .line 76
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 82
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->a([III)I

    move-result v0

    .line 63
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 66
    .end local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 237
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/HCSparseArray;->a([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 257
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    if-ge v0, v1, :cond_2

    .line 258
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 261
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 257
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 198
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 134
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v4, v5, p1}, Landroid/support/v4/app/HCSparseArray;->a([III)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 137
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 178
    :goto_0
    return-void

    .line 139
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 141
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 142
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aput p1, v4, v0

    .line 143
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 147
    :cond_1
    iget-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 148
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 151
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v4, v5, p1}, Landroid/support/v4/app/HCSparseArray;->a([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 154
    :cond_2
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 155
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/app/HCSparseArray;->a(I)I

    move-result v1

    .line 157
    .local v1, "n":I
    new-array v2, v1, [I

    .line 158
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 161
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 165
    iput-object v3, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 168
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 170
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aput p1, v4, v0

    .line 175
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 176
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 88
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    .line 89
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 95
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 99
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 229
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 189
    :cond_0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Landroid/support/v4/app/HCSparseArray;, "Landroid/support/v4/app/HCSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->a()V

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
