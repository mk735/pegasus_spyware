.class public Ltms/s;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/Date;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Date;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/util/Date;)J
    .locals 2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Ltms/s;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    return-object p0
.end method

.method public static a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-le v1, p1, :cond_1

    invoke-virtual {v0, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_0
    :goto_0
    invoke-static {v0}, Ltms/s;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-static {v0, p1}, Ltms/s;->c(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/GregorianCalendar;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v0, p0}, Ltms/s;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v0, p0}, Ltms/s;->b(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Ltms/s;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-static {v1}, Ltms/s;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Date;)J
    .locals 3

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Ltms/s;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ge v1, p1, :cond_0

    invoke-static {v0, p1}, Ltms/s;->c(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ltms/s;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, v5, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-static {v0, p1}, Ltms/s;->c(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, v5, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-static {v0, p1}, Ltms/s;->c(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/util/Date;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    cmp-long v0, v6, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static c(Ljava/util/Date;)I
    .locals 2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method private static c(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0
.end method

.method public static d(Ljava/util/Date;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
