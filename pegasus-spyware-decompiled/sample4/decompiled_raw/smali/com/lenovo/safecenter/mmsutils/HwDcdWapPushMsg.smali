.class public Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;
.super Ljava/lang/Object;
.source "HwDcdWapPushMsg.java"


# static fields
.field public static final ERR_TAG:Ljava/lang/String; = "HwDcdWapPushMsg.java"

.field public static WAP_PUSH_PRIO_CACHE:I

.field public static WAP_PUSH_PRIO_DELETE:I

.field public static WAP_PUSH_PRIO_HIGH:I

.field public static WAP_PUSH_PRIO_LOW:I

.field public static WAP_PUSH_PRIO_MEDIUM:I

.field public static WAP_PUSH_PRIO_NONE:I

.field public static WAP_PUSH_PROJECTION_HREF:I

.field public static WAP_PUSH_PROJECTION_PRIOR:I

.field public static WAP_PUSH_PROJECTION_SI_CREATED:I

.field public static WAP_PUSH_PROJECTION_SI_EXPIRED:I

.field public static WAP_PUSH_PROJECTION_SI_ID:I

.field public static WAP_PUSH_PROJECTION_SI_TEXT:I

.field public static WAP_PUSH_TYPE_SI:I

.field public static WAP_PUSH_TYPE_SL:I


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8
    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_TYPE_SI:I

    .line 9
    sput v1, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_TYPE_SL:I

    .line 11
    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_PRIOR:I

    .line 12
    sput v1, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_HREF:I

    .line 13
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_EXPIRED:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_CREATED:I

    .line 15
    const/4 v0, 0x4

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_ID:I

    .line 17
    const/4 v0, 0x5

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_NONE:I

    .line 18
    const/4 v0, 0x6

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_LOW:I

    .line 19
    const/4 v0, 0x7

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_MEDIUM:I

    .line 20
    const/16 v0, 0x8

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_HIGH:I

    .line 21
    const/16 v0, 0x9

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_DELETE:I

    .line 22
    const/16 v0, 0xa

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PRIO_CACHE:I

    .line 24
    const/16 v0, 0x64

    sput v0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->WAP_PUSH_PROJECTION_SI_TEXT:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->a:Ljava/util/HashMap;

    .line 30
    return-void
.end method


# virtual methods
.method public getAttributeValueString(I)Ljava/lang/String;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributeValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "attr"    # I
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/safecenter/mmsutils/HwDcdWapPushMsg;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
