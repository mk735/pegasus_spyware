.class public final Lcom/network/e/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/network/android/monitor/a/a;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/network/e/a/a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/network/e/a/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/network/e/a/a;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/network/e/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/network/e/a/a;->c:Landroid/content/Intent;

    return-object v0
.end method
