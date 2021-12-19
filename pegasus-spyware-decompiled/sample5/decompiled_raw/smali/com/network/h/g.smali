.class final Lcom/network/h/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/network/h/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/network/h/g;->b:Landroid/content/Context;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/network/h/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/network/h/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/network/h/g;->b:Landroid/content/Context;

    iget v2, p0, Lcom/network/h/g;->c:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/network/h/b;->a(Ljava/lang/String;Landroid/content/Context;IZ)V

    return-void
.end method
