.class public final Ltms/ag;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x9

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-char v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x2fs
        0x23s
        0x2cs
        0x3bs
        0x2es
        0x28s
        0x29s
        0x4es
        0x2as
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_5

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p0}, Ltms/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ltms/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0
.end method

.method public static a(I)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const-string v1, "12593"

    aput-object v1, v0, v2

    const-string v1, "17951"

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "12593"

    aput-object v1, v0, v2

    const-string v1, "17951"

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_1
    const-string v1, "10193"

    aput-object v1, v0, v2

    const-string v1, "17911"

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_2
    const-string v1, "17909"

    aput-object v1, v0, v2

    const-string v1, "17901"

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)I
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "+86"

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v2, "12593"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const-string v2, "17909"

    aput-object v2, v3, v0

    const/4 v0, 0x3

    const-string v2, "17951"

    aput-object v2, v3, v0

    const/4 v0, 0x4

    const-string v2, "17911"

    aput-object v2, v3, v0

    const/4 v0, 0x5

    const-string v2, "10193"

    aput-object v2, v3, v0

    const/4 v0, 0x6

    const-string v2, "12583"

    aput-object v2, v3, v0

    const/4 v0, 0x7

    const-string v2, "12520"

    aput-object v2, v3, v0

    const-string v0, "96688"

    aput-object v0, v3, v5

    const-string v0, "[ -]"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "[ -]"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "+86"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-string v4, "0086"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "12593"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "17901"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "17909"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "17951"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "17911"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "17910"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "10193"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "12583"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "12520"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "96688"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
