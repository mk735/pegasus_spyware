.class final Landroid/support/v4/app/b$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/b;->popBackStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/b;


# direct methods
.method constructor <init>(Landroid/support/v4/app/b;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Landroid/support/v4/app/b$2;->a:Landroid/support/v4/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v4/app/b$2;->a:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/b$2;->a:Landroid/support/v4/app/b;

    iget-object v1, v1, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;II)Z

    .line 430
    return-void
.end method
