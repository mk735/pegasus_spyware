.class public Lcom/lenovo/feedback2/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/feedback2/message/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/lenovo/feedback2/message/Message$1;

    invoke-direct {v0}, Lcom/lenovo/feedback2/message/Message$1;-><init>()V

    sput-object v0, Lcom/lenovo/feedback2/message/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/lenovo/feedback2/message/Message;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lenovo/feedback2/message/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/feedback2/message/Message;->d:[B

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/feedback2/message/Message;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/feedback2/message/Message;->a:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/feedback2/message/Message;->a:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/feedback2/message/Message;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/feedback2/message/Message;->c:I

    .line 75
    iget v0, p0, Lcom/lenovo/feedback2/message/Message;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/feedback2/message/Message;->d:[B

    .line 76
    iget-object v0, p0, Lcom/lenovo/feedback2/message/Message;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 77
    return-void
.end method

.method public setData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/feedback2/message/Message;->d:[B

    .line 35
    array-length v0, p1

    iput v0, p0, Lcom/lenovo/feedback2/message/Message;->c:I

    .line 36
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/feedback2/message/Message;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/feedback2/message/Message;->a:I

    .line 19
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/lenovo/feedback2/message/Message;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/feedback2/message/Message;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/lenovo/feedback2/message/Message;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/lenovo/feedback2/message/Message;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    return-void
.end method
