.class public Ltms/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltms/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ltms/f;


# direct methods
.method public constructor <init>(Ltms/f;)V
    .locals 0

    iput-object p1, p0, Ltms/f$a;->a:Ltms/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
