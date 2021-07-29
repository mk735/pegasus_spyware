.class final Lcom/lenovo/safecenter/AppsManager/MessageBlackList$5;
.super Ljava/lang/Object;
.source "MessageBlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/safecenter/AppsManager/MessageBlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/MessageBlackList;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$5;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/MessageBlackList$5;->a:Lcom/lenovo/safecenter/AppsManager/MessageBlackList;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/AppsManager/MessageBlackList;->finish()V

    .line 114
    return-void
.end method
