.class final Lcom/network/android/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/network/android/a/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/network/android/a/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/network/android/a/i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/network/android/a/i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/network/android/a/i;->b:Ljava/lang/String;

    iget v3, p0, Lcom/network/android/a/i;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/network/android/a/c;->a(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method
