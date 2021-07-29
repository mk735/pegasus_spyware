.class public Lcom/lenovo/safecenter/utils/Untils;
.super Ljava/lang/Object;
.source "Untils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/utils/Untils$a;
    }
.end annotation


# static fields
.field public static final PAUSE:C = ','

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static final a:[Z

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/safecenter/utils/Untils;->a:[Z

    .line 38
    sget-object v0, Lcom/lenovo/safecenter/utils/Untils;->a:[Z

    array-length v0, v0

    sput v0, Lcom/lenovo/safecenter/utils/Untils;->b:I

    return-void

    .line 26
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 313
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 315
    .local v0, "ch":C
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->b(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 316
    add-int/lit8 v3, v1, 0x1

    .line 321
    .end local v0    # "ch":C
    :cond_0
    return v3

    .line 317
    .restart local v0    # "ch":C
    :cond_1
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Lcom/lenovo/safecenter/utils/Untils$a;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v11, 0x36

    const/16 v10, 0x30

    const/4 v8, 0x1

    const/16 v9, 0x31

    const/4 v6, 0x0

    .line 228
    const/4 v5, 0x0

    .line 229
    .local v5, "state":I
    const/4 v0, 0x0

    .line 230
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 231
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 232
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 233
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 307
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    return-object v6

    .line 235
    .restart local v1    # "ch":C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    .line 236
    const/4 v5, 0x1

    .line 231
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_2
    if-ne v1, v10, :cond_3

    .line 238
    const/4 v5, 0x2

    goto :goto_2

    .line 239
    :cond_3
    if-ne v1, v9, :cond_4

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const/16 v5, 0x8

    goto :goto_2

    .line 245
    :cond_4
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 251
    :pswitch_1
    if-ne v1, v10, :cond_5

    .line 252
    const/4 v5, 0x3

    goto :goto_2

    .line 253
    :cond_5
    if-ne v1, v9, :cond_6

    .line 254
    const/4 v5, 0x4

    goto :goto_2

    .line 255
    :cond_6
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 261
    :pswitch_2
    if-ne v1, v9, :cond_7

    .line 262
    const/4 v5, 0x5

    goto :goto_2

    .line 263
    :cond_7
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 273
    :pswitch_3
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->b(C)I

    move-result v4

    .line 274
    .local v4, "ret":I
    if-lez v4, :cond_d

    .line 275
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 276
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    if-lez v0, :cond_9

    sget v7, Lcom/lenovo/safecenter/utils/Untils;->b:I

    if-ge v0, v7, :cond_9

    sget-object v7, Lcom/lenovo/safecenter/utils/Untils;->a:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    if-eqz v7, :cond_a

    .line 277
    :cond_8
    new-instance v6, Lcom/lenovo/safecenter/utils/Untils$a;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Lcom/lenovo/safecenter/utils/Untils$a;-><init>(II)V

    goto :goto_1

    .line 276
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 279
    :cond_a
    if-eq v5, v8, :cond_b

    const/4 v7, 0x3

    if-eq v5, v7, :cond_b

    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    .line 280
    :cond_b
    const/4 v5, 0x6

    goto :goto_2

    .line 282
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 284
    :cond_d
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 290
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v11, :cond_e

    .line 291
    const/16 v5, 0x9

    goto :goto_2

    .line 292
    :cond_e
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 297
    :pswitch_5
    if-ne v1, v11, :cond_0

    .line 298
    new-instance v6, Lcom/lenovo/safecenter/utils/Untils$a;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Lcom/lenovo/safecenter/utils/Untils$a;-><init>(II)V

    goto/16 :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 325
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 463
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 465
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 466
    const/4 v1, 0x1

    .line 462
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const/4 v1, 0x0

    .line 472
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_2
    return v1
.end method

.method private static a(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 333
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Untils;->b(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 334
    if-eqz v0, :cond_0

    .line 349
    :goto_1
    return v1

    .line 340
    :cond_0
    const/4 v0, 0x1

    .line 346
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 349
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static b(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 353
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 354
    add-int/lit8 v0, p0, -0x30

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 483
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 484
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 486
    .local v3, "wIndex":I
    if-ltz v1, :cond_1

    if-ltz v3, :cond_1

    if-ge v1, v3, :cond_0

    .end local v1    # "pIndex":I
    :goto_0
    move v2, v1

    .line 488
    .local v2, "trimIndex":I
    :goto_1
    if-gez v2, :cond_4

    .line 489
    add-int/lit8 v4, v0, -0x1

    .line 491
    :goto_2
    return v4

    .end local v2    # "trimIndex":I
    .restart local v1    # "pIndex":I
    :cond_0
    move v1, v3

    .line 486
    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    move v2, v1

    goto :goto_1

    .line 491
    .end local v1    # "pIndex":I
    .restart local v2    # "trimIndex":I
    :cond_4
    add-int/lit8 v4, v2, -0x1

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 534
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 536
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 563
    :pswitch_0
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 570
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 538
    .restart local v0    # "c":C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 539
    const/4 v2, 0x1

    .line 533
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_2
    if-ne v0, v6, :cond_3

    .line 541
    const/4 v2, 0x2

    goto :goto_2

    .line 542
    :cond_3
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 547
    :pswitch_2
    if-ne v0, v6, :cond_4

    .line 548
    const/4 v2, 0x3

    goto :goto_2

    .line 549
    :cond_4
    if-ne v0, v7, :cond_5

    .line 550
    const/4 v2, 0x4

    goto :goto_2

    .line 551
    :cond_5
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 556
    :pswitch_3
    if-ne v0, v7, :cond_6

    .line 557
    const/4 v2, 0x5

    goto :goto_2

    .line 558
    :cond_6
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 570
    .end local v0    # "c":C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 581
    const/4 v2, 0x0

    .line 582
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 583
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 585
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 629
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 634
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 587
    .restart local v0    # "c":C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 588
    const/4 v2, 0x1

    .line 582
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_2
    if-ne v0, v5, :cond_3

    .line 590
    const/4 v2, 0x2

    goto :goto_2

    .line 591
    :cond_3
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 596
    :pswitch_1
    if-ne v0, v5, :cond_4

    .line 597
    const/4 v2, 0x3

    goto :goto_2

    .line 598
    :cond_4
    if-ne v0, v6, :cond_5

    .line 599
    const/4 v2, 0x4

    goto :goto_2

    .line 600
    :cond_5
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 605
    :pswitch_2
    if-ne v0, v6, :cond_6

    .line 606
    const/4 v2, 0x5

    goto :goto_2

    .line 607
    :cond_6
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 614
    :pswitch_3
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 615
    const/4 v2, 0x6

    goto :goto_2

    .line 616
    :cond_7
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 622
    :pswitch_4
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 624
    :cond_8
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 634
    .end local v0    # "c":C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 47
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/lenovo/safecenter/utils/Untils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/utils/Untils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v7, 0x0

    .line 371
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    .line 373
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 374
    :cond_0
    const/4 v10, 0x0

    .line 454
    :goto_0
    return v10

    .line 377
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 378
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/Untils;->b(Ljava/lang/String;)I

    move-result v4

    .line 382
    .local v4, "ia":I
    invoke-static {p1}, Lcom/lenovo/safecenter/utils/Untils;->b(Ljava/lang/String;)I

    move-result v5

    .line 383
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 385
    .local v6, "matched":I
    :cond_4
    :goto_1
    if-ltz v4, :cond_7

    if-ltz v5, :cond_7

    .line 387
    const/4 v9, 0x0

    .line 389
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 391
    .local v0, "ca":C
    invoke-static {v0}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_5

    .line 392
    add-int/lit8 v4, v4, -0x1

    .line 393
    const/4 v9, 0x1

    .line 394
    add-int/lit8 v7, v7, 0x1

    .line 397
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 399
    .local v1, "cb":C
    invoke-static {v1}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_6

    .line 400
    add-int/lit8 v5, v5, -0x1

    .line 401
    const/4 v9, 0x1

    .line 402
    add-int/lit8 v8, v8, 0x1

    .line 405
    :cond_6
    if-nez v9, :cond_4

    .line 406
    if-eq v1, v0, :cond_8

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_8

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_8

    .line 415
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    :cond_7
    const/4 v10, 0x7

    if-ge v6, v10, :cond_a

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 417
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 422
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_9

    if-ne v2, v6, :cond_9

    .line 423
    const/4 v10, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v9    # "skipCmp":Z
    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 410
    add-int/lit8 v5, v5, -0x1

    .line 411
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_9
    const/4 v10, 0x0

    goto :goto_0

    .line 430
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_a
    const/4 v10, 0x7

    if-lt v6, v10, :cond_c

    if-ltz v4, :cond_b

    if-gez v5, :cond_c

    .line 431
    :cond_b
    const/4 v10, 0x1

    goto :goto_0

    .line 442
    :cond_c
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/lenovo/safecenter/utils/Untils;->b(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/lenovo/safecenter/utils/Untils;->b(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 443
    const/4 v10, 0x1

    goto :goto_0

    .line 446
    :cond_d
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/lenovo/safecenter/utils/Untils;->c(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 447
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 450
    :cond_e
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/lenovo/safecenter/utils/Untils;->c(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 451
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 454
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lenovo/safecenter/utils/Untils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 62
    :cond_0
    const/16 v18, 0x0

    .line 207
    :goto_0
    return v18

    .line 63
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    .line 64
    const/16 v18, 0x0

    goto :goto_0

    .line 67
    :cond_2
    const/4 v10, 0x0

    .line 68
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 70
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;Z)Lcom/lenovo/safecenter/utils/Untils$a;

    move-result-object v6

    .line 72
    .local v6, "cccA":Lcom/lenovo/safecenter/utils/Untils$a;
    invoke-static/range {p1 .. p2}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;Z)Lcom/lenovo/safecenter/utils/Untils$a;

    move-result-object v7

    .line 74
    .local v7, "cccB":Lcom/lenovo/safecenter/utils/Untils$a;
    const/4 v5, 0x0

    .line 75
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 76
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 77
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 78
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 79
    iget v0, v6, Lcom/lenovo/safecenter/utils/Untils$a;->a:I

    move/from16 v18, v0

    iget v0, v7, Lcom/lenovo/safecenter/utils/Untils$a;->a:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 82
    const/16 v18, 0x0

    goto :goto_0

    .line 86
    :cond_3
    const/4 v13, 0x0

    .line 87
    const/4 v5, 0x1

    .line 88
    iget v10, v6, Lcom/lenovo/safecenter/utils/Untils$a;->b:I

    .line 89
    iget v11, v7, Lcom/lenovo/safecenter/utils/Untils$a;->b:I

    .line 116
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 117
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 119
    .local v4, "backwardIndexB":I
    :cond_5
    :goto_2
    if-lt v3, v10, :cond_e

    if-lt v4, v11, :cond_e

    .line 120
    const/4 v14, 0x0

    .line 121
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 122
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 123
    .local v9, "chB":C
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Untils;->a(C)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 124
    add-int/lit8 v3, v3, -0x1

    .line 125
    const/4 v14, 0x1

    .line 127
    :cond_6
    invoke-static {v9}, Lcom/lenovo/safecenter/utils/Untils;->a(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 128
    add-int/lit8 v4, v4, -0x1

    .line 129
    const/4 v14, 0x1

    .line 132
    :cond_7
    if-nez v14, :cond_5

    .line 133
    if-eq v8, v9, :cond_d

    .line 134
    const/16 v18, 0x0

    goto :goto_0

    .line 90
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_8
    if-nez v6, :cond_9

    if-nez v7, :cond_9

    .line 94
    const/4 v13, 0x0

    goto :goto_1

    .line 96
    :cond_9
    if-eqz v6, :cond_b

    .line 97
    iget v10, v6, Lcom/lenovo/safecenter/utils/Untils$a;->b:I

    .line 105
    :cond_a
    :goto_3
    if-eqz v7, :cond_c

    .line 106
    iget v11, v7, Lcom/lenovo/safecenter/utils/Untils$a;->b:I

    goto :goto_1

    .line 99
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;)I

    move-result v15

    .line 100
    .local v15, "tmp":I
    if-ltz v15, :cond_a

    .line 101
    move v10, v15

    .line 102
    const/16 v16, 0x1

    goto :goto_3

    .line 108
    .end local v15    # "tmp":I
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;)I

    move-result v15

    .line 109
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_4

    .line 110
    move v11, v15

    .line 111
    const/16 v17, 0x1

    goto :goto_1

    .line 136
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 137
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 141
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_e
    if-eqz v13, :cond_16

    .line 142
    if-eqz v16, :cond_f

    if-le v10, v3, :cond_10

    :cond_f
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_12

    .line 144
    :cond_10
    if-eqz p2, :cond_11

    .line 158
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 160
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 163
    :cond_12
    if-eqz v17, :cond_13

    if-le v11, v4, :cond_14

    :cond_13
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Lcom/lenovo/safecenter/utils/Untils;->a(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1d

    .line 165
    :cond_14
    if-eqz p2, :cond_15

    .line 166
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/Untils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 168
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 182
    :cond_16
    if-nez v5, :cond_18

    const/4 v12, 0x1

    .line 183
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1a

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 185
    .restart local v8    # "chA":C
    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 186
    if-eqz v12, :cond_19

    invoke-static {v8}, Lcom/lenovo/safecenter/utils/Untils;->b(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 187
    const/4 v12, 0x0

    .line 192
    :cond_17
    add-int/lit8 v3, v3, -0x1

    .line 193
    goto :goto_4

    .line 182
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_18
    const/4 v12, 0x0

    goto :goto_4

    .line 189
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 194
    .end local v8    # "chA":C
    :cond_1a
    :goto_5
    if-lt v4, v11, :cond_1d

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 196
    .restart local v9    # "chB":C
    invoke-static {v9}, Lcom/lenovo/safecenter/utils/Untils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 197
    if-eqz v12, :cond_1c

    invoke-static {v9}, Lcom/lenovo/safecenter/utils/Untils;->b(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 198
    const/4 v12, 0x0

    .line 203
    :cond_1b
    add-int/lit8 v4, v4, -0x1

    .line 204
    goto :goto_5

    .line 200
    :cond_1c
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 207
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_1d
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 508
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 513
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 638
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 524
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneNUmber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 644
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 645
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 646
    .local v0, "bool":Z
    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 519
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jiaMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v6, 0xffff

    .line 650
    const-string v3, ""

    .line 652
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 666
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 654
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_3

    .line 655
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_1

    .line 657
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/2addr v2, v4

    .line 659
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    add-int v0, v4, v5

    .line 660
    .local v0, "ch":I
    if-le v0, v6, :cond_2

    .line 661
    rem-int/2addr v0, v6

    .line 663
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "ch":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    move-object p0, v3

    .line 666
    goto :goto_0
.end method

.method public static jieMi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v6, 0xffff

    .line 672
    const-string v3, ""

    .line 674
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 688
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 676
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 677
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 678
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_1

    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/2addr v2, v4

    .line 681
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 682
    .local v0, "ch":I
    if-le v0, v6, :cond_2

    .line 683
    rem-int/2addr v0, v6

    .line 685
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "ch":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_3
    move-object p0, v3

    .line 688
    goto :goto_0
.end method
