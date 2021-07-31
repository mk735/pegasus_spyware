.class public Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;
.super Landroid/app/Activity;
.source "TrafficCorrectSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;,
        Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$a;,
        Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;
    }
.end annotation


# static fields
.field public static final CORRECT:Ljava/lang/String; = "correct"

.field public static final NEW_VERSION_INITPOSTION_KEY:Ljava/lang/String; = "new_version_initpostion_key"

.field public static final TIME:J = 0x1d4c0L

.field public static canCorrect:Z

.field public static cardPostion:I

.field public static mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Spinner;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/Spinner;

.field private i:Landroid/widget/Spinner;

.field private j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field private m:[I

.field private n:I

.field private o:Z

.field private final p:Landroid/os/Handler;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->canCorrect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->o:Z

    .line 54
    new-instance v0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$1;-><init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->p:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method static synthetic a(ILjava/util/List;)I
    .locals 1
    .param p0, "x1"    # I
    .param p1, "x2"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->s:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/CodeName;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CodeName;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 517
    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    return-object v2

    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/CodeName;

    .line 520
    .local v0, "codeName":Lcom/tencent/tmsecure/module/network/CodeName;
    iget-object v3, v0, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(I)V
    .locals 14
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 345
    new-instance v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-direct {v5}, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;-><init>()V

    iput-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    .line 346
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 347
    .local v4, "provice":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 348
    .local v1, "city":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 349
    .local v3, "op":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->i:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 350
    .local v0, "b":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceDesc:Ljava/lang/String;

    .line 351
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->cityDesc:Ljava/lang/String;

    .line 352
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsDesc:Ljava/lang/String;

    .line 353
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandDesc:Ljava/lang/String;

    .line 354
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    .line 355
    iget-object v8, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v5, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-virtual {v6, v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getCities(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v7

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tmsecure/module/network/CodeName;

    iget-object v11, v5, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v5, v5, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    :goto_1
    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v7

    :cond_1
    iput-object v6, v8, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    .line 356
    iget-object v8, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v5, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getCarries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v7

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tmsecure/module/network/CodeName;

    iget-object v11, v5, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v5, v5, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    :goto_3
    move-object v6, v5

    goto :goto_2

    :cond_2
    iput-object v6, v8, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    .line 357
    iget-object v8, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v5, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-virtual {v6, v5}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getBrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v7

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tmsecure/module/network/CodeName;

    iget-object v7, v5, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v5, v5, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    :goto_5
    move-object v6, v5

    goto :goto_4

    :cond_3
    iput-object v6, v8, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    .line 358
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    iput v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceSelected:I

    .line 359
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    iput v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->citySelected:I

    .line 360
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    iput v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsSelected:I

    .line 361
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->i:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    iput v6, v5, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandSelected:I

    .line 362
    const-string v5, "TrafficCorrectPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proviceDesc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cityDesc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->cityDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v5, "TrafficCorrectPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v5, "TrafficCorrectPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pro id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   , city id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oper id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",brand id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",,card ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v5, "TrafficCorrectPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pro po = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceSelected:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   , city id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->citySelected:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oper id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operatorsSelected:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",brand id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandSelected:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",,card ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->proviceDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->cityDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->cityDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brandDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 376
    :cond_4
    iput-boolean v13, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->o:Z

    .line 377
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    const v6, 0x7f0d082e

    invoke-static {v5, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 443
    :cond_5
    :goto_6
    return-void

    .line 381
    :cond_6
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    sget v6, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    invoke-static {v5, v6, p0}, Lcom/lenovo/safecenter/net/support/Utils;->setConfig2Preference(Lcom/lenovo/safecenter/net/support/SIMDetailInfo;ILandroid/content/Context;)V

    .line 382
    if-ne p1, v12, :cond_7

    .line 383
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/safecenter/utils/WflUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 384
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    const v6, 0x7f0d082c

    invoke-static {v5, v6, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 389
    :cond_7
    :goto_7
    new-instance v5, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;-><init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V

    invoke-virtual {v5}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$2;->start()V

    .line 431
    if-nez p1, :cond_5

    .line 432
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    const v6, 0x7f0d082f

    invoke-static {v5, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 434
    const-string v5, "TrafficCorrectPlugin"

    const-string v6, "touch toast short"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v5, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    iget-object v6, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v6, v6, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->provice:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v7, v7, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->city:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v8, v8, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->operators:Ljava/lang/String;

    iget-object v9, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    iget-object v9, v9, Lcom/lenovo/safecenter/net/support/SIMDetailInfo;->brand:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/lenovo/safecenter/support/SecurityService;->config:Lcom/tencent/tmsecure/module/network/TrafficCorrectionConfig;

    .line 438
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/Utils;->setLastCorrectTime(Landroid/content/Context;)V

    .line 439
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/lenovo/safecenter/support/SecurityService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "correct"

    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6

    .line 386
    .end local v2    # "i":Landroid/content/Intent;
    :cond_8
    iget-object v5, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    const v6, 0x7f0d0838

    invoke-static {v5, v6, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_9
    move-object v5, v6

    goto/16 :goto_5

    :cond_a
    move-object v5, v6

    goto/16 :goto_3

    :cond_b
    move-object v5, v6

    goto/16 :goto_1
.end method

.method private static b(ILjava/util/List;)I
    .locals 1
    .param p0, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p0, v0, :cond_0

    .line 528
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p0, v0, -0x1

    .line 530
    :cond_0
    return p0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "mCode":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getAllProvinces()Ljava/util/ArrayList;

    move-result-object v3

    .line 471
    .local v3, "provinces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/tmsecure/module/network/CodeName;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/CodeName;

    .line 472
    .local v0, "codeName":Lcom/tencent/tmsecure/module/network/CodeName;
    iget-object v4, v0, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    iget-object v2, v0, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    goto :goto_0

    .line 476
    .end local v0    # "codeName":Lcom/tencent/tmsecure/module/network/CodeName;
    :cond_1
    return-object v2
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->i:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic f(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->m:[I

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Lcom/lenovo/safecenter/net/support/SIMDetailInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->s:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->p:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/32 v7, 0x1d4c0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 313
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->finish()V

    goto :goto_0

    .line 316
    :sswitch_1
    iget v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    if-nez v0, :cond_5

    .line 317
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/Utils;->getCanCorrectFlag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/Utils;->getLastCorrectTime(Landroid/content/Context;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v0, "TrafficCorrectPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tmp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v3, v7

    if-ltz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 318
    :cond_0
    sput-boolean v2, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->canCorrect:Z

    .line 319
    sget-boolean v0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->canCorrect:Z

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/net/support/Utils;->setCanCorrectFlag(Landroid/content/Context;Z)V

    .line 320
    iget v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(I)V

    .line 321
    sget v0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    invoke-static {p0, v0}, Lcom/lenovo/safecenter/net/support/Utils;->setCorrectPostion(Landroid/content/Context;I)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->p:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->p:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    :goto_2
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->o:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->finish()V

    .line 334
    :cond_1
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->o:Z

    goto :goto_0

    .line 317
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/Utils;->setLastCorrectTime(Landroid/content/Context;)V

    :cond_3
    move v0, v2

    goto :goto_1

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    const v2, 0x7f0d082a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 329
    :cond_5
    iget v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(I)V

    goto :goto_2

    .line 337
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->finish()V

    goto :goto_0

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090432 -> :sswitch_2
        0x7f090433 -> :sswitch_1
        0x7f0905ad -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1090009

    const v4, 0x7f0d081b

    const/16 v3, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f0300ba

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "card"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    .line 81
    const-string v1, "correct_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    .line 82
    iput-object p0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    .line 83
    const-class v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    sput-object v1, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    .line 84
    sget v1, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    invoke-static {v1, p0}, Lcom/lenovo/safecenter/net/support/Utils;->initPostion(ILandroid/content/Context;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->m:[I

    .line 85
    const v1, 0x7f0d082d

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    .line 86
    const v1, 0x7f0d0830

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->r:Ljava/lang/String;

    .line 88
    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a:Landroid/widget/ImageView;

    const v1, 0x7f0905ae

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090590

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    sget v1, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->cardPostion:I

    if-nez v1, :cond_6

    iget v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    if-nez v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f090432

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09042e

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    const v1, 0x7f09042f

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    const v1, 0x7f090430

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h:Landroid/widget/Spinner;

    const v1, 0x7f090431

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->i:Landroid/widget/Spinner;

    const v1, 0x7f090433

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->d:Landroid/widget/TextView;

    const v2, 0x7f0d0817

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    const v2, 0x7f0d0810

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    const v2, 0x7f0d080f

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const v3, 0x7f0d080e

    invoke-virtual {p0, v3}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getAllProvinces()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03010e

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->m:[I

    aget v3, v3, v6

    invoke-static {v3, v1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(ILjava/util/List;)I

    move-result v1

    invoke-virtual {v2, v1, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    new-instance v2, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$c;-><init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->f:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->mTcMgr:Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;

    invoke-static {v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/network/TrafficCorrectionManager;->getCities(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "testcorrect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->l:Landroid/content/Context;

    const v4, 0x7f03010e

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->m:[I

    aget v3, v3, v7

    invoke-static {v3, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(ILjava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2, v7}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->g:Landroid/widget/Spinner;

    new-instance v2, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$a;

    invoke-direct {v2, p0, v6}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$a;-><init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;B)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03010e

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->m:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->k:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->b(ILjava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->h:Landroid/widget/Spinner;

    new-instance v2, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$b;-><init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    return-void

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    const v2, 0x7f0d081a

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    const v2, 0x7f0d0818

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->n:I

    if-nez v1, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_7

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_a

    invoke-static {p0}, Lcom/lenovo/safecenter/platform/MyMultiSIMUtils;->isMultiSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    const v2, 0x7f0d081a

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->c:Landroid/widget/TextView;

    const v2, 0x7f0d0819

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->d:Landroid/widget/TextView;

    const v2, 0x7f0d0816

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 89
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->r:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;->j:Lcom/lenovo/safecenter/net/support/SIMDetailInfo;

    .line 466
    return-void
.end method
