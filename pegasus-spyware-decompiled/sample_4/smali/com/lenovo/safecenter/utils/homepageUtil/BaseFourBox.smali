.class public abstract Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;
.super Ljava/lang/Object;
.source "BaseFourBox.java"


# static fields
.field protected static mSp:Landroid/content/SharedPreferences;


# instance fields
.field protected idIcon:I

.field protected mContext:Landroid/content/Context;

.field protected mIsNew:Z

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "idIcon"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->mIsNew:Z

    .line 23
    iput p1, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->idIcon:I

    .line 24
    iput-object p2, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->mTitle:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/lenovo/safecenter/utils/homepageUtil/BaseFourBox;->mSp:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract getView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract onClick()V
.end method
