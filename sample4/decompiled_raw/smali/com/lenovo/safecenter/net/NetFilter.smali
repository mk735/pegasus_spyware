.class public Lcom/lenovo/safecenter/net/NetFilter;
.super Landroid/app/Activity;
.source "NetFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/net/NetFilter$b;,
        Lcom/lenovo/safecenter/net/NetFilter$a;,
        Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;
    }
.end annotation


# static fields
.field public static final NETSETTING:Ljava/lang/String; = "com.lenovo.leos.nac_preferences"

.field public static final RESUIDS:Ljava/lang/String; = "reserved uids"

.field public static final SELECTED:Ljava/lang/String; = "selected uids"

.field public static final SYSENABLED:Ljava/lang/String; = "system enabled"

.field public static final SYSINFO:Ljava/lang/String; = "system info"

.field public static final WHITE_LIST_SIZE:I = 0x2

.field public static final WLAN_SYSINFO:Ljava/lang/String; = "wlan info"

.field public static drawable_mobile_off:I

.field public static drawable_mobile_on:I

.field public static drawable_wifi_off:I

.field public static drawable_wifi_on:I

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

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/safecenter/net/NetFilter$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

.field private j:I

.field private k:I

.field private l:Lcom/lenovo/safecenter/net/NetFilter$a;

.field private m:Landroid/os/Handler;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/widget/AdapterView$OnItemClickListener;

