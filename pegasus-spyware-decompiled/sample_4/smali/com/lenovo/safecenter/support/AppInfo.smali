.class public Lcom/lenovo/safecenter/support/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appType:Ljava/lang/String;

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public className:Ljava/lang/String;

.field public hidetype:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public image:I

.field public isupload:I

.field public movetoSDcrad:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public perName:Ljava/lang/String;

.field public permDes:Ljava/lang/String;

.field public pid:I

.field public selected:I

.field public suggest:I

.field public trusted:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 14
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 15
    iput v1, p0, Lcom/lenovo/safecenter/support/AppInfo;->hidetype:I

    .line 25
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->isupload:I

    .line 26
    iput v1, p0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "selected"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "appType"    # Ljava/lang/String;
    .param p7, "perName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 14
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 15
    iput v1, p0, Lcom/lenovo/safecenter/support/AppInfo;->hidetype:I

    .line 25
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->isupload:I

    .line 26
    iput v1, p0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    .line 31
    iput p1, p0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 32
    iput-object p2, p0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 34
    iput-object p4, p0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    iput-object p6, p0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "selected"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "appType"    # Ljava/lang/String;
    .param p7, "perName"    # Ljava/lang/String;
    .param p8, "movetoSDcard"    # Z

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 14
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->trusted:I

    .line 15
    iput v1, p0, Lcom/lenovo/safecenter/support/AppInfo;->hidetype:I

    .line 25
    iput v0, p0, Lcom/lenovo/safecenter/support/AppInfo;->isupload:I

    .line 26
    iput v1, p0, Lcom/lenovo/safecenter/support/AppInfo;->suggest:I

    .line 42
    iput p1, p0, Lcom/lenovo/safecenter/support/AppInfo;->uid:I

    .line 43
    iput-object p2, p0, Lcom/lenovo/safecenter/support/AppInfo;->name:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/lenovo/safecenter/support/AppInfo;->selected:I

    .line 45
    iput-object p4, p0, Lcom/lenovo/safecenter/support/AppInfo;->packageName:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/lenovo/safecenter/support/AppInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    iput-object p6, p0, Lcom/lenovo/safecenter/support/AppInfo;->appType:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/lenovo/safecenter/support/AppInfo;->perName:Ljava/lang/String;

    .line 49
    iput-boolean p8, p0, Lcom/lenovo/safecenter/support/AppInfo;->movetoSDcrad:Z

    .line 50
    return-void
.end method
