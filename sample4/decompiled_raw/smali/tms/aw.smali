.class final Ltms/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ltms/bb$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltms/bb$c;


# direct methods
.method constructor <init>(Ltms/bb$c;)V
    .locals 0

    iput-object p1, p0, Ltms/aw;->a:Ltms/bb$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ltms/bb$d;

    check-cast p2, Ltms/bb$d;

    iget v0, p1, Ltms/bb$d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Ltms/bb$d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
