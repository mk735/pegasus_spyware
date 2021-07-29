.class final Landroid/support/v4/app/b$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/b;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/b;


# direct methods
.method constructor <init>(Landroid/support/v4/app/b;II)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Landroid/support/v4/app/b$4;->c:Landroid/support/v4/app/b;

    iput p2, p0, Landroid/support/v4/app/b$4;->a:I

    iput p3, p0, Landroid/support/v4/app/b$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v4/app/b$4;->c:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/b$4;->c:Landroid/support/v4/app/b;

    iget-object v1, v1, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/b$4;->a:I

    iget v3, p0, Landroid/support/v4/app/b$4;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/b;->a(Ljava/lang/String;II)Z

    .line 465
    return-void
.end method
