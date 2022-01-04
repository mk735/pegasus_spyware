.class final Landroid/support/v4/app/a;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/app/b;

.field b:Landroid/support/v4/app/a$a;

.field c:Landroid/support/v4/app/a$a;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:Z

.field m:I

.field n:I

.field o:Ljava/lang/CharSequence;

.field p:I

.field q:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/b;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/b;

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->j:Z

    .line 265
    iput-object p1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    .line 266
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 323
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment already added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v1, v1, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 327
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/FragmentManager;

    .line 329
    if-eqz p3, :cond_2

    .line 330
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_1
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    .line 338
    :cond_2
    if-eqz p1, :cond_4

    .line 339
    iget v1, p2, Landroid/support/v4/app/Fragment;->D:I

    if-eqz v1, :cond_3

    iget v1, p2, Landroid/support/v4/app/Fragment;->D:I

    if-eq v1, p1, :cond_3

    .line 340
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/support/v4/app/Fragment;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_3
    iput p1, p2, Landroid/support/v4/app/Fragment;->D:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->E:I

    .line 347
    :cond_4
    new-instance v0, Landroid/support/v4/app/a$a;

    invoke-direct {v0}, Landroid/support/v4/app/a$a;-><init>()V

    .line 348
    .local v0, "op":Landroid/support/v4/app/a$a;
    iput p4, v0, Landroid/support/v4/app/a$a;->c:I

    .line 349
    iput-object p2, v0, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 350
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    .line 351
    return-void
.end method

