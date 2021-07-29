.class public final Lledroid/utils/ColorStringBuilder;
.super Ljava/lang/Object;
.source "ColorStringBuilder.java"


# instance fields
.field private a:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "colorid"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    .local v5, "strText":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 22
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 25
    :cond_2
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    new-array v1, v6, [I

    .line 28
    .local v1, "itempos":[I
    const/4 v3, 0x0

    .line 29
    .local v3, "pos":I
    const-string v4, ""

    .line 30
    .local v4, "strColorString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_3

    .line 31
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    aput v3, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_3
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    .line 36
    const/4 v0, 0x0

    :goto_2
    array-length v6, v1

    div-int/lit8 v6, v6, 0x2

    if-ge v0, v6, :cond_0

    .line 37
    mul-int/lit8 v6, v0, 0x2

    aget v6, v1, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, v1, v7

    invoke-virtual {p0, p2, v6, v7}, Lledroid/utils/ColorStringBuilder;->setColor(III)Lledroid/utils/ColorStringBuilder;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final getString()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final setColor(II)Lledroid/utils/ColorStringBuilder;
    .locals 1
    .param p1, "color"    # I
    .param p2, "start"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lledroid/utils/ColorStringBuilder;->setColor(III)Lledroid/utils/ColorStringBuilder;

    .line 43
    return-object p0
.end method

.method public final setColor(III)Lledroid/utils/ColorStringBuilder;
    .locals 3
    .param p1, "color"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lledroid/utils/ColorStringBuilder;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
