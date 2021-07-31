.class public Lcom/lenovo/safecenter/net/support/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public item_3g:J

.field public last_received:J

.field public last_sent:J

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pname:Ljava/lang/String;

.field public received:J

.field public running:Z

.field public selected:Z

.field public sent:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/support/AppInfo;->running:Z

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "selected"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/safecenter/net/support/AppInfo;->running:Z

    .line 46
    iput p1, p0, Lcom/lenovo/safecenter/net/support/AppInfo;->uid:I

    .line 47
    iput-object p2, p0, Lcom/lenovo/safecenter/net/support/AppInfo;->name:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/lenovo/safecenter/net/support/AppInfo;->selected:Z

    .line 49
    iput-object p4, p0, Lcom/lenovo/safecenter/net/support/AppInfo;->packageName:Ljava/lang/String;

    .line 51
    return-void
.end method
