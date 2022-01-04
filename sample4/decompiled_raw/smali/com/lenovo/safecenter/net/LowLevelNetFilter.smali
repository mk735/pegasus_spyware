.class public Lcom/lenovo/safecenter/net/LowLevelNetFilter;
.super Landroid/app/Activity;
.source "LowLevelNetFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/net/LowLevelNetFilter$b;,
        Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;,
        Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;
    }
.end annotation


# static fields
.field public static final NETSETTING:Ljava/lang/String; = "com.lenovo.leos.nac_preferences"

.field public static final RESUIDS:Ljava/lang/String; = "reserved uids"

.field public static final SELECTED:Ljava/lang/String; = "selected uids"

.field public static SOCKET:Ljava/lang/String; = null

.field public static final SYSENABLED:Ljava/lang/String; = "system enabled"

.field public static final SYSINFO:Ljava/lang/String; = "system info"

.field public static final WLAN_SYSINFO:Ljava/lang/String; = "wlan info"

.field private static e:Landroid/content/Context;

.field public static final netBlackUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final netBlackUidsWlan:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private f:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

.field private i:I

.field private j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/net/support/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/os/Handler;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Z

.field private s:Z

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "socketclient"

    sput-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->SOCKET:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a:Z

    .line 65
    iput v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->i:I

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->j:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$1;-><init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->o:Landroid/os/Handler;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->t:Ljava/util/ArrayList;

    .line 138
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->u:Z

    .line 543
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 671
    const v2, 0x7f090055

    if-ne p1, v2, :cond_4

    .line 672
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    if-eqz v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .line 674
    .local v1, "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    iput-boolean v4, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    goto :goto_0

    .line 676
    .end local v1    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 704
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->g:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 706
    return-void

    .line 678
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .line 679
    .restart local v1    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    iput-boolean v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->c:Z

    .line 680
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 683
    sget-object v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 687
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    :cond_4
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    if-eqz v2, :cond_6

    .line 688
    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .line 689
    .restart local v1    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    iput-boolean v4, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->d:Z

    goto :goto_3

    .line 691
    .end local v1    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    :cond_5
    sget-object v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 693
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;

    .line 694
    .restart local v1    # "item":Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;
    iput-boolean v5, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->d:Z

    .line 695
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 698
    sget-object v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setMobileDataButtonValue(Landroid/content/Context;Z)V

    .line 116
    iput-boolean p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->f:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->p:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201f1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    return-void

    .line 125
    :cond_0
    const v0, 0x7f0201f0

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setWlanDataButtonValue(Landroid/content/Context;Z)V

    .line 121
    iput-boolean p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    .line 122
    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->q:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201fd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    return-void

    .line 131
    :cond_0
    const v0, 0x7f0201fc

    goto :goto_0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a:Z

    return p1
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b()V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c()V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->f:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->j:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Filter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "selected uids"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic n(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    :try_start_0
    const-string v0, "nac"

    const-string v1, "touch saveWlanList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v1, "wlan info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "selected uids"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "nac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlan uids string ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "nac"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic o(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->u:Z

    return v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/LowLevelNetFilter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 659
    :goto_0
    return-void

    .line 631
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->finish()V

    goto :goto_0

    .line 634
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 637
    :sswitch_2
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    .line 639
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(Z)V

    .line 640
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b()V

    .line 641
    const v0, 0x7f090055

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(I)V

    .line 642
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->u:Z

    .line 643
    const-string v0, "4.2.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileDataEnabled@ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mWlanDataEnabled@ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d()V

    goto :goto_0

    .line 650
    :sswitch_3
    invoke-static {}, Lcom/lenovo/safecenter/utils/Const;->isObtainRoot()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->nacServerIsExist()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 651
    :cond_3
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    .line 652
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b(Z)V

    .line 653
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c()V

    .line 654
    const v0, 0x7f090056

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a(I)V

    .line 655
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->u:Z

    goto/16 :goto_0

    .line 657
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d()V

    goto/16 :goto_0

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090055 -> :sswitch_2
        0x7f090056 -> :sswitch_3
        0x7f0905ad -> :sswitch_0
        0x7f0905ae -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->setContentView(I)V

    .line 144
    sput-object p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    .line 145
    const v0, 0x7f090590

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0905ad

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0905ae

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0d07dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->m:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->n:Landroid/widget/ProgressBar;

    .line 149
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->d:Landroid/widget/TextView;

    .line 150
    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getInstance(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b:Lcom/lenovo/safecenter/net/support/TrafficStatsService;

    .line 151
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c:Landroid/widget/TextView;

    .line 152
    new-instance v0, Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    sget-object v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/safecenter/net/support/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->h:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    .line 153
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->g:Landroid/widget/ListView;

    .line 154
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->g:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 155
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->p:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->q:Landroid/widget/ImageView;

    .line 157
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getMobileDataButtonValue(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    .line 159
    sget-object v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getWlanDataButtonValue(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    .line 160
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const-string v0, "4.2.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mWlanDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->b()V

    .line 165
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->c()V

    .line 166
    new-instance v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->h:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    iget v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->i:I

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;-><init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;Lcom/lenovo/safecenter/net/support/UidDetailProvider;I)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->f:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    .line 167
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->f:Lcom/lenovo/safecenter/net/LowLevelNetFilter$DataUsageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$2;-><init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 302
    const-string v0, "nac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch onPause and isUserClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->u:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;-><init>(Lcom/lenovo/safecenter/net/LowLevelNetFilter;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter$3;->start()V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->a:Z

    .line 306
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 297
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 298
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 224
    invoke-static {}, Lcom/lenovo/safecenter/utils/WflUtils;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lenovo/safecenter/net/LowLevelNetFilter;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_0
    return-void
.end method
