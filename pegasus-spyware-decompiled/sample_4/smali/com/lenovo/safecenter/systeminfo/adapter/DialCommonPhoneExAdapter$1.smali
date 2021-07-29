.class final Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;
.super Ljava/lang/Object;
.source "DialCommonPhoneExAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;->a:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    .line 103
    .local v0, "a":[I
    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;->a:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    invoke-static {v4}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v0, v5

    aget-object v3, v4, v5

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;->a:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    invoke-static {v4}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->a(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;

    .line 105
    .local v1, "comNumber":Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/safecenter/systeminfo/entity/CommonNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v2, "phoneIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter$1;->a:Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;

    invoke-static {v4}, Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;->b(Lcom/lenovo/safecenter/systeminfo/adapter/DialCommonPhoneExAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
