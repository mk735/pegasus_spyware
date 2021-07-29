.class public Lcom/lenovo/safecenter/Laboratory/SafeHomePageBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "SafeHomePageBroadcast.java"


# static fields
.field public static final BROWSER_PKG:Ljava/lang/String; = "com.android.browser"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "SafeHomePage"

    sput-object v0, Lcom/lenovo/safecenter/Laboratory/SafeHomePageBroadcast;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    return-void
.end method
