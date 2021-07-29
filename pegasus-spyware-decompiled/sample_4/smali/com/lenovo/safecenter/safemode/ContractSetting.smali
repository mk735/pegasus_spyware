.class public Lcom/lenovo/safecenter/safemode/ContractSetting;
.super Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;
.source "ContractSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;,
        Lcom/lenovo/safecenter/safemode/ContractSetting$ViewHolder;,
        Lcom/lenovo/safecenter/safemode/ContractSetting$a;
    }
.end annotation


# instance fields
.field a:Landroid/preference/Preference;

.field b:Landroid/preference/Preference;

.field c:Landroid/preference/Preference;

.field d:Landroid/preference/Preference;

.field e:Landroid/preference/Preference;

.field f:Landroid/preference/Preference;

.field g:Landroid/preference/Preference;

.field h:Landroid/content/SharedPreferences;

.field i:Landroid/content/SharedPreferences;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:[I

.field private q:[I

.field private r:Landroid/os/Handler;

.field private s:Lcom/lenovo/safecenter/safemode/ContractSetting$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;-><init>()V

    .line 52
    iput v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    iput v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    iput v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->p:[I

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->q:[I

    .line 59
    new-instance v0, Lcom/lenovo/safecenter/safemode/ContractSetting$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$1;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->r:Landroid/os/Handler;

    .line 1055
    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f0d01d6
        0x7f0d01c8
        0x7f0d01d7
        0x7f0d01d8
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f0d01d9
        0x7f0d01da
        0x7f0d01db
    .end array-data
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->m:I

    return p1
.end method

.method private a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0200e2

    const v5, 0x7f0200e1

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 842
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==getData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    if-nez v2, :cond_0

    .line 845
    const-string v2, "imgon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :goto_0
    const-string v2, "img"

    const v3, 0x7f0202f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 855
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 857
    const-string v2, "imgon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :goto_1
    const-string v2, "img"

    const v3, 0x7f02020a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    return-object v0

    .line 848
    :cond_0
    const-string v2, "imgon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 860
    :cond_1
    const-string v2, "imgon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ContractSetting;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/lenovo/safecenter/safemode/ContractSetting;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->q:[I

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/ContractSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->m:I

    return v0
.end method

.method static synthetic b(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->n:I

    return p1
.end method

.method private b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0200e2

    const v5, 0x7f0200e1

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 873
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==getData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    if-nez v2, :cond_0

    .line 876
    const-string v2, "imgon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :goto_0
    const-string v2, "img"

    const v3, 0x7f0200e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 886
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 888
    const-string v2, "imgon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :goto_1
    const-string v2, "img"

    const v3, 0x7f02020a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    return-object v0

    .line 879
    :cond_0
    const-string v2, "imgon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 891
    :cond_1
    const-string v2, "imgon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    return p1
.end method

.method private c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0200e2

    const v5, 0x7f0200e1

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1018
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "content"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==getData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    if-nez v2, :cond_0

    .line 1021
    const-string v2, "imgon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    :goto_0
    const-string v2, "img"

    const v3, 0x7f020163

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1031
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1033
    const-string v2, "imgon"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :goto_1
    const-string v2, "img"

    const v3, 0x7f020299

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    return-object v0

    .line 1024
    :cond_0
    const-string v2, "imgon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1036
    :cond_1
    const-string v2, "imgon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic c(Lcom/lenovo/safecenter/safemode/ContractSetting;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->p:[I

    return-object v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/ContractSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->n:I

    return v0
.end method

.method static synthetic d(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    return p1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/ContractSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    return p1
.end method

.method static synthetic e(Lcom/lenovo/safecenter/safemode/ContractSetting;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300de

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090351

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09034f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d0666

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090350

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->h:Landroid/content/SharedPreferences;

    const-string v3, "replypri_content"

    const v4, 0x7f0d01df

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x90

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d01cb

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0046

    new-instance v3, Lcom/lenovo/safecenter/safemode/ContractSetting$19;

    invoke-direct {v3, p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting$19;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/EditText;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/lenovo/safecenter/safemode/ContractSetting$12;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$12;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic f(Lcom/lenovo/safecenter/safemode/ContractSetting;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01c6

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f080001

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->h:Landroid/content/SharedPreferences;

    const-string v3, "sms_mode"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/safecenter/safemode/ContractSetting$23;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$23;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/safemode/ContractSetting$22;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$22;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic g(Lcom/lenovo/safecenter/safemode/ContractSetting;)V
    .locals 5
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    new-instance v0, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "privateCall_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/lenovo/safecenter/safemode/ContractSetting$21;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$21;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/lenovo/safecenter/safemode/ContractSetting$20;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$20;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    return-void
.end method

.method static synthetic h(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/lenovo/safecenter/safemode/ContractSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    return v0
.end method

.method static synthetic j(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/lenovo/safecenter/safemode/ContractSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    return v0
.end method

.method static synthetic l(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/lenovo/safecenter/safemode/ContractSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    return v0
.end method

.method static synthetic n(Lcom/lenovo/safecenter/safemode/ContractSetting;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/safecenter/safemode/ContractSetting;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public createPrefence()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const v8, 0x7f0d01c8

    const v7, 0x7f0300d8

    const v6, 0x7f0300d7

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 145
    .local v3, "root":Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 146
    .local v2, "mainCategory":Landroid/preference/PreferenceCategory;
    const v4, 0x7f0d0768

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 149
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    .line 150
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 151
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 152
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    const-string v5, "changename"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    const v5, 0x7f0d01c2

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 154
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->g:Landroid/preference/Preference;

    .line 158
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->g:Landroid/preference/Preference;

    const-string v5, "error_pwd"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->g:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 160
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->g:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 161
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->g:Landroid/preference/Preference;

    const v5, 0x7f0d057e

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 163
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->g:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 169
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 170
    .local v1, "categoryset":Landroid/preference/PreferenceCategory;
    const v4, 0x7f0d01c5

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    .line 175
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    const-string v5, "smsnotifymode"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 177
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 178
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    const v5, 0x7f0d01c6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 179
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    .line 182
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    const-string v5, "smsnotify"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 184
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 185
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 186
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "categoryMode":Landroid/preference/PreferenceCategory;
    const v4, 0x7f0d01c4

    invoke-virtual {p0, v4}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    .line 196
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    const-string v5, "callnotifymode"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 198
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 199
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    const v5, 0x7f0d01c7

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 201
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 203
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    .line 204
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    const-string v5, "replymes"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 207
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 210
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    .line 213
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    const-string v5, "callnotify"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 215
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 216
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 217
    iget-object v4, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    return-object v3
.end method

.method public getSpan(I)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resID"    # I

    .prologue
    const/4 v4, 0x0

    .line 136
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    return-object v0
.end method

.method public getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 317
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 319
    return-object v0
.end method

.method public getWordCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 760
    const/4 v2, 0x0

    .line 761
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 763
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 764
    .local v0, "ascii":I
    if-ltz v0, :cond_0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    .line 765
    add-int/lit8 v2, v2, 0x1

    .line 761
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 770
    .end local v0    # "ascii":I
    :cond_1
    return v2
.end method

.method public onChang()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$24;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$24;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$25;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$25;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$2;

    invoke-direct {v1, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$2;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 560
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b9

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->finish()V

    .line 283
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0d01ca

    const v6, 0x7f070008

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f020286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0226

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->setTitle(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->createPrefence()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/safecenter/safemode/ContractSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020339

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->i:Landroid/content/SharedPreferences;

    .line 76
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->c:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->h:Landroid/content/SharedPreferences;

    .line 78
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->h:Landroid/content/SharedPreferences;

    const-string v2, "sms_mode"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->n:I

    .line 79
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->e:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->p:[I

    iget v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->n:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privateCall_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->m:I

    .line 82
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->d:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->q:[I

    iget v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->m:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$a;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/safecenter/safemode/ContractSetting$a;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;B)V

    iput-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->s:Lcom/lenovo/safecenter/safemode/ContractSetting$a;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->s:Lcom/lenovo/safecenter/safemode/ContractSetting$a;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataHelpUtils==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "changeimg"

    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->n:I

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->a:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privateCall_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->onChang()V

    .line 132
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privateCall_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 116
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privateCall_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 124
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->b:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->f:Landroid/preference/Preference;

    invoke-virtual {p0, v7}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getSpan(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onDestroy()V

    .line 312
    iget-object v0, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->s:Lcom/lenovo/safecenter/safemode/ContractSetting$a;

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 296
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackPause(Landroid/content/Context;)V

    .line 297
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onPause()V

    .line 298
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 564
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changepwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->showChangePwdDialog()V

    .line 625
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 568
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smsnotify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "flag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callnotify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "flag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 576
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/safecenter/safemode/EditSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 580
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeimg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    const-string v0, "changeimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "changeimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 585
    :cond_5
    iput v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    .line 591
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->showDialogImage()V

    goto/16 :goto_0

    .line 588
    :cond_6
    iput v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->j:I

    goto :goto_1

    .line 593
    :cond_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smsimg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 596
    const-string v0, "changesmsimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "changesmsimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 598
    :cond_8
    iput v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    .line 604
    :goto_2
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->showDialogImageSms()V

    goto/16 :goto_0

    .line 601
    :cond_9
    iput v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->l:I

    goto :goto_2

    .line 606
    :cond_a
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callimg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 609
    const-string v0, "changecallimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "changecallimg"

    invoke-static {v0, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 611
    :cond_b
    iput v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    .line 617
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->showDialogImageCall()V

    goto/16 :goto_0

    .line 614
    :cond_c
    iput v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->k:I

    goto :goto_3

    .line 619
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_pwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->showChangePwdDialog()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 291
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->trackResume(Landroid/content/Context;)V

    .line 292
    invoke-super {p0}, Lcom/lenovo/safecenter/platform/BaseTitlePreferenceActivity;->onResume()V

    .line 293
    return-void
.end method

.method public showChangeNameDialog()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 777
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300f9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 778
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090501

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 779
    .local v0, "pwd":Landroid/widget/EditText;
    const v5, 0x7f090503

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 780
    .local v1, "pwd2":Landroid/widget/EditText;
    const v5, 0x7f090500

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 781
    .local v2, "txt1":Landroid/widget/TextView;
    const v5, 0x7f090502

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 782
    .local v3, "txt2":Landroid/widget/TextView;
    const v5, 0x7f0d01e2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 783
    const v5, 0x7f0d01e3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 785
    const/16 v5, 0x90

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 786
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 788
    const-string v5, "changeNametitle"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 790
    const v5, 0x7f0d000b

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(I)V

    .line 800
    :goto_0
    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d01c2

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01b9

    new-instance v7, Lcom/lenovo/safecenter/safemode/ContractSetting$8;

    invoke-direct {v7, p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting$8;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/EditText;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01ba

    new-instance v7, Lcom/lenovo/safecenter/safemode/ContractSetting$7;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$7;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 832
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->r:Landroid/os/Handler;

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 833
    return-void

    .line 794
    :cond_0
    const-string v5, "changeNametitle"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showChangeNotifyDialog(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const v10, 0x7f0d01bb

    const/16 v8, 0x8

    const/4 v9, 0x1

    .line 686
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300f9

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 687
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090501

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 688
    .local v0, "pwd":Landroid/widget/EditText;
    const v5, 0x7f090503

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 689
    .local v1, "pwd2":Landroid/widget/EditText;
    const v5, 0x7f090500

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 690
    .local v2, "txt1":Landroid/widget/TextView;
    const v5, 0x7f090502

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 691
    .local v3, "txt2":Landroid/widget/TextView;
    const v5, 0x7f0d01d2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 692
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 694
    const v5, 0x7f0d01d3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 696
    const/16 v5, 0x90

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 697
    if-nez p1, :cond_2

    .line 699
    const-string v5, "smsnotifytitle"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 701
    const v5, 0x7f0d01d5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(I)V

    .line 702
    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setText(I)V

    .line 722
    :cond_0
    :goto_0
    new-instance v5, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d01d1

    invoke-virtual {v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01b9

    new-instance v7, Lcom/lenovo/safecenter/safemode/ContractSetting$6;

    invoke-direct {v7, p0, v0, p1, v1}, Lcom/lenovo/safecenter/safemode/ContractSetting$6;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/EditText;ILandroid/widget/EditText;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d01ba

    new-instance v7, Lcom/lenovo/safecenter/safemode/ContractSetting$5;

    invoke-direct {v7, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$5;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 754
    iget-object v5, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->r:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    return-void

    .line 705
    :cond_1
    const-string v5, "smsnotifytitle"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 706
    const-string v5, "smsnotifycontent"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 708
    :cond_2
    if-ne p1, v9, :cond_0

    .line 710
    const-string v5, "callnotifytitle"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 712
    const v5, 0x7f0d01d4

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(I)V

    .line 713
    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 716
    :cond_3
    const-string v5, "callnotifytitle"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const-string v5, "callnotifycontent"

    invoke-static {v5, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showChangePwdDialog()V
    .locals 7

    .prologue
    .line 632
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300f8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 633
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090501

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 634
    .local v0, "pwd":Landroid/widget/EditText;
    const v3, 0x7f090503

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 635
    .local v1, "pwd2":Landroid/widget/EditText;
    const-string v3, "pwd"

    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 637
    const-string v3, "pwd"

    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const-string v3, "pwd"

    invoke-static {v3, p0}, Lcom/lenovo/safecenter/utils/DataHelpUtils;->execService(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :cond_0
    new-instance v3, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v3, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d01c0

    invoke-virtual {v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01b9

    new-instance v5, Lcom/lenovo/safecenter/safemode/ContractSetting$4;

    invoke-direct {v5, p0, v0, v1}, Lcom/lenovo/safecenter/safemode/ContractSetting$4;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01ba

    new-instance v5, Lcom/lenovo/safecenter/safemode/ContractSetting$3;

    invoke-direct {v5, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$3;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 679
    iget-object v3, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->r:Landroid/os/Handler;

    const/4 v4, 0x1

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    return-void
.end method

.method public showDialogImage()V
    .locals 5

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->c()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->o:Ljava/util/List;

    .line 903
    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/content/Context;)V

    .line 904
    .local v1, "myAdapter":Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 905
    .local v0, "listview":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 906
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 907
    new-instance v2, Lcom/lenovo/safecenter/safemode/ContractSetting$9;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting$9;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 918
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d01e4

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01b9

    new-instance v4, Lcom/lenovo/safecenter/safemode/ContractSetting$11;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$11;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01ba

    new-instance v4, Lcom/lenovo/safecenter/safemode/ContractSetting$10;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$10;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 935
    return-void
.end method

.method public showDialogImageCall()V
    .locals 5

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->b()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->o:Ljava/util/List;

    .line 941
    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/content/Context;)V

    .line 942
    .local v1, "myAdapter":Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 943
    .local v0, "listview":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 944
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 945
    new-instance v2, Lcom/lenovo/safecenter/safemode/ContractSetting$13;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting$13;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 956
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d01f7

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01b9

    new-instance v4, Lcom/lenovo/safecenter/safemode/ContractSetting$15;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$15;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01ba

    new-instance v4, Lcom/lenovo/safecenter/safemode/ContractSetting$14;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$14;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 973
    return-void
.end method

.method public showDialogImageSms()V
    .locals 5

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->a()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/safecenter/safemode/ContractSetting;->o:Ljava/util/List;

    .line 979
    new-instance v1, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;

    invoke-direct {v1, p0, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/content/Context;)V

    .line 980
    .local v1, "myAdapter":Lcom/lenovo/safecenter/safemode/ContractSetting$MyAdapter;
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 981
    .local v0, "listview":Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 982
    invoke-virtual {p0}, Lcom/lenovo/safecenter/safemode/ContractSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 984
    new-instance v2, Lcom/lenovo/safecenter/safemode/ContractSetting$16;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/safecenter/safemode/ContractSetting$16;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 995
    new-instance v2, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d01f8

    invoke-virtual {v2, v3}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setTitle(I)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01b9

    new-instance v4, Lcom/lenovo/safecenter/safemode/ContractSetting$18;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$18;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d01ba

    new-instance v4, Lcom/lenovo/safecenter/safemode/ContractSetting$17;

    invoke-direct {v4, p0}, Lcom/lenovo/safecenter/safemode/ContractSetting$17;-><init>(Lcom/lenovo/safecenter/safemode/ContractSetting;)V

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/safecenter/dialog/CustomDialog$Builder;->show()Lcom/lenovo/safecenter/dialog/CustomDialog;

    .line 1012
    return-void
.end method
