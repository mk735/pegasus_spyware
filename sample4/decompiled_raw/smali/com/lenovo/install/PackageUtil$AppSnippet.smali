.class public Lcom/lenovo/install/PackageUtil$AppSnippet;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/install/PackageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/lenovo/install/PackageUtil$AppSnippet;->a:Ljava/lang/CharSequence;

    .line 161
    iput-object p2, p0, Lcom/lenovo/install/PackageUtil$AppSnippet;->b:Landroid/graphics/drawable/Drawable;

    .line 162
    return-void
.end method
