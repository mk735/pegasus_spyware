.class final Lcom/network/i/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/network/i/c;


# direct methods
.method constructor <init>(Lcom/network/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/network/i/d;->a:Lcom/network/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/network/i/d;->a:Lcom/network/i/c;

    iget-object v0, v0, Lcom/network/i/c;->a:Lcom/network/i/b;

    invoke-static {v0}, Lcom/network/i/b;->a(Lcom/network/i/b;)V

    return-void
.end method
