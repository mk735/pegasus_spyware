.class public Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
.super Ljava/lang/Object;
.source "ReaperAppManager.java"


# static fields
.field private static b:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->b:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->a:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->f:Ljava/util/Map;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->g:Z

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->b:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addCurrentActivitySeqNumber()V
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->d:I

    .line 84
    return-void
.end method

.method public addCurrentUserActionSeqNumber()V
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->e:I

    .line 96
    return-void
.end method

.method public getCurrentActivitySeqNumber()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->d:I

    return v0
.end method

.method public getCurrentUserActionSeqNumber()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->e:I

    return v0
.end method

.method public getFirstActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public getPageViewTimeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->f:Ljava/util/Map;

    return-object v0
.end method

.method public isTrackerInitialized()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->g:Z

    return v0
.end method

.method public noMoreActivity()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetCurrentActivitySeqNumber()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->d:I

    .line 88
    return-void
.end method

.method public resetCurrentUserActionSeqNumber()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->e:I

    .line 100
    return-void
.end method

.method public setFirstActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "firstActivity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->c:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method public setRecentTrackedPageview(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public setTrackerInitialized(Z)V
    .locals 0
    .param p1, "isInitialized"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->g:Z

    .line 37
    return-void
.end method
