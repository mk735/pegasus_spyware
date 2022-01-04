.class final Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$a;
.super Ljava/lang/Object;
.source "TrafficCorrectSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;


# direct methods
.method private constructor <init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$a;->a:Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;B)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting$a;-><init>(Lcom/lenovo/safecenter/net/correct/TrafficCorrectSetting;)V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
