.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$a;,
        Landroid/support/v4/app/FragmentActivity$b;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/b;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/v4/app/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0}, Landroid/support/v4/app/b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    .line 113
    return-void
.end method


# virtual methods
.method final a(IZZ)Landroid/support/v4/app/c;
    .locals 2
    .param p1, "index"    # I
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 685
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v1}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    .line 688
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 689
    .local v0, "lm":Landroid/support/v4/app/c;
    if-nez v0, :cond_2

    .line 690
    if-eqz p3, :cond_1

    .line 691
    new-instance v0, Landroid/support/v4/app/c;

    .end local v0    # "lm":Landroid/support/v4/app/c;
    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 692
    .restart local v0    # "lm":Landroid/support/v4/app/c;
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 697
    :cond_1
    :goto_0
    return-object v0

    .line 695
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 545
    :goto_0
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    goto :goto_0
.end method

.method final a(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 659
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 661
    .local v0, "lm":Landroid/support/v4/app/c;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Landroid/support/v4/app/c;->g()V

    .line 664
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->remove(I)V

    .line 666
    .end local v0    # "lm":Landroid/support/v4/app/c;
    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 583
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    if-nez v0, :cond_1

    .line 584
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    .line 585
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    invoke-virtual {v0}, Landroid/support/v4/app/c;->b()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/b;->a(Z)V

    .line 588
    :cond_1
    return-void

    .line 586
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    invoke-virtual {v0}, Landroid/support/v4/app/c;->c()V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 558
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 562
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 571
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLoadersStarted="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 573
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loader Manager "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/v4/app/c;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 676
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    .line 681
    :goto_0
    return-object v0

    .line 679
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    .line 680
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    .line 681
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 131
    shr-int/lit8 v1, p1, 0x10

    .line 132
    .local v1, "index":I
    if-eqz v1, :cond_3

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 134
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iget-object v2, v2, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iget-object v2, v2, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 135
    :cond_0
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity result fragment index out of range: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iget-object v2, v2, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 140
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 141
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v0, v2, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 148
    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 620
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 159
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/b;->a(Landroid/content/res/Configuration;)V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity$b;

    .line 185
    .local v0, "nc":Landroid/support/v4/app/FragmentActivity$b;
    if-eqz v0, :cond_1

    .line 186
    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$b;->d:Landroid/support/v4/app/HCSparseArray;

    iput-object v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    .line 189
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 190
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$b;->c:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/b;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 192
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2}, Landroid/support/v4/app/b;->e()V

    .line 193
    return-void

    .line 190
    .restart local v1    # "p":Landroid/os/Parcelable;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 202
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/b;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 203
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 211
    .end local v0    # "show":Z
    :goto_0
    return v0

    .line 209
    .restart local v0    # "show":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "show":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 219
    const-string v5, "fragment"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 296
    :goto_0
    return-object v5

    .line 223
    :cond_0
    const-string v5, "class"

    invoke-interface {p3, v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "fname":Ljava/lang/String;
    sget-object v5, Landroid/support/v4/app/FragmentActivity$a;->a:[I

    invoke-virtual {p2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    if-nez v1, :cond_1

    .line 226
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_1
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 229
    .local v3, "id":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    if-eq v3, v7, :cond_2

    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v5, v3}, Landroid/support/v4/app/b;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 243
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    .line 244
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/b;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 246
    :cond_3
    if-nez v2, :cond_4

    .line 247
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/b;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 250
    :cond_4
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_5

    const-string v5, "FragmentActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateView: id=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " existing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_5
    if-nez v2, :cond_7

    .line 254
    invoke-static {p0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 255
    iput-boolean v9, v2, Landroid/support/v4/app/Fragment;->w:Z

    .line 256
    if-eqz v3, :cond_6

    move v5, v3

    :goto_1
    iput v5, v2, Landroid/support/v4/app/Fragment;->D:I

    .line 257
    iput v6, v2, Landroid/support/v4/app/Fragment;->E:I

    .line 258
    iput-object v4, v2, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    .line 259
    iput-boolean v9, v2, Landroid/support/v4/app/Fragment;->x:Z

    .line 260
    iput-object p0, v2, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 261
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iput-object v5, v2, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/FragmentManager;

    .line 262
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {v2, p0, p3, v5}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 263
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v5, v2, v9}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 286
    :goto_2
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-nez v5, :cond_a

    .line 287
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not create a view."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    move v5, v6

    .line 256
    goto :goto_1

    .line 265
    :cond_7
    iget-boolean v5, v2, Landroid/support/v4/app/Fragment;->x:Z

    if-eqz v5, :cond_8

    .line 268
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Duplicate id 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", or parent id 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with another fragment for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    :cond_8
    iput-boolean v9, v2, Landroid/support/v4/app/Fragment;->x:Z

    .line 276
    iput-object p0, v2, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 280
    iget-boolean v5, v2, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v5, :cond_9

    .line 281
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {v2, p0, p3, v5}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 283
    :cond_9
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_2

    .line 290
    :cond_a
    if-eqz v3, :cond_b

    .line 291
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    .line 293
    :cond_b
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    .line 294
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    :cond_c
    iget-object v5, v2, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 308
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->k()V

    .line 309
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    invoke-virtual {v0}, Landroid/support/v4/app/c;->g()V

    .line 312
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 325
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 337
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->l()V

    .line 338
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    .line 349
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 357
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/b;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 354
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/b;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 366
    packed-switch p1, :pswitch_data_0

    .line 371
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 372
    return-void

    .line 368
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/b;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 381
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->h()V

    .line 385
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->i()V

    .line 386
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 405
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->h()V

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->a()Z

    .line 408
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 415
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 416
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    if-eqz v2, :cond_0

    .line 417
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->g:Z

    .line 418
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 419
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 421
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 422
    .local v0, "goforit":Z
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/b;->a(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 423
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 425
    .end local v0    # "goforit":Z
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 394
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->d:Z

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->a()Z

    .line 397
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 434
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    if-eqz v6, :cond_0

    .line 435
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    .line 438
    :cond_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v6}, Landroid/support/v4/app/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 439
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v4, 0x0

    .line 440
    .local v4, "retainLoaders":Z
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    if-eqz v6, :cond_2

    .line 443
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 444
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/c;

    .line 445
    .local v2, "lm":Landroid/support/v4/app/c;
    iget-boolean v6, v2, Landroid/support/v4/app/c;->f:Z

    if-eqz v6, :cond_1

    .line 446
    const/4 v4, 0x1

    .line 443
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/c;->g()V

    .line 449
    iget-object v6, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    goto :goto_1

    .line 453
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/support/v4/app/c;
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    move-object v3, v5

    .line 462
    :goto_2
    return-object v3

    .line 457
    :cond_3
    new-instance v3, Landroid/support/v4/app/FragmentActivity$b;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentActivity$b;-><init>()V

    .line 458
    .local v3, "nci":Landroid/support/v4/app/FragmentActivity$b;
    iput-object v5, v3, Landroid/support/v4/app/FragmentActivity$b;->a:Ljava/lang/Object;

    .line 459
    iput-object v5, v3, Landroid/support/v4/app/FragmentActivity$b;->b:Ljava/util/HashMap;

    .line 460
    iput-object v0, v3, Landroid/support/v4/app/FragmentActivity$b;->c:Ljava/util/ArrayList;

    .line 461
    iget-object v5, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    iput-object v5, v3, Landroid/support/v4/app/FragmentActivity$b;->d:Landroid/support/v4/app/HCSparseArray;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 471
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v1}, Landroid/support/v4/app/b;->c()Landroid/os/Parcelable;

    move-result-object v0

    .line 472
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 473
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 475
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 485
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 486
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    if-nez v2, :cond_0

    .line 489
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->c:Z

    .line 490
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2}, Landroid/support/v4/app/b;->f()V

    .line 493
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2}, Landroid/support/v4/app/b;->d()V

    .line 494
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2}, Landroid/support/v4/app/b;->a()Z

    .line 496
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    if-nez v2, :cond_2

    .line 497
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    .line 498
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    if-eqz v2, :cond_3

    .line 499
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    invoke-virtual {v2}, Landroid/support/v4/app/c;->a()V

    .line 503
    :cond_1
    :goto_0
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    .line 507
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v2}, Landroid/support/v4/app/b;->g()V

    .line 508
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    if-eqz v2, :cond_4

    .line 509
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 510
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->j:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 511
    .local v1, "lm":Landroid/support/v4/app/c;
    invoke-virtual {v1}, Landroid/support/v4/app/c;->d()V

    .line 512
    invoke-virtual {v1}, Landroid/support/v4/app/c;->f()V

    .line 509
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 500
    .end local v0    # "i":I
    .end local v1    # "lm":Landroid/support/v4/app/c;
    :cond_3
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->h:Z

    if-nez v2, :cond_1

    .line 501
    const/4 v2, -0x1

    iget-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->i:Z

    invoke-virtual {p0, v2, v3, v5}, Landroid/support/v4/app/FragmentActivity;->a(IZZ)Landroid/support/v4/app/c;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/app/FragmentActivity;->k:Landroid/support/v4/app/c;

    goto :goto_0

    .line 515
    :cond_4
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 522
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 524
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->e:Z

    .line 525
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 527
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    invoke-virtual {v0}, Landroid/support/v4/app/b;->j()V

    .line 528
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 636
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 640
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 647
    if-ne p3, v0, :cond_0

    .line 648
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 655
    :goto_0
    return-void

    .line 651
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->n:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
