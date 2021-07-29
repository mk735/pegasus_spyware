.class final Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$6;
.super Ljava/lang/Thread;
.source "ScanVirusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity$6;->a:Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;

    invoke-virtual {v0}, Lcom/lenovo/safecenter/antivirus/views/ScanVirusActivity;->notifyVirus()V

    .line 529
    return-void
.end method
