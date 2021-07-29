.class final Landroid/support/v4/widget/CursorAdapter$b;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter$b;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/CursorAdapter;B)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/widget/CursorAdapter;

    .prologue
    .line 470
    invoke-direct {p0, p1}, Landroid/support/v4/widget/CursorAdapter$b;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$b;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 474
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$b;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 475
    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$b;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 480
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$b;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 481
    return-void
.end method