.method private b(Z)I
    .locals 3
    .param p1, "allowStateLoss"    # Z

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/support/v4/app/a;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/b;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->l:Z

    .line 530
    iget-boolean v0, p0, Landroid/support/v4/app/a;->i:Z

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/a;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/a;->m:I

    .line 535
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/b;->a(Ljava/lang/Runnable;Z)V

    .line 536
    iget v0, p0, Landroid/support/v4/app/a;->m:I

    return v0

    .line 533
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/a;->m:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/v4/app/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method final a(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 496
    iget-boolean v3, p0, Landroid/support/v4/app/a;->i:Z

    if-nez v3, :cond_1

    .line 516
    :cond_0
    return-void

    .line 499
    :cond_1
    sget-boolean v3, Landroid/support/v4/app/b;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    .line 502
    .local v1, "op":Landroid/support/v4/app/a$a;
    :goto_0
    if-eqz v1, :cond_0

    .line 503
    iget-object v3, v1, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->z:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->z:I

    .line 504
    sget-boolean v3, Landroid/support/v4/app/b;->a:Z

    if-eqz v3, :cond_3

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->z:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_3
    iget-object v3, v1, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 507
    iget-object v3, v1, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 508
    iget-object v3, v1, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 509
    .local v2, "r":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->z:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->z:I

    .line 510
    sget-boolean v3, Landroid/support/v4/app/b;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/support/v4/app/Fragment;->z:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 514
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/support/v4/app/Fragment;
    :cond_5
    iget-object v1, v1, Landroid/support/v4/app/a$a;->a:Landroid/support/v4/app/a$a;

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/a$a;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/a$a;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    if-nez v0, :cond_0

    .line 296
    iput-object p1, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a$a;

    iput-object p1, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    .line 302
    :goto_0
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    iput v0, p1, Landroid/support/v4/app/a$a;->e:I

    .line 303
    iget v0, p0, Landroid/support/v4/app/a;->f:I

    iput v0, p1, Landroid/support/v4/app/a$a;->f:I

    .line 304
    iget v0, p0, Landroid/support/v4/app/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/a;->d:I

    .line 305
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a$a;

    iput-object v0, p1, Landroid/support/v4/app/a$a;->b:Landroid/support/v4/app/a$a;

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a$a;

    iput-object p1, v0, Landroid/support/v4/app/a$a;->a:Landroid/support/v4/app/a$a;

    .line 300
    iput-object p1, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a$a;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v5, 0x0

    .line 204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/a;->k:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    const-string v3, " mIndex="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/support/v4/app/a;->m:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 206
    const-string v3, " mCommitted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/support/v4/app/a;->l:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 207
    iget v3, p0, Landroid/support/v4/app/a;->g:I

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mTransition=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget v3, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string v3, " mTransitionStyle=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    iget v3, p0, Landroid/support/v4/app/a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget v3, p0, Landroid/support/v4/app/a;->e:I

    if-nez v3, :cond_1

    iget v3, p0, Landroid/support/v4/app/a;->f:I

    if-eqz v3, :cond_2

    .line 214
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget v3, p0, Landroid/support/v4/app/a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string v3, " mExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget v3, p0, Landroid/support/v4/app/a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    :cond_2
    iget v3, p0, Landroid/support/v4/app/a;->n:I

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 220
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget v3, p0, Landroid/support/v4/app/a;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string v3, " mBreadCrumbTitleText="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 225
    :cond_4
    iget v3, p0, Landroid/support/v4/app/a;->p:I

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    .line 226
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget v3, p0, Landroid/support/v4/app/a;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string v3, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 232
    :cond_6
    iget-object v3, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    if-eqz v3, :cond_b

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Operations:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    .line 236
    .local v2, "op":Landroid/support/v4/app/a$a;
    :goto_0
    if-eqz v2, :cond_b

    .line 238
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Op #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "cmd="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/a$a;->c:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 241
    const-string v3, " fragment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 242
    iget v3, v2, Landroid/support/v4/app/a$a;->e:I

    if-nez v3, :cond_7

    iget v3, v2, Landroid/support/v4/app/a$a;->f:I

    if-eqz v3, :cond_8

    .line 243
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/a$a;->e:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const-string v3, " exitAnim="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/support/v4/app/a$a;->f:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 246
    :cond_8
    iget-object v3, v2, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    iget-object v3, v2, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, v2, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 248
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget-object v3, v2, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 250
    const-string v3, "Removed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    :goto_2
    iget-object v3, v2, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_9
    const-string v3, "Removed:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 254
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    .end local v0    # "i":I
    :cond_a
    iget-object v2, v2, Landroid/support/v4/app/a$a;->a:Landroid/support/v4/app/a$a;

    goto/16 :goto_0

    .line 262
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "op":Landroid/support/v4/app/a$a;
    :cond_b
    return-void
.end method

.method public final a(Z)V
    .locals 10
    .param p1, "doStateMove"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 625
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "popFromBackStack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    invoke-virtual {p0, v9}, Landroid/support/v4/app/a;->a(I)V

    .line 629
    iget-object v3, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a$a;

    .line 630
    .local v3, "op":Landroid/support/v4/app/a$a;
    :goto_0
    if-eqz v3, :cond_2

    .line 631
    iget v4, v3, Landroid/support/v4/app/a$a;->c:I

    packed-switch v4, :pswitch_data_0

    .line 679
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/support/v4/app/a$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 633
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 634
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iput-object v8, v0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 635
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v5}, Landroid/support/v4/app/b;->b(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;II)V

    .line 683
    :cond_1
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/a$a;->b:Landroid/support/v4/app/a$a;

    goto :goto_0

    .line 640
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 641
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iput-object v8, v0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 642
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v5}, Landroid/support/v4/app/b;->b(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;II)V

    .line 645
    iget-object v4, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 646
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 647
    iget-object v4, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 648
    .local v2, "old":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v4, v4, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 649
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v4, v2, v7}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 654
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 655
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v4, v4, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 656
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 659
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 660
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v5}, Landroid/support/v4/app/b;->b(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 664
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 665
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v5}, Landroid/support/v4/app/b;->b(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 669
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 670
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v5}, Landroid/support/v4/app/b;->b(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 674
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 675
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v5}, Landroid/support/v4/app/b;->b(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 686
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    if-eqz p1, :cond_3

    .line 687
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v5, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, v5, Landroid/support/v4/app/b;->n:I

    iget v6, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v6}, Landroid/support/v4/app/b;->b(I)I

    move-result v6

    iget v7, p0, Landroid/support/v4/app/a;->h:I

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/b;->a(IIIZ)V

    .line 691
    :cond_3
    iget v4, p0, Landroid/support/v4/app/a;->m:I

    if-ltz v4, :cond_4

    .line 692
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->m:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/b;->a(I)V

    .line 693
    iput v9, p0, Landroid/support/v4/app/a;->m:I

    .line 695
    :cond_4
    return-void

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 314
    return-object p0
