.class final Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$2;
.super Ljava/lang/Object;
.source "ChargeSafeNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$2;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$2;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/SmsUtil;->statisticsSmsSent(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew$2;->a:Lcom/lenovo/safecenter/AppsManager/ChargeSafeNew;

    invoke-static {v0}, Lcom/lenovo/safecenter/utils/CallUtil;->statisticsCallDurationByType(Landroid/content/Context;)V

    .line 83
    return-void
.end method
