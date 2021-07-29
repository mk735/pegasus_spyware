.class final Landroid/support/v4/app/b$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/b;
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
    .line 408
    iput-object p1, p0, Landroid/support/v4/app/b$1;->a:Landroid/support/v4/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/v4/app/b$1;->a:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->a()Z

    .line 412
    return-void
.end method