.end method

.method public final add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 319
    return-object p0
.end method

.method public final add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 309
    return-object p0
.end method

.method public final addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/support/v4/app/a;->j:Z

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->i:Z

    .line 454
    iput-object p1, p0, Landroid/support/v4/app/a;->k:Ljava/lang/String;

    .line 455
    return-object p0
.end method

.method public final attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 424
    new-instance v0, Landroid/support/v4/app/a$a;

    invoke-direct {v0}, Landroid/support/v4/app/a$a;-><init>()V

    .line 425
    .local v0, "op":Landroid/support/v4/app/a$a;
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/a$a;->c:I

    .line 426
    iput-object p1, v0, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 427
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    .line 429
    return-object p0
.end method

.method public final commit()I
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->b(Z)I

    move-result v0

    return v0
.end method

.method public final commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->b(Z)I

    move-result v0

    return v0
.end method

.method public final detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 411
    new-instance v0, Landroid/support/v4/app/a$a;

    invoke-direct {v0}, Landroid/support/v4/app/a$a;-><init>()V

    .line 412
    .local v0, "op":Landroid/support/v4/app/a$a;
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/a$a;->c:I

    .line 413
    iput-object p1, v0, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 414
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    .line 416
    return-object p0
.end method

.method public final disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/support/v4/app/a;->i:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/a;->j:Z

    .line 468
    return-object p0
.end method

.method public final getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Landroid/support/v4/app/a;->p:I

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v0, v0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/a;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/support/v4/app/a;->p:I

    return v0
.end method

.method public final getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Landroid/support/v4/app/a;->n:I

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v0, v0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/a;->n:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/support/v4/app/a;->n:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Landroid/support/v4/app/a;->m:I

    return v0
.end method

.method public final hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 381
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    new-instance v0, Landroid/support/v4/app/a$a;

    invoke-direct {v0}, Landroid/support/v4/app/a$a;-><init>()V

    .line 386
    .local v0, "op":Landroid/support/v4/app/a$a;
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/a$a;->c:I

    .line 387
    iput-object p1, v0, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 388
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    .line 390
    return-object p0
.end method

.method public final isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/support/v4/app/a;->j:Z

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/support/v4/app/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 367
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_0

    .line 368
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 372
    new-instance v0, Landroid/support/v4/app/a$a;

    invoke-direct {v0}, Landroid/support/v4/app/a$a;-><init>()V

    .line 373
    .local v0, "op":Landroid/support/v4/app/a$a;
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/a$a;->c:I

    .line 374
    iput-object p1, v0, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 375
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    .line 377
    return-object p0
.end method

