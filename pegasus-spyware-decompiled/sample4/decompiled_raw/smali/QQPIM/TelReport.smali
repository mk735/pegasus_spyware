.class public final LQQPIM/TelReport;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic a:Z


# instance fields
.field public calltime:I

.field public phonenum:Ljava/lang/String;

.field public talktime:I

.field public teltype:I

.field public useraction:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/TelReport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/TelReport;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    sget-object v0, LQQPIM/EUserAction;->EMUA_MIN:LQQPIM/EUserAction;

    invoke-virtual {v0}, LQQPIM/EUserAction;->value()I

    move-result v0

    iput v0, p0, LQQPIM/TelReport;->useraction:I

    iput v1, p0, LQQPIM/TelReport;->teltype:I

    iput v1, p0, LQQPIM/TelReport;->talktime:I

    iput v1, p0, LQQPIM/TelReport;->calltime:I

    iget-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    iput-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    iget v0, p0, LQQPIM/TelReport;->useraction:I

    iput v0, p0, LQQPIM/TelReport;->useraction:I

    iget v0, p0, LQQPIM/TelReport;->teltype:I

    iput v0, p0, LQQPIM/TelReport;->teltype:I

    iget v0, p0, LQQPIM/TelReport;->talktime:I

    iput v0, p0, LQQPIM/TelReport;->talktime:I

    iget v0, p0, LQQPIM/TelReport;->calltime:I

    iput v0, p0, LQQPIM/TelReport;->calltime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    sget-object v0, LQQPIM/EUserAction;->EMUA_MIN:LQQPIM/EUserAction;

    invoke-virtual {v0}, LQQPIM/EUserAction;->value()I

    move-result v0

    iput v0, p0, LQQPIM/TelReport;->useraction:I

    iput v1, p0, LQQPIM/TelReport;->teltype:I

    iput v1, p0, LQQPIM/TelReport;->talktime:I

    iput v1, p0, LQQPIM/TelReport;->calltime:I

    iput-object p1, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    iput p2, p0, LQQPIM/TelReport;->useraction:I

    iput p3, p0, LQQPIM/TelReport;->teltype:I

    iput p4, p0, LQQPIM/TelReport;->talktime:I

    iput p5, p0, LQQPIM/TelReport;->calltime:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.TelReport"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/TelReport;->a:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    const-string v2, "phonenum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/TelReport;->useraction:I

    const-string v2, "useraction"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/TelReport;->teltype:I

    const-string v2, "teltype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/TelReport;->talktime:I

    const-string v2, "talktime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/TelReport;->calltime:I

    const-string v2, "calltime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/TelReport;

    iget-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/TelReport;->useraction:I

    iget v1, p1, LQQPIM/TelReport;->useraction:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/TelReport;->teltype:I

    iget v1, p1, LQQPIM/TelReport;->teltype:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/TelReport;->talktime:I

    iget v1, p1, LQQPIM/TelReport;->talktime:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/TelReport;->calltime:I

    iget v1, p1, LQQPIM/TelReport;->calltime:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCalltime()I
    .locals 1

    iget v0, p0, LQQPIM/TelReport;->calltime:I

    return v0
.end method

.method public final getPhonenum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public final getTalktime()I
    .locals 1

    iget v0, p0, LQQPIM/TelReport;->talktime:I

    return v0
.end method

.method public final getTeltype()I
    .locals 1

    iget v0, p0, LQQPIM/TelReport;->teltype:I

    return v0
.end method

.method public final getUseraction()I
    .locals 1

    iget v0, p0, LQQPIM/TelReport;->useraction:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    iget v0, p0, LQQPIM/TelReport;->useraction:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TelReport;->useraction:I

    iget v0, p0, LQQPIM/TelReport;->teltype:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TelReport;->teltype:I

    iget v0, p0, LQQPIM/TelReport;->talktime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TelReport;->talktime:I

    iget v0, p0, LQQPIM/TelReport;->calltime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TelReport;->calltime:I

    return-void
.end method

.method public final setCalltime(I)V
    .locals 0

    iput p1, p0, LQQPIM/TelReport;->calltime:I

    return-void
.end method

.method public final setPhonenum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    return-void
.end method

.method public final setTalktime(I)V
    .locals 0

    iput p1, p0, LQQPIM/TelReport;->talktime:I

    return-void
.end method

.method public final setTeltype(I)V
    .locals 0

    iput p1, p0, LQQPIM/TelReport;->teltype:I

    return-void
.end method

.method public final setUseraction(I)V
    .locals 0

    iput p1, p0, LQQPIM/TelReport;->useraction:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/TelReport;->useraction:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/TelReport;->teltype:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/TelReport;->talktime:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/TelReport;->calltime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
