.class public abstract Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;
.super Ljava/lang/Object;
.source "BaseDrawer.java"


# static fields
.field protected static mSp:Landroid/content/SharedPreferences;


# instance fields
.field protected idIcon:I

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsNew:Z

.field protected mIsUp:Z

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "idIcon"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isUp"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mIsNew:Z

    .line 30
    new-instance v0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer$1;

    invoke-direct {v0, p0}, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer$1;-><init>(Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;)V

    iput-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mHandler:Landroid/os/Handler;

    .line 45
    iput p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->idIcon:I

    .line 46
    iput-object p2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mTitle:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mContext:Landroid/content/Context;

    .line 48
    iput-boolean p4, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mIsUp:Z

    .line 49
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mSp:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method


# virtual methods
.method public abstract getView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract onClick()V
.end method

.method public setBackgroundResource(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseDrawer;->mIsUp:Z

    if-eqz v0, :cond_0

    .line 54
    const v0, 0x7f020169

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const v0, 0x7f02015f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method
