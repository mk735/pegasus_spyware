.class final Lcom/network/h/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/network/h/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/network/h/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/network/h/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/network/h/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/network/h/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
