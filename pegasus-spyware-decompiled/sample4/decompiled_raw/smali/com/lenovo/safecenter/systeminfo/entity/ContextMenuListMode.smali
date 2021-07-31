.class public Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;
.super Ljava/lang/Object;
.source "ContextMenuListMode.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextMenuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setContextMenuName(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/safecenter/systeminfo/entity/ContextMenuListMode;->a:Ljava/lang/String;

    .line 20
    return-void
.end method
