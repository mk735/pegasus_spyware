.class final Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer$1;
.super Ljava/lang/Object;
.source "QuestionAndAnswer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer$1;->a:Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer$1;->a:Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/MainTab/QuestionAndAnswer;->finish()V

    .line 31
    return-void
.end method
