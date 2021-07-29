.class public Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;
.super Ljava/lang/Object;
.source "ResolveModel.java"


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public mainname:Ljava/lang/String;

.field public memsize:I

.field public name:Ljava/lang/String;

.field public packagename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMainname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->mainname:Ljava/lang/String;

    return-object v0
.end method

.method public getMemzise()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->memsize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 25
    return-void
.end method

.method public setMainname(Ljava/lang/String;)V
    .locals 0
    .param p1, "mainname"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->mainname:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMemzise(I)V
    .locals 0
    .param p1, "memsize"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->memsize:I

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/safecenter/floatwindow/model/ResolveModel;->packagename:Ljava/lang/String;

    .line 42
    return-void
.end method
