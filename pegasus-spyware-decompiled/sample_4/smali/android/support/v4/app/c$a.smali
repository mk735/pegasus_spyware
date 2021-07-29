.class final Landroid/support/v4/app/c$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/c$a;

.field final synthetic o:Landroid/support/v4/app/c;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/c;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p4, "callbacks":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p2, p0, Landroid/support/v4/app/c$a;->a:I

    .line 221
    iput-object p3, p0, Landroid/support/v4/app/c$a;->b:Landroid/os/Bundle;

    .line 222
    iput-object p4, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 223
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->j:Z

    if-eqz v0, :cond_1

    .line 230
    iput-boolean v3, p0, Landroid/support/v4/app/c$a;->h:Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    if-nez v0, :cond_0

    .line 239
    iput-boolean v3, p0, Landroid/support/v4/app/c$a;->h:Z

    .line 241
    sget-boolean v0, Landroid/support/v4/app/c;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroid/support/v4/app/c$a;->a:I

    iget-object v2, p0, Landroid/support/v4/app/c$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    .line 245
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->m:Z

    if-nez v0, :cond_5

    .line 253
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 254
    iput-boolean v3, p0, Landroid/support/v4/app/c$a;->m:Z

    .line 256
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto/16 :goto_0
.end method

.method final a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v1, :cond_3

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iget-object v0, v1, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    .line 412
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/c;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v1, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iput-object v0, v1, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    .line 420
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/c$a;->f:Z

    .line 422
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    return-void

    .line 416
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_4

    .line 417
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iput-object v0, v2, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    :cond_4
    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 438
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 439
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 445
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->f:Z

    if-eqz v0, :cond_2

    .line 446
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 447
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 451
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 452
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 453
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 454
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 455
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 456
    iget-object v0, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    iget-object p0, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    .end local p0    # "this":Landroid/support/v4/app/c$a;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .restart local p0    # "this":Landroid/support/v4/app/c$a;
    goto/16 :goto_0

    .line 461
    :cond_3
    return-void
.end method

.method final b()V
    .locals 3

    .prologue
    .line 261
    sget-boolean v0, Landroid/support/v4/app/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c$a;->i:Z

    .line 263
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/c$a;->j:Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 266
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->i:Z

    if-eqz v0, :cond_1

    .line 270
    sget-boolean v0, Landroid/support/v4/app/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c$a;->i:Z

    .line 272
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/c$a;->j:Z

    if-eq v0, v1, :cond_1

    .line 273
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/app/c$a;->e()V

    .line 282
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->k:Z

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/c$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c$a;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 291
    :cond_2
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->h:Z

    if-eqz v0, :cond_0

    .line 295
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->k:Z

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c$a;->k:Z

    .line 297
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->e:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/c$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c$a;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 302
    :cond_0
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    sget-boolean v0, Landroid/support/v4/app/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/c$a;->h:Z

    .line 307
    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->i:Z

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/c$a;->m:Z

    if-eqz v0, :cond_1

    .line 310
    iput-boolean v3, p0, Landroid/support/v4/app/c$a;->m:Z

    .line 311
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 312
    iget-object v0, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    .line 315
    :cond_1
    return-void
.end method

.method final f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 318
    :goto_0
    sget-boolean v2, Landroid/support/v4/app/c;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Destroying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/c$a;->l:Z

    .line 320
    iget-boolean v1, p0, Landroid/support/v4/app/c$a;->f:Z

    .line 321
    .local v1, "needReset":Z
    iput-boolean v5, p0, Landroid/support/v4/app/c$a;->f:Z

    .line 322
    iget-object v2, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/support/v4/app/c$a;->e:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 323
    sget-boolean v2, Landroid/support/v4/app/c;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Reseting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    const/4 v0, 0x0

    .line 325
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iget-object v0, v2, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    .line 327
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    const-string v3, "onLoaderReset"

    iput-object v3, v2, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    .line 330
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-interface {v2, v3}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_3

    .line 333
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iput-object v0, v2, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    .line 337
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Landroid/support/v4/app/c$a;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 338
    iput-object v6, p0, Landroid/support/v4/app/c$a;->g:Ljava/lang/Object;

    .line 339
    iput-boolean v5, p0, Landroid/support/v4/app/c$a;->e:Z

    .line 340
    iget-object v2, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_5

    .line 341
    iget-boolean v2, p0, Landroid/support/v4/app/c$a;->m:Z

    if-eqz v2, :cond_4

    .line 342
    iput-boolean v5, p0, Landroid/support/v4/app/c$a;->m:Z

    .line 343
    iget-object v2, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v2, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 345
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->reset()V

    .line 347
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    if-eqz v2, :cond_7

    .line 348
    iget-object p0, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    goto/16 :goto_0

    .line 332
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v3, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_6

    .line 333
    iget-object v3, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v3, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iput-object v0, v3, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    :cond_6
    throw v2

    .line 350
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public final onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 353
    sget-boolean v2, Landroid/support/v4/app/c;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/app/c$a;->l:Z

    if-eqz v2, :cond_2

    .line 356
    sget-boolean v2, Landroid/support/v4/app/c;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 363
    sget-boolean v2, Landroid/support/v4/app/c;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- not active"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    .line 368
    .local v1, "pending":Landroid/support/v4/app/c$a;
    if-eqz v1, :cond_5

    .line 372
    sget-boolean v2, Landroid/support/v4/app/c;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Switching to pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_4
    iput-object v5, p0, Landroid/support/v4/app/c$a;->n:Landroid/support/v4/app/c$a;

    .line 374
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 375
    invoke-virtual {p0}, Landroid/support/v4/app/c$a;->f()V

    .line 376
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    goto :goto_0

    .line 382
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/c$a;->g:Ljava/lang/Object;

    if-ne v2, p2, :cond_6

    iget-boolean v2, p0, Landroid/support/v4/app/c$a;->e:Z

    if-nez v2, :cond_7

    .line 383
    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/c$a;->g:Ljava/lang/Object;

    .line 384
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/c$a;->e:Z

    .line 385
    iget-boolean v2, p0, Landroid/support/v4/app/c$a;->h:Z

    if-eqz v2, :cond_7

    .line 386
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/c$a;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 396
    :cond_7
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->c:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 397
    .local v0, "info":Landroid/support/v4/app/c$a;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 398
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/c$a;->f:Z

    .line 399
    invoke-virtual {v0}, Landroid/support/v4/app/c$a;->f()V

    .line 400
    iget-object v2, p0, Landroid/support/v4/app/c$a;->o:Landroid/support/v4/app/c;

    iget-object v2, v2, Landroid/support/v4/app/c;->c:Landroid/support/v4/app/HCSparseArray;

    iget v3, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/HCSparseArray;->remove(I)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget v1, p0, Landroid/support/v4/app/c$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v1, p0, Landroid/support/v4/app/c$a;->d:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 433
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
