.class final Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;
.super Ljava/lang/Object;
.source "WisdomSpeedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field final synthetic d:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;Ljava/lang/String;II)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "state"    # I

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->d:Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p2, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->a:Ljava/lang/String;

    .line 377
    iput p3, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->b:I

    .line 378
    iput p4, p0, Lcom/lenovo/performancecenter/performance/WisdomSpeedPreferenceActivity$c;->c:I

    .line 379
    return-void
.end method
