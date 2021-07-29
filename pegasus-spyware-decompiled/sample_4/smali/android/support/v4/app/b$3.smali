.class final Landroid/support/v4/app/b$3;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/b;->popBackStack(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/b;


# direct methods
.method constructor <init>(Landroid/support/v4/app/b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Landroid/support/v4/app/b$3;->c:Landroid/support/v4/app/b;

    iput-object p2, p0, Landroid/support/v4/app/b$3;->a:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/b$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v4/app/b$3;->c:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/b$3;->c:Landroid/support/v4/app/b;

    iget-object v1, v1, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/b$3;->a:Ljava/lang/String;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v4/app/b$3;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;II)Z

    .line 446
    return-void
.end method
