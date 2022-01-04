.class public Lcom/lenovo/safecenter/utils/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static CALL_NOTI_ID:I = 0x0

.field public static final HAS_NOREAD:I = 0x1

.field public static final IS_READ:I = 0x0

.field public static final MENU_ALREADY:I = 0x2

.field public static final MENU_CANCEL:I = 0x8

.field public static final MENU_CancelAll:I = 0x6

.field public static final MENU_DEIT:I = 0x4

.field public static final MENU_DEL:I = 0x0

.field public static final MENU_RECOVER:I = 0x1

.field public static final MENU_SUMBIT:I = 0x7

.field public static final MENU_SelectAll:I = 0x5

.field public static final SETTING:I = 0x9

.field public static SMS_NOTI_ID:I

.field public static callcount:I

.field public static smscount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/lenovo/safecenter/utils/Constant;->smscount:I

    .line 17
    sput v0, Lcom/lenovo/safecenter/utils/Constant;->callcount:I

    .line 18
    const/16 v0, 0x1f4

    sput v0, Lcom/lenovo/safecenter/utils/Constant;->CALL_NOTI_ID:I

    .line 19
    const/16 v0, 0x1f9

    sput v0, Lcom/lenovo/safecenter/utils/Constant;->SMS_NOTI_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
