.class final Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;
.super Ljava/lang/Object;
.source "ContractHelpUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/utils/ContractHelpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;


# direct methods
.method public constructor <init>(Lcom/lenovo/safecenter/utils/ContractHelpUtils;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lenovo/safecenter/utils/ContractHelpUtils$a;->a:Lcom/lenovo/safecenter/utils/ContractHelpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lcom/lenovo/safecenter/support/Contract;

    .local v0, "c1":Lcom/lenovo/safecenter/support/Contract;
    move-object v1, p2

    .line 171
    check-cast v1, Lcom/lenovo/safecenter/support/Contract;

    .line 173
    .local v1, "c2":Lcom/lenovo/safecenter/support/Contract;
    invoke-virtual {v0}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 174
    .local v2, "installed1":J
    invoke-virtual {v1}, Lcom/lenovo/safecenter/support/Contract;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 175
    .local v4, "installed2":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 176
    const/4 v6, -0x1

    .line 181
    :goto_0
    return v6

    .line 178
    :cond_0
    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 179
    const/4 v6, 0x0

    goto :goto_0

    .line 181
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method
