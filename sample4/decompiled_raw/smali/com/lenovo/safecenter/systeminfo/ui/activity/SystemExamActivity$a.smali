.class final Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v4, 0x42f00000    # 120.0f

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 365
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 370
    const-string v0, "test "

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->k(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->n(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 376
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->o(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->p(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020242

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 379
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->q(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 382
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 384
    const-string v0, "test "

    const-string v1, "left"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->k(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->l(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->m(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 388
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->n(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 389
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->o(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 390
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->p(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 391
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->q(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity$a;->a:Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;

    invoke-static {v0}, Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;->r(Lcom/lenovo/safecenter/systeminfo/ui/activity/SystemExamActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