.method public final replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/a;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 363
    return-object p0
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 540
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    iget-boolean v4, p0, Landroid/support/v4/app/a;->i:Z

    if-eqz v4, :cond_1

    .line 543
    iget v4, p0, Landroid/support/v4/app/a;->m:I

    if-gez v4, :cond_1

    .line 544
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addToBackStack() called after commit()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 548
    :cond_1
    invoke-virtual {p0, v8}, Landroid/support/v4/app/a;->a(I)V

    .line 550
    iget-object v3, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/a$a;

    .line 551
    .local v3, "op":Landroid/support/v4/app/a$a;
    :goto_0
    if-eqz v3, :cond_7

    .line 552
    iget v4, v3, Landroid/support/v4/app/a$a;->c:I

    packed-switch v4, :pswitch_data_0

    .line 609
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/support/v4/app/a$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 554
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 555
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/a$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 556
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 613
    :goto_1
    iget-object v3, v3, Landroid/support/v4/app/a$a;->a:Landroid/support/v4/app/a$a;

    goto :goto_0

    .line 559
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 560
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v4, v4, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v4, v4, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 562
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v4, v4, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 563
    .local v2, "old":Landroid/support/v4/app/Fragment;
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OP_REPLACE: adding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_2
    iget v4, v2, Landroid/support/v4/app/Fragment;->E:I

    iget v5, v0, Landroid/support/v4/app/Fragment;->E:I

    if-ne v4, v5, :cond_5

    .line 566
    iget-object v4, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 567
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    .line 569
    :cond_3
    iget-object v4, v3, Landroid/support/v4/app/a$a;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget v4, v3, Landroid/support/v4/app/a$a;->f:I

    iput v4, v2, Landroid/support/v4/app/Fragment;->M:I

    .line 571
    iget-boolean v4, p0, Landroid/support/v4/app/a;->i:Z

    if-eqz v4, :cond_4

    .line 572
    iget v4, v2, Landroid/support/v4/app/Fragment;->z:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/support/v4/app/Fragment;->z:I

    .line 573
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_4

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/support/v4/app/Fragment;->z:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v2, v5, v6}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;II)V

    .line 561
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 580
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/support/v4/app/Fragment;
    :cond_6
    iget v4, v3, Landroid/support/v4/app/a$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 581
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_1

    .line 584
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 585
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/a$a;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 586
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 589
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 590
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/a$a;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 591
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 594
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 595
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/a$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 596
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 599
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 600
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/a$a;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 601
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 604
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 605
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/a$a;->e:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->M:I

    .line 606
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, p0, Landroid/support/v4/app/a;->g:I

    iget v6, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/b;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 616
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_7
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v5, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget v5, v5, Landroid/support/v4/app/b;->n:I

    iget v6, p0, Landroid/support/v4/app/a;->g:I

    iget v7, p0, Landroid/support/v4/app/a;->h:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/b;->a(IIIZ)V

    .line 619
    iget-boolean v4, p0, Landroid/support/v4/app/a;->i:Z

    if-eqz v4, :cond_8

    .line 620
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    invoke-virtual {v4, p0}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/a;)V

    .line 622
    :cond_8
    return-void

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 484
    iput p1, p0, Landroid/support/v4/app/a;->p:I

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    .line 486
    return-object p0
.end method

.method public final setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 490
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/a;->p:I

    .line 491
    iput-object p1, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    .line 492
    return-object p0
.end method

.method public final setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 472
    iput p1, p0, Landroid/support/v4/app/a;->n:I

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    .line 474
    return-object p0
.end method

.method public final setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 478
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/a;->n:I

    .line 479
    iput-object p1, p0, Landroid/support/v4/app/a;->o:Ljava/lang/CharSequence;

    .line 480
    return-object p0
.end method

.method public final setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    .line 433
    iput p1, p0, Landroid/support/v4/app/a;->e:I

    .line 434
    iput p2, p0, Landroid/support/v4/app/a;->f:I

    .line 435
    return-object p0
.end method

.method public final setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 439
    iput p1, p0, Landroid/support/v4/app/a;->g:I

    .line 440
    return-object p0
.end method

.method public final setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .prologue
    .line 444
    iput p1, p0, Landroid/support/v4/app/a;->h:I

    .line 445
    return-object p0
.end method

.method public final show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 394
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_0

    .line 395
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :cond_0
    new-instance v0, Landroid/support/v4/app/a$a;

    invoke-direct {v0}, Landroid/support/v4/app/a$a;-><init>()V

    .line 399
    .local v0, "op":Landroid/support/v4/app/a$a;
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/a$a;->c:I

    .line 400
    iput-object p1, v0, Landroid/support/v4/app/a$a;->d:Landroid/support/v4/app/Fragment;

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/a$a;)V

    .line 403
    return-object p0
.end method