.field private final u:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/lenovo/safecenter/net/support/PhoneSimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    .line 143
    const v0, 0x7f0201ff

    sput v0, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_on:I

    .line 144
    const v0, 0x7f0201fe

    sput v0, Lcom/lenovo/safecenter/net/NetFilter;->drawable_wifi_off:I

    .line 146
    const v0, 0x7f0201f3

    sput v0, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_on:I

    .line 147
    const v0, 0x7f0201f2

    sput v0, Lcom/lenovo/safecenter/net/NetFilter;->drawable_mobile_off:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->a:Z

    .line 64
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->d:Ljava/util/ArrayList;

    .line 72
    iput v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->j:I

    .line 73
    iput v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->k:I

    .line 82
    new-instance v0, Lcom/lenovo/safecenter/net/NetFilter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/NetFilter$1;-><init>(Lcom/lenovo/safecenter/net/NetFilter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->m:Landroid/os/Handler;

    .line 119
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->s:Z

    .line 187
    new-instance v0, Lcom/lenovo/safecenter/net/NetFilter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/NetFilter$2;-><init>(Lcom/lenovo/safecenter/net/NetFilter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 763
    new-instance v0, Lcom/lenovo/safecenter/net/NetFilter$4;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/NetFilter$4;-><init>(Lcom/lenovo/safecenter/net/NetFilter;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->u:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/NetFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/safecenter/net/NetFilter;->k:I

    return p1
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/NetFilter;Lcom/lenovo/safecenter/net/NetFilter$a;)Lcom/lenovo/safecenter/net/NetFilter$a;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;
    .param p1, "x1"    # Lcom/lenovo/safecenter/net/NetFilter$a;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/safecenter/net/NetFilter;->l:Lcom/lenovo/safecenter/net/NetFilter$a;

    return-object p1
.end method

.method private a(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 827
    const v2, 0x7f090055

    if-ne p1, v2, :cond_4

    .line 828
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    if-eqz v2, :cond_2

    .line 829
    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 830
    .local v1, "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    iput-boolean v4, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    goto :goto_0

    .line 832
    .end local v1    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    :cond_0
    sget-object v2, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 860
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->h:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 862
    return-void

    .line 834
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->d:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 835
    .restart local v1    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    iput-boolean v5, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->e:Z

    .line 836
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 839
    sget-object v2, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 843
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    :cond_4
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    if-eqz v2, :cond_6

    .line 844
    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 845
    .restart local v1    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    iput-boolean v4, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    goto :goto_3

    .line 847
    .end local v1    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    :cond_5
    sget-object v2, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 849
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->d:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/lenovo/safecenter/net/NetFilter$a;

    .line 850
    .restart local v1    # "item":Lcom/lenovo/safecenter/net/NetFilter$a;
    iput-boolean v5, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->f:Z

    .line 851
    sget-object v2, Lcom/lenovo/safecenter/utils/Const;->mNetWhiteApps:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 854
    sget-object v2, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/lenovo/safecenter/net/NetFilter$a;->a:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/NetFilter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/NetFilter;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    sget-object v0, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setMobileDataButtonValue(Landroid/content/Context;Z)V

    .line 123
    iput-boolean p1, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/lenovo/safecenter/net/NetFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->a:Z

    return v0
.end method

.method static synthetic a([II)Z
    .locals 4
    .param p0, "x0"    # [I
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->o:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201f1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 135
    return-void

    .line 132
    :cond_0
    const v0, 0x7f0201f0

    goto :goto_0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/net/NetFilter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/NetFilter;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    sget-object v0, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->setWlanDataButtonValue(Landroid/content/Context;Z)V

    .line 128
    iput-boolean p1, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    .line 129
    return-void
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->p:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201fd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    return-void

    .line 138
    :cond_0
    const v0, 0x7f0201fc

    goto :goto_0
.end method

.method static synthetic c(Lcom/lenovo/safecenter/net/NetFilter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/safecenter/net/NetFilter;->a:Z

    return p1
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 823
    :cond_0
    return-object p0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter;->b()V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter;->c()V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$a;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->l:Lcom/lenovo/safecenter/net/NetFilter$a;

    return-object v0
.end method

.method static synthetic g(Lcom/lenovo/safecenter/net/NetFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->k:I

    return v0
.end method

.method static synthetic h(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    :try_start_0
    const-string v0, ""

    const-string v1, "system info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/net/NetFilter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUids:Ljava/util/HashSet;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Filter"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic j(Lcom/lenovo/safecenter/net/NetFilter;)V
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    :try_start_0
    const-string v0, "nac"

    const-string v1, "touch saveWlanList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const-string v1, "wlan info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/safecenter/net/NetFilter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/lenovo/safecenter/net/NetFilter;->netBlackUidsWlan:Ljava/util/HashSet;

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

.method static synthetic k(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/net/NetFilter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->s:Z

    return v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/net/NetFilter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/lenovo/safecenter/net/NetFilter;)Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->g:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic p(Lcom/lenovo/safecenter/net/NetFilter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/net/NetFilter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 812
    :goto_0
    return-void

    .line 794
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/NetFilter;->finish()V

    goto :goto_0

    .line 797
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/net/doublemode/NetSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 800
    :sswitch_2
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    .line 801
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter;->a(Z)V

    .line 802
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter;->b()V

    .line 803
    const v0, 0x7f090055

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter;->a(I)V

    .line 804
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->s:Z

    goto :goto_0

    .line 807
    :sswitch_3
    iget-boolean v2, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    .line 808
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter;->b(Z)V

    .line 809
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter;->c()V

    .line 810
    const v0, 0x7f090056

    invoke-direct {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter;->a(I)V

    .line 811
    iput-boolean v1, p0, Lcom/lenovo/safecenter/net/NetFilter;->s:Z

    goto :goto_0

    .line 792
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
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v4, 0x7f030008

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->setContentView(I)V

    .line 155
    sput-object p0, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    .line 156
    const v4, 0x7f090590

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0905ad

    invoke-virtual {p0, v5}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0905ae

    invoke-virtual {p0, v6}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d07dd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 157
    invoke-static {}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getNetWorkStatsService()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->f:Ljava/lang/Object;

    .line 158
    const v4, 0x7f090054

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->c:Landroid/widget/TextView;

    .line 160
    const v4, 0x7f090058

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->n:Landroid/widget/ProgressBar;

    .line 161
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->b:Landroid/widget/TextView;

    .line 162
    new-instance v4, Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    sget-object v5, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/safecenter/net/support/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->i:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    .line 163
    const v4, 0x7f090057

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->h:Landroid/widget/ListView;

    .line 164
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->h:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 165
    new-instance v4, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/NetFilter;->i:Lcom/lenovo/safecenter/net/support/UidDetailProvider;

    iget v6, p0, Lcom/lenovo/safecenter/net/NetFilter;->j:I

    invoke-direct {v4, p0, v5, v6}, Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;-><init>(Lcom/lenovo/safecenter/net/NetFilter;Lcom/lenovo/safecenter/net/support/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->g:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    .line 166
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->h:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/NetFilter;->g:Lcom/lenovo/safecenter/net/NetFilter$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->h:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lenovo/safecenter/net/NetFilter;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    const v4, 0x7f090055

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->o:Landroid/widget/ImageView;

    .line 169
    const v4, 0x7f090056

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/net/NetFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->p:Landroid/widget/ImageView;

    .line 170
    sget-object v4, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getMobileDataButtonValue(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->q:Z

    .line 172
    sget-object v4, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getWlanDataButtonValue(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->r:Z

    .line 173
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v4, p0, Lcom/lenovo/safecenter/net/NetFilter;->p:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter;->b()V

    .line 176
    invoke-direct {p0}, Lcom/lenovo/safecenter/net/NetFilter;->c()V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/safecenter/utils/WflUtils;->parseMonthStartTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 178
    .local v2, "start":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, "end":J
    invoke-virtual {p0}, Lcom/lenovo/safecenter/net/NetFilter;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {p0}, Lcom/lenovo/safecenter/net/support/TrafficStatsService;->getImsiInfo(Landroid/content/Context;)Lcom/lenovo/safecenter/net/support/PhoneSimInfo;

    move-result-object v6

    invoke-static {v6, v2, v3, v0, v1}, Lcom/lenovo/safecenter/net/support/SummaryForAllUidLoader;->buildArgs(Lcom/lenovo/safecenter/net/support/PhoneSimInfo;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/safecenter/net/NetFilter;->u:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 184
    const-string v4, "nac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oncreate  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/safecenter/net/NetFilter;->s:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/safecenter/net/NetFilter;->e:Landroid/content/Context;

    .line 297
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 301
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 303
    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->s:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/lenovo/safecenter/net/NetFilter$3;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/net/NetFilter$3;-><init>(Lcom/lenovo/safecenter/net/NetFilter;)V

    invoke-virtual {v0}, Lcom/lenovo/safecenter/net/NetFilter$3;->start()V

    iget-boolean v0, p0, Lcom/lenovo/safecenter/net/NetFilter;->a:Z

    .line 306
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.safecenter.refreshAppsManager"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/net/NetFilter;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 215
    return-void
.end method
