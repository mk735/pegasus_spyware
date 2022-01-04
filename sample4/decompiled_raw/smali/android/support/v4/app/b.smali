.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static a:Z

.field static final b:Z

.field static final w:Landroid/view/animation/Interpolator;

.field static final x:Landroid/view/animation/Interpolator;

.field static final y:Landroid/view/animation/Interpolator;

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/a;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/app/FragmentActivity;

.field p:Z

.field q:Z

.field r:Z

.field s:Ljava/lang/String;

.field t:Landroid/os/Bundle;

.field u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 371
    sput-boolean v0, Landroid/support/v4/app/b;->a:Z

    .line 374
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/b;->b:Z

    .line 663
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/b;->w:Landroid/view/animation/Interpolator;

    .line 664
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/b;->x:Landroid/view/animation/Interpolator;

    .line 665
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/b;->y:Landroid/view/animation/Interpolator;

    .line 666
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/b;->z:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/b;->n:I

    .line 405
    iput-object v1, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    .line 406
    iput-object v1, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    .line 408
    new-instance v0, Landroid/support/v4/app/b$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b$1;-><init>(Landroid/support/v4/app/b;)V

    iput-object v0, p0, Landroid/support/v4/app/b;->v:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "start"    # F
    .param p1, "end"    # F

    .prologue
    .line 686
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 687
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/b;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 688
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 689
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "startScale"    # F
    .param p1, "endScale"    # F
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .prologue
    .line 672
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 673
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 675
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v4/app/b;->w:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 676
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 677
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 678
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 679
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/b;->x:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 680
    const-wide/16 v1, 0xdc

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 681
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 682
    return-object v10
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const v8, 0x3f79999a    # 0.975f

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 694
    iget v3, p1, Landroid/support/v4/app/Fragment;->M:I

    invoke-virtual {p1, p2, p3, v3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 696
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 748
    .end local v1    # "animObj":Landroid/view/animation/Animation;
    :goto_0
    return-object v1

    .line 700
    .restart local v1    # "animObj":Landroid/view/animation/Animation;
    :cond_0
    iget v3, p1, Landroid/support/v4/app/Fragment;->M:I

    if-eqz v3, :cond_1

    .line 701
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget v5, p1, Landroid/support/v4/app/Fragment;->M:I

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 702
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 703
    goto :goto_0

    .line 707
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v4

    .line 708
    goto :goto_0

    .line 711
    :cond_2
    const/4 v3, -0x1

    sparse-switch p2, :sswitch_data_0

    move v2, v3

    .line 712
    .local v2, "styleIndex":I
    :goto_1
    if-gez v2, :cond_6

    move-object v1, v4

    .line 713
    goto :goto_0

    .line 711
    .end local v2    # "styleIndex":I
    :sswitch_0
    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_1
    if-eqz p3, :cond_4

    const/4 v3, 0x3

    :goto_3
    move v2, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    goto :goto_3

    :sswitch_2
    if-eqz p3, :cond_5

    const/4 v3, 0x5

    :goto_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x6

    goto :goto_4

    .line 716
    .restart local v2    # "styleIndex":I
    :cond_6
    packed-switch v2, :pswitch_data_0

    .line 731
    if-nez p4, :cond_7

    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 732
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget p4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 734
    :cond_7
    if-nez p4, :cond_8

    move-object v1, v4

    .line 735
    goto :goto_0

    .line 718
    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    const/high16 v3, 0x3f900000    # 1.125f

    invoke-static {v3, v6, v7, v6}, Landroid/support/v4/app/b;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 720
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v6, v8, v6, v7}, Landroid/support/v4/app/b;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 722
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v8, v6, v7, v6}, Landroid/support/v4/app/b;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 724
    :pswitch_3
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x3f89999a    # 1.075f

    invoke-static {v6, v3, v6, v7}, Landroid/support/v4/app/b;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 726
    :pswitch_4
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v7, v6}, Landroid/support/v4/app/b;->a(FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 728
    :pswitch_5
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v6, v7}, Landroid/support/v4/app/b;->a(FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    :cond_8
    move-object v1, v4

    .line 748
    goto :goto_0

    .line 711
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/a;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v4/app/a;

    .prologue
    .line 1291
    monitor-enter p0

    .line 1292
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    .line 1295
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1296
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 1297
    sget-boolean v1, Landroid/support/v4/app/b;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :goto_0
    monitor-exit p0

    .line 1313
    return-void

    .line 1300
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1301
    iget-object v1, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v1, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    .line 1305
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/b;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1309
    :cond_5
    sget-boolean v1, Landroid/support/v4/app/b;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1312
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static b(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 1884
    const/4 v0, 0x0

    .line 1885
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 1896
    :goto_0
    return v0

    .line 1887
    :sswitch_0
    const/16 v0, 0x2002

    .line 1888
    goto :goto_0

    .line 1890
    :sswitch_1
    const/16 v0, 0x1001

    .line 1891
    goto :goto_0

    .line 1893
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1885
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1464
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1468
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    .line 1472
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1473
    iget-object v0, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1474
    iget-object v0, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    goto :goto_0

    .line 1470
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/b;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private c(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1480
    const/4 v0, 0x0

    .line 1482
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1483
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    .line 1485
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1486
    iget-object v1, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1487
    iget-object v0, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    .line 1488
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/b;->t:Landroid/os/Bundle;

    .line 1491
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1492
    invoke-direct {p0, p1}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/Fragment;)V

    .line 1494
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1495
    if-nez v0, :cond_3

    .line 1496
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1498
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1502
    :cond_4
    return-object v0
.end method

.method private c(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/b;->a(IIIZ)V

    .line 1025
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1241
    iget-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    if-eqz v0, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_1
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1367
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1369
    iget-object v1, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/a;)I
    .locals 5
    .param p1, "bse"    # Landroid/support/v4/app/a;

    .prologue
    .line 1271
    monitor-enter p0

    .line 1272
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1273
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    .line 1276
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1277
    .local v0, "index":I
    sget-boolean v2, Landroid/support/v4/app/b;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    monitor-exit p0

    move v1, v0

    .line 1285
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1282
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1283
    .restart local v0    # "index":I
    sget-boolean v2, Landroid/support/v4/app/b;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1285
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1287
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final a(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1316
    monitor-enter p0

    .line 1317
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iget-object v0, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    .line 1321
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/b;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    return-void

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(IIIZ)V
    .locals 4
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    .line 1028
    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1029
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :cond_0
    if-nez p4, :cond_2

    iget v2, p0, Landroid/support/v4/app/b;->n:I

    if-ne v2, p1, :cond_2

    .line 1050
    :cond_1
    :goto_0
    return-void

    .line 1036
    :cond_2
    iput p1, p0, Landroid/support/v4/app/b;->n:I

    .line 1037
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1038
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1039
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1040
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    .line 1041
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1038
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1045
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    iget-boolean v2, p0, Landroid/support/v4/app/b;->p:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_1

    .line 1046
    iget-object v2, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->a()V

    .line 1047
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/app/b;->p:Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1778
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1779
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1780
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1781
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 1782
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1779
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1786
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1615
    if-nez p1, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 1616
    check-cast v2, Landroid/support/v4/app/FragmentManagerState;

    .line 1617
    .local v2, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v5, :cond_0

    .line 1621
    if-eqz p2, :cond_4

    .line 1622
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1623
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1624
    .local v1, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_2
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v6, v1, Landroid/support/v4/app/Fragment;->n:I

    aget-object v3, v5, v6

    .line 1626
    .local v3, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v1, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1627
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    .line 1628
    iput v9, v1, Landroid/support/v4/app/Fragment;->z:I

    .line 1629
    iput-boolean v9, v1, Landroid/support/v4/app/Fragment;->x:Z

    .line 1630
    iput-boolean v9, v1, Landroid/support/v4/app/Fragment;->t:Z

    .line 1631
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    .line 1632
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1633
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1634
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v6, "android:view_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    .line 1622
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1642
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v4    # "i":I
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    .line 1643
    iget-object v5, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 1644
    iget-object v5, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1646
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 1647
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v3, v5, v4

    .line 1648
    .restart local v3    # "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v3, :cond_7

    .line 1649
    iget-object v5, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1650
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_6

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_6
    iget-object v5, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    iput-object v8, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1646
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1657
    :cond_7
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_8

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_8
    iget-object v5, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    iget-object v5, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 1660
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    .line 1662
    :cond_9
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_a

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding avail #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_a
    iget-object v5, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1668
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_b
    if-eqz p2, :cond_e

    .line 1669
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 1670
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1671
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    iget v5, v1, Landroid/support/v4/app/Fragment;->r:I

    if-ltz v5, :cond_c

    .line 1672
    iget v5, v1, Landroid/support/v4/app/Fragment;->r:I

    iget-object v6, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 1673
    iget-object v5, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    iget v6, v1, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iput-object v5, v1, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    .line 1669
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1675
    :cond_d
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1684
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_e
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v5, :cond_11

    .line 1685
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    .line 1686
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1687
    iget-object v5, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1688
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_f

    .line 1689
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No instantiated fragment for index #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1692
    :cond_f
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/support/v4/app/Fragment;->t:Z

    .line 1693
    iget-object v5, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v5, v1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 1694
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_10

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: making added #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_10
    iget-object v5, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1698
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_11
    iput-object v8, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    .line 1702
    :cond_12
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v5, :cond_15

    .line 1703
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    .line 1704
    const/4 v4, 0x0

    :goto_7
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1705
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/b;)Landroid/support/v4/app/a;

    move-result-object v0

    .line 1706
    .local v0, "bse":Landroid/support/v4/app/a;
    sget-boolean v5, Landroid/support/v4/app/b;->a:Z

    if-eqz v5, :cond_13

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding bse #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/a;->m:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_13
    iget-object v5, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    iget v5, v0, Landroid/support/v4/app/a;->m:I

    if-ltz v5, :cond_14

    .line 1710
    iget v5, v0, Landroid/support/v4/app/a;->m:I

    invoke-direct {p0, v5, v0}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/a;)V

    .line 1704
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1714
    .end local v0    # "bse":Landroid/support/v4/app/a;
    :cond_15
    iput-object v8, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method final a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 1020
    iget v0, p0, Landroid/support/v4/app/b;->n:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1021
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1105
    sget-boolean v3, Landroid/support/v4/app/b;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nesting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/support/v4/app/Fragment;->z:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 1107
    .local v0, "inactive":Z
    :goto_0
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 1108
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1109
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v3, :cond_2

    .line 1110
    iput-boolean v1, p0, Landroid/support/v4/app/b;->p:Z

    .line 1112
    :cond_2
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->t:Z

    .line 1113
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->u:Z

    .line 1114
    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1117
    :cond_3
    return-void

    .end local v0    # "inactive":Z
    :cond_4
    move v0, v2

    .line 1106
    goto :goto_0

    .restart local v0    # "inactive":Z
    :cond_5
    move v2, v1

    .line 1114
    goto :goto_1
.end method

.method final a(Landroid/support/v4/app/Fragment;III)V
    .locals 7
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I

    .prologue
    .line 753
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->t:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    if-le p2, v4, :cond_0

    .line 754
    const/4 p2, 0x1

    .line 756
    :cond_0
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->u:Z

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/support/v4/app/Fragment;->i:I

    if-le p2, v4, :cond_1

    .line 758
    iget p2, p1, Landroid/support/v4/app/Fragment;->i:I

    .line 761
    :cond_1
    iget v4, p1, Landroid/support/v4/app/Fragment;->i:I

    if-ge v4, p2, :cond_19

    .line 765
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->x:Z

    if-nez v4, :cond_2

    .line 1017
    :goto_0
    return-void

    .line 768
    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 773
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    .line 774
    iget v4, p1, Landroid/support/v4/app/Fragment;->k:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 776
    :cond_3
    iget v4, p1, Landroid/support/v4/app/Fragment;->i:I

    packed-switch v4, :pswitch_data_0

    .line 1016
    :cond_4
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->i:I

    goto :goto_0

    .line 778
    :pswitch_0
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_5
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 780
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    .line 782
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/b;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    .line 784
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_6

    .line 785
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p1, Landroid/support/v4/app/Fragment;->s:I

    .line 789
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    .line 790
    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/b;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/FragmentManager;

    .line 791
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 792
    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 793
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_7

    .line 794
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 797
    :cond_7
    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 799
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v4, :cond_8

    .line 800
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 801
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 802
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_8

    .line 803
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 807
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->J:Z

    .line 808
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v4, :cond_a

    .line 812
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5, v6}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    .line 814
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 815
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 816
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    .line 817
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_9
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 824
    :cond_a
    :goto_2
    :pswitch_1
    const/4 v4, 0x1

    if-le p2, v4, :cond_15

    .line 825
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_b

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_b
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-nez v4, :cond_11

    .line 827
    const/4 v1, 0x0

    .line 828
    .local v1, "container":Landroid/view/ViewGroup;
    iget v4, p1, Landroid/support/v4/app/Fragment;->E:I

    if-eqz v4, :cond_d

    .line 829
    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget v5, p1, Landroid/support/v4/app/Fragment;->E:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 830
    .restart local v1    # "container":Landroid/view/ViewGroup;
    if-nez v1, :cond_d

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-nez v4, :cond_d

    .line 831
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No view found for id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/support/v4/app/Fragment;->E:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 820
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_c
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    goto :goto_2

    .line 836
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_d
    iput-object v1, p1, Landroid/support/v4/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 837
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v1, v5}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    .line 839
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v4, :cond_12

    .line 840
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    .line 841
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    .line 842
    if-eqz v1, :cond_f

    .line 843
    const/4 v4, 0x1

    invoke-direct {p0, p1, p3, v4, p4}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 845
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_e

    .line 846
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 848
    :cond_e
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 850
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_f
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v4, :cond_10

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_10
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 857
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_11
    :goto_3
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 858
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 859
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_13

    .line 860
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onActivityCreated()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 853
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_12
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    goto :goto_3

    .line 863
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_13
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v4, :cond_14

    .line 864
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->a()V

    .line 866
    :cond_14
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    .line 870
    :cond_15
    :pswitch_2
    const/4 v4, 0x3

    if-le p2, v4, :cond_17

    .line 871
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_16

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_16
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 873
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->d()V

    .line 874
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_17

    .line 875
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 880
    :cond_17
    :pswitch_3
    const/4 v4, 0x4

    if-le p2, v4, :cond_4

    .line 881
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_18

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_18
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 883
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 884
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 885
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_4

    .line 886
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onResume()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 891
    :cond_19
    iget v4, p1, Landroid/support/v4/app/Fragment;->i:I

    if-le v4, p2, :cond_4

    .line 892
    iget v4, p1, Landroid/support/v4/app/Fragment;->i:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 966
    :cond_1a
    :goto_4
    :pswitch_4
    const/4 v4, 0x1

    if-ge p2, v4, :cond_4

    .line 967
    iget-boolean v4, p0, Landroid/support/v4/app/b;->r:Z

    if-eqz v4, :cond_1b

    .line 968
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    if-eqz v4, :cond_1b

    .line 975
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    .line 976
    .local v3, "v":Landroid/view/View;
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    .line 977
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 980
    .end local v3    # "v":Landroid/view/View;
    :cond_1b
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    if-eqz v4, :cond_27

    .line 985
    iput p2, p1, Landroid/support/v4/app/Fragment;->k:I

    .line 986
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 894
    :pswitch_5
    const/4 v4, 0x5

    if-ge p2, v4, :cond_1e

    .line 895
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_1c

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_1c
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 897
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 898
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_1d

    .line 899
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    :cond_1d
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 905
    :cond_1e
    :pswitch_6
    const/4 v4, 0x4

    if-ge p2, v4, :cond_20

    .line 906
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_1f

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_1f
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 908
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->e()V

    .line 909
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_20

    .line 910
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStop()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 916
    :cond_20
    :pswitch_7
    const/4 v4, 0x2

    if-ge p2, v4, :cond_1a

    .line 917
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_21

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_21
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v4, :cond_22

    .line 921
    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->m:Landroid/util/SparseArray;

    if-nez v4, :cond_22

    .line 922
    invoke-direct {p0, p1}, Landroid/support/v4/app/b;->b(Landroid/support/v4/app/Fragment;)V

    .line 925
    :cond_22
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 926
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->f()V

    .line 927
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_23

    .line 928
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroyView()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 931
    :cond_23
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v4, :cond_26

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v4, :cond_26

    .line 932
    const/4 v0, 0x0

    .line 933
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget v4, p0, Landroid/support/v4/app/b;->n:I

    if-lez v4, :cond_24

    iget-boolean v4, p0, Landroid/support/v4/app/b;->r:Z

    if-nez v4, :cond_24

    .line 934
    const/4 v4, 0x0

    invoke-direct {p0, p1, p3, v4, p4}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 937
    :cond_24
    if-eqz v0, :cond_25

    .line 938
    move-object v2, p1

    .line 939
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->j:Landroid/view/View;

    .line 940
    iput p2, p1, Landroid/support/v4/app/Fragment;->k:I

    .line 941
    new-instance v4, Landroid/support/v4/app/b$5;

    invoke-direct {v4, p0, v2}, Landroid/support/v4/app/b$5;-><init>(Landroid/support/v4/app/b;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 957
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 959
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_25
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->N:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 961
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_26
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 962
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    .line 963
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    goto/16 :goto_4

    .line 988
    :cond_27
    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_28

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_28
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v4, :cond_29

    .line 990
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 991
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 992
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_29

    .line 993
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroy()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 998
    :cond_29
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    .line 999
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1000
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->L:Z

    if-nez v4, :cond_2a

    .line 1001
    new-instance v4, Landroid/support/v4/app/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDetach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/d;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1004
    :cond_2a
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v4, :cond_2d

    .line 1005
    iget v4, p1, Landroid/support/v4/app/Fragment;->n:I

    if-ltz v4, :cond_4

    sget-boolean v4, Landroid/support/v4/app/b;->a:Z

    if-eqz v4, :cond_2b

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeing fragment index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v4, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    iget v5, p1, Landroid/support/v4/app/Fragment;->n:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_2c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    :cond_2c
    iget-object v4, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    iget v5, p1, Landroid/support/v4/app/Fragment;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget v5, p1, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->a(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->c()V

    goto/16 :goto_1

    .line 1007
    :cond_2d
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/FragmentActivity;

    .line 1008
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/FragmentActivity;

    .line 1009
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->A:Landroid/support/v4/app/FragmentManager;

    goto/16 :goto_1

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 892
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1086
    iget-object v0, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    .line 1089
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/b;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->n:I

    if-ltz v0, :cond_4

    .line 1091
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-nez v0, :cond_3

    .line 1092
    iget-object v0, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->t:Z

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->u:Z

    .line 1095
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_2

    .line 1096
    iput-boolean v3, p0, Landroid/support/v4/app/b;->p:Z

    .line 1098
    :cond_2
    if-eqz p2, :cond_3

    .line 1099
    invoke-virtual {p0, p1}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;)V

    .line 1102
    :cond_3
    return-void

    .line 1090
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1720
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    .line 1721
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1252
    if-nez p2, :cond_0

    .line 1253
    invoke-direct {p0}, Landroid/support/v4/app/b;->m()V

    .line 1255
    :cond_0
    monitor-enter p0

    .line 1256
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 1257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1259
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    .line 1262
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1264
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/b;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1265
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/b;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1267
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "retaining"    # Z

    .prologue
    .line 1761
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1763
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1764
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Z)V

    .line 1762
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1769
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 5

    .prologue
    .line 1330
    iget-boolean v3, p0, Landroid/support/v4/app/b;->e:Z

    if-eqz v3, :cond_0

    .line 1331
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Recursive entry to executePendingTransactions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1334
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1335
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called from main thread of process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1338
    :cond_1
    const/4 v0, 0x0

    .line 1343
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1344
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1345
    :cond_2
    monitor-exit p0

    return v0

    .line 1348
    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1349
    .local v2, "numActions":I
    iget-object v3, p0, Landroid/support/v4/app/b;->d:[Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/app/b;->d:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_5

    .line 1350
    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Landroid/support/v4/app/b;->d:[Ljava/lang/Runnable;

    .line 1352
    :cond_5
    iget-object v3, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/b;->d:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1353
    iget-object v3, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1354
    iget-object v3, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/b;->v:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/app/b;->e:Z

    .line 1358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1359
    iget-object v3, p0, Landroid/support/v4/app/b;->d:[Ljava/lang/Runnable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1355
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1361
    .restart local v1    # "i":I
    .restart local v2    # "numActions":I
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/app/b;->e:Z

    .line 1362
    const/4 v0, 0x1

    .line 1363
    goto :goto_0
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1831
    const/4 v2, 0x0

    .line 1832
    .local v2, "show":Z
    iget-object v3, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1833
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1834
    iget-object v3, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1835
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v3, :cond_0

    .line 1836
    const/4 v2, 0x1

    .line 1837
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1833
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1800
    const/4 v3, 0x0

    .line 1801
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 1802
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1803
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1804
    iget-object v4, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1805
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v4, :cond_1

    .line 1806
    const/4 v3, 0x1

    .line 1807
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1808
    if-nez v2, :cond_0

    .line 1809
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1811
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 1817
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1818
    iget-object v4, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1819
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1820
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 1817
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1825
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_5
    iput-object v2, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    .line 1827
    return v3
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1845
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1846
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1847
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1848
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_0

    .line 1849
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1850
    const/4 v2, 0x1

    .line 1855
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 1846
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1855
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/String;II)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1383
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return v9

    .line 1386
    :cond_1
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_2

    .line 1387
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1388
    .local v4, "last":I
    if-ltz v4, :cond_0

    .line 1391
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/a;

    .line 1392
    .local v1, "bss":Landroid/support/v4/app/a;
    invoke-virtual {v1, v8}, Landroid/support/v4/app/a;->a(Z)V

    .line 1393
    invoke-direct {p0}, Landroid/support/v4/app/b;->n()V

    .end local v1    # "bss":Landroid/support/v4/app/a;
    .end local v4    # "last":I
    :goto_1
    move v9, v8

    .line 1442
    goto :goto_0

    .line 1395
    :cond_2
    const/4 v3, -0x1

    .line 1396
    .local v3, "index":I
    if-nez p1, :cond_3

    if-ltz p2, :cond_9

    .line 1399
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1400
    :goto_2
    if-ltz v3, :cond_4

    .line 1401
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/a;

    .line 1402
    .restart local v1    # "bss":Landroid/support/v4/app/a;
    if-eqz p1, :cond_7

    invoke-virtual {v1}, Landroid/support/v4/app/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1410
    .end local v1    # "bss":Landroid/support/v4/app/a;
    :cond_4
    if-ltz v3, :cond_0

    .line 1413
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_9

    .line 1414
    add-int/lit8 v3, v3, -0x1

    .line 1416
    :goto_3
    if-ltz v3, :cond_9

    .line 1417
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/a;

    .line 1418
    .restart local v1    # "bss":Landroid/support/v4/app/a;
    if-eqz p1, :cond_5

    invoke-virtual {v1}, Landroid/support/v4/app/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-ltz p2, :cond_9

    iget v6, v1, Landroid/support/v4/app/a;->m:I

    if-ne p2, v6, :cond_9

    .line 1420
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 1421
    goto :goto_3

    .line 1405
    :cond_7
    if-ltz p2, :cond_8

    iget v6, v1, Landroid/support/v4/app/a;->m:I

    if-eq p2, v6, :cond_4

    .line 1408
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 1409
    goto :goto_2

    .line 1427
    .end local v1    # "bss":Landroid/support/v4/app/a;
    :cond_9
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1430
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .local v5, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/a;>;"
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_4
    if-le v2, v3, :cond_a

    .line 1433
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1435
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1436
    .local v0, "LAST":I
    const/4 v2, 0x0

    :goto_5
    if-gt v2, v0, :cond_d

    .line 1437
    sget-boolean v6, Landroid/support/v4/app/b;->a:Z

    if-eqz v6, :cond_b

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/a;

    if-ne v2, v0, :cond_c

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/support/v4/app/a;->a(Z)V

    .line 1436
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    move v7, v9

    .line 1438
    goto :goto_6

    .line 1440
    :cond_d
    invoke-direct {p0}, Landroid/support/v4/app/b;->n()V

    goto/16 :goto_1
.end method

.method public final addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    .line 494
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method final b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    const/4 v1, 0x0

    .line 1447
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v3, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1448
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1449
    iget-object v3, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1450
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->I:Z

    if-eqz v3, :cond_1

    .line 1451
    if-nez v1, :cond_0

    .line 1452
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .restart local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->J:Z

    .line 1456
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->n:I

    :goto_1
    iput v3, v0, Landroid/support/v4/app/Fragment;->r:I

    .line 1448
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1456
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .line 1460
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1120
    sget-boolean v1, Landroid/support/v4/app/b;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v1, :cond_4

    .line 1122
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 1123
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1124
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1126
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1127
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1129
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->t:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v1, :cond_3

    .line 1132
    iput-boolean v4, p0, Landroid/support/v4/app/b;->p:Z

    .line 1134
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1136
    :cond_4
    return-void
.end method

.method final b(Landroid/support/v4/app/a;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/a;

    .prologue
    .line 1375
    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    .line 1378
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    invoke-direct {p0}, Landroid/support/v4/app/b;->n()V

    .line 1380
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1873
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1874
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1875
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1876
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_0

    .line 1877
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1874
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1881
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1859
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1861
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1862
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->G:Z

    if-nez v2, :cond_0

    .line 1863
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1864
    const/4 v2, 0x1

    .line 1869
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 1860
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1869
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Landroid/support/v4/app/a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/b;)V

    return-object v0
.end method

.method final c()Landroid/os/Parcelable;
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 1508
    invoke-virtual {p0}, Landroid/support/v4/app/b;->a()Z

    .line 1510
    sget-boolean v10, Landroid/support/v4/app/b;->b:Z

    if-eqz v10, :cond_0

    .line 1520
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/v4/app/b;->q:Z

    .line 1523
    :cond_0
    iget-object v10, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_2

    .line 1609
    :cond_1
    :goto_0
    return-object v5

    .line 1528
    :cond_2
    iget-object v10, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1529
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/FragmentState;

    .line 1530
    .local v1, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v7, 0x0

    .line 1531
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_8

    .line 1532
    iget-object v10, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1533
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_6

    .line 1534
    const/4 v7, 0x1

    .line 1536
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1537
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    .line 1539
    iget v10, v4, Landroid/support/v4/app/Fragment;->i:I

    if-lez v10, :cond_7

    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v10, :cond_7

    .line 1540
    invoke-direct {p0, v4}, Landroid/support/v4/app/b;->c(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v10

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1542
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    if-eqz v10, :cond_5

    .line 1543
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    iget v10, v10, Landroid/support/v4/app/Fragment;->n:I

    if-gez v10, :cond_3

    .line 1544
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1546
    .local v9, "msg":Ljava/lang/String;
    const-string v10, "FragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const-string v10, "  "

    new-instance v11, Ljava/io/PrintWriter;

    new-instance v12, Landroid/support/v4/util/LogWriter;

    const-string v13, "FragmentManager"

    invoke-direct {v12, v13}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {p0, v10, v5, v11, v12}, Landroid/support/v4/app/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1548
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1550
    .end local v9    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v10, :cond_4

    .line 1551
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1553
    :cond_4
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v11, "android:target_state"

    iget-object v12, v4, Landroid/support/v4/app/Fragment;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v10, v11, v12}, Landroid/support/v4/app/b;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1555
    iget v10, v4, Landroid/support/v4/app/Fragment;->s:I

    if-eqz v10, :cond_5

    .line 1556
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v11, "android:target_req_state"

    iget v12, v4, Landroid/support/v4/app/Fragment;->s:I

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1566
    :cond_5
    :goto_2
    sget-boolean v10, Landroid/support/v4/app/b;->a:Z

    if-eqz v10, :cond_6

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Saved state of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1563
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_7
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->l:Landroid/os/Bundle;

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    goto :goto_2

    .line 1571
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_8
    if-nez v7, :cond_9

    .line 1572
    sget-boolean v10, Landroid/support/v4/app/b;->a:Z

    if-eqz v10, :cond_1

    const-string v10, "FragmentManager"

    const-string v11, "saveAllState: no fragments!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1576
    :cond_9
    const/4 v2, 0x0

    .line 1577
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1580
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    iget-object v10, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 1581
    iget-object v10, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1582
    if-lez v0, :cond_b

    .line 1583
    new-array v2, v0, [I

    .line 1584
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_b

    .line 1585
    iget-object v10, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    iget v10, v10, Landroid/support/v4/app/Fragment;->n:I

    aput v10, v2, v8

    .line 1586
    sget-boolean v10, Landroid/support/v4/app/b;->a:Z

    if-eqz v10, :cond_a

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1593
    :cond_b
    iget-object v10, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v10, :cond_d

    .line 1594
    iget-object v10, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1595
    if-lez v0, :cond_d

    .line 1596
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 1597
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_d

    .line 1598
    new-instance v11, Landroid/support/v4/app/BackStackState;

    iget-object v10, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/a;

    invoke-direct {v11, v10}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/a;)V

    aput-object v11, v3, v8

    .line 1599
    sget-boolean v10, Landroid/support/v4/app/b;->a:Z

    if-eqz v10, :cond_c

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding back stack #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1605
    :cond_d
    new-instance v5, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1606
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1607
    iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1608
    iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    goto/16 :goto_0
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1139
    sget-boolean v1, Landroid/support/v4/app/b;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->G:Z

    if-eqz v1, :cond_4

    .line 1141
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->G:Z

    .line 1142
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1143
    invoke-direct {p0, p1, p2, v5, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1145
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1146
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->t:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v1, :cond_3

    .line 1151
    iput-boolean v5, p0, Landroid/support/v4/app/b;->p:Z

    .line 1153
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1155
    :cond_4
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1724
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    .line 1725
    return-void
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 1158
    sget-boolean v0, Landroid/support/v4/app/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-nez v0, :cond_2

    .line 1160
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->H:Z

    .line 1161
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->t:Z

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1164
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_1

    .line 1165
    iput-boolean v3, p0, Landroid/support/v4/app/b;->p:Z

    .line 1167
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->t:Z

    .line 1168
    invoke-virtual {p0, p1, v3, p2, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1171
    :cond_2
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 561
    iget-object v6, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 562
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 563
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 567
    iget-object v6, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 568
    .local v2, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 569
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 570
    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 566
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 578
    iget-object v6, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 579
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 580
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 582
    iget-object v6, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 583
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 584
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 589
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 590
    iget-object v6, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 594
    iget-object v6, p0, Landroid/support/v4/app/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 595
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 596
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 601
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 602
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 603
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 604
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 606
    iget-object v6, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/a;

    .line 607
    .local v1, "bs":Landroid/support/v4/app/a;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 608
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v1, v4, p3}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 605
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 614
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v4/app/a;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v6, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 616
    iget-object v6, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 617
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    .line 618
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 620
    iget-object v6, p0, Landroid/support/v4/app/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/a;

    .line 621
    .restart local v1    # "bs":Landroid/support/v4/app/a;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 622
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 627
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v4/app/a;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 628
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    iget-object v6, p0, Landroid/support/v4/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    iget-object v6, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 634
    iget-object v6, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    .line 636
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 638
    iget-object v6, p0, Landroid/support/v4/app/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 639
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 640
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 637
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 631
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 645
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/support/v4/app/b;->n:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 647
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/b;->q:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 648
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/b;->r:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 649
    iget-boolean v6, p0, Landroid/support/v4/app/b;->p:Z

    if-eqz v6, :cond_8

    .line 650
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-boolean v6, p0, Landroid/support/v4/app/b;->p:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 653
    :cond_8
    iget-object v6, p0, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 654
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget-object v6, p0, Landroid/support/v4/app/b;->s:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    :cond_9
    iget-object v6, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 658
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-object v6, p0, Landroid/support/v4/app/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    :cond_a
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1728
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    .line 1729
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1730
    return-void
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 1174
    sget-boolean v0, Landroid/support/v4/app/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    if-eqz v0, :cond_2

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->H:Z

    .line 1177
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->t:Z

    if-nez v0, :cond_2

    .line 1178
    iget-object v0, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->t:Z

    .line 1180
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_1

    .line 1181
    iput-boolean v3, p0, Landroid/support/v4/app/b;->p:Z

    .line 1183
    :cond_1
    iget v0, p0, Landroid/support/v4/app/b;->n:I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1186
    :cond_2
    return-void
.end method

.method public final executePendingTransactions()Z
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/support/v4/app/b;->a()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    .line 1734
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1735
    return-void
.end method

.method public final findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1189
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1191
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1192
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1193
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->D:I

    if-ne v2, p1, :cond_1

    .line 1205
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 1191
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1198
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 1199
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1200
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->D:I

    if-eq v2, p1, :cond_0

    .line 1198
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1205
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1209
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 1211
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1212
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1213
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 1211
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1218
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 1219
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1220
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1218
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1225
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    .line 1739
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1740
    return-void
.end method

.method public final getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public final getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 515
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 516
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 517
    const/4 v0, 0x0

    .line 528
    :cond_0
    return-object v0

    .line 519
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 520
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 524
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 525
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    .line 1744
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1745
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 1748
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1749
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1755
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->q:Z

    .line 1757
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1758
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 1772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->r:Z

    .line 1773
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/b;->c(I)V

    .line 1774
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    .line 1775
    return-void
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 1789
    iget-object v2, p0, Landroid/support/v4/app/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1790
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1791
    iget-object v2, p0, Landroid/support/v4/app/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1792
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 1793
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1790
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1797
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final popBackStack()V
    .locals 2

    .prologue
    .line 427
    new-instance v0, Landroid/support/v4/app/b$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b$2;-><init>(Landroid/support/v4/app/b;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/b;->a(Ljava/lang/Runnable;Z)V

    .line 432
    return-void
.end method

.method public final popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 459
    if-gez p1, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    new-instance v0, Landroid/support/v4/app/b$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/b$4;-><init>(Landroid/support/v4/app/b;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/b;->a(Ljava/lang/Runnable;Z)V

    .line 467
    return-void
.end method

.method public final popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 443
    new-instance v0, Landroid/support/v4/app/b$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/b$3;-><init>(Landroid/support/v4/app/b;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/b;->a(Ljava/lang/Runnable;Z)V

    .line 448
    return-void
.end method

.method public final popBackStackImmediate()Z
    .locals 3

    .prologue
    .line 436
    invoke-direct {p0}, Landroid/support/v4/app/b;->m()V

    .line 437
    invoke-virtual {p0}, Landroid/support/v4/app/b;->executePendingTransactions()Z

    .line 438
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/b;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/support/v4/app/b;->m()V

    .line 472
    invoke-virtual {p0}, Landroid/support/v4/app/b;->executePendingTransactions()Z

    .line 473
    if-gez p1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/b;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Landroid/support/v4/app/b;->m()V

    .line 453
    invoke-virtual {p0}, Landroid/support/v4/app/b;->executePendingTransactions()Z

    .line 454
    iget-object v0, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/app/b;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 506
    iget v0, p3, Landroid/support/v4/app/Fragment;->n:I

    if-gez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    return-void
.end method

.method public final removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    return-void
.end method

.method public final saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 533
    iget v2, p1, Landroid/support/v4/app/Fragment;->n:I

    if-gez v2, :cond_0

    .line 534
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_0
    iget v2, p1, Landroid/support/v4/app/Fragment;->i:I

    if-lez v2, :cond_1

    .line 538
    invoke-direct {p0, p1}, Landroid/support/v4/app/b;->c(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 539
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 541
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 547
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v1, p0, Landroid/support/v4/app/b;->o:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 551
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
