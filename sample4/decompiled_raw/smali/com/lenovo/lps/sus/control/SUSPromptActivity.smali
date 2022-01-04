.class public Lcom/lenovo/lps/sus/control/SUSPromptActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Landroid/os/Handler;

.field private static j:Landroid/app/AlertDialog;


# instance fields
.field private k:Landroid/content/Context;

.field private l:Z

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SUS_VERSIONUPDATE"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a:Ljava/lang/String;

    const-string v0, "layout"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->b:Ljava/lang/String;

    const-string v0, "sus_updateinfo_dialog"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->c:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->d:Ljava/lang/String;

    const-string v0, "SUS_newversioninfo"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->e:Ljava/lang/String;

    const-string v0, "SUS_versiondescribe"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->f:Ljava/lang/String;

    const-string v0, "versioninfo"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->g:Ljava/lang/String;

    const-string v0, "newversioncode"

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->h:Ljava/lang/String;

    sput-object v1, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->i:Landroid/os/Handler;

    sput-object v1, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->k:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    iput-boolean v1, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->m:Z

    iput v1, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->n:I

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/lenovo/lps/sus/control/SUSPromptActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    return-void
.end method

.method static synthetic b()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUSPromptActivity finish isAbortUpdateFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CONFIRM:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/ae;->a(Lcom/lenovo/lps/sus/EventType;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    sget-object v0, Lcom/lenovo/lps/sus/EventType;->SUS_UPDATEPROMPT_USER_CANCEL:Lcom/lenovo/lps/sus/EventType;

    invoke-static {v0}, Lcom/lenovo/lps/sus/control/ae;->a(Lcom/lenovo/lps/sus/EventType;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/provider/Settings$System;

    invoke-direct {v0}, Landroid/provider/Settings$System;-><init>()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity .onCreate() begin"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v9}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->requestWindowFeature(I)Z

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "UPDATE_DESC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "showUserSettingsEnable"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-object p0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->k:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->n:I

    const-string v0, "SUS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SUSPromptActivity onCreate() orientation="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->n:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->m:Z

    const-string v0, "usersettings"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/b/c;->c(I)Lcom/lenovo/lps/sus/b/d;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v6, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->b:Ljava/lang/String;

    sget-object v7, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->c:Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->a:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "SUS"

    const-string v7, "SUSPromptActivity popupPromptionDialog create"

    invoke-static {v0, v7}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SUS_UPDATE"

    invoke-static {p0, v0}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/lenovo/lps/sus/control/a;

    invoke-direct {v7, p0}, Lcom/lenovo/lps/sus/control/a;-><init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V

    invoke-virtual {v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "SUS_CANCEL"

    invoke-static {p0, v0}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/lenovo/lps/sus/control/u;

    invoke-direct {v7, p0}, Lcom/lenovo/lps/sus/control/u;-><init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V

    invoke-virtual {v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/lenovo/lps/sus/control/s;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/sus/control/s;-><init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    new-instance v6, Lcom/lenovo/lps/sus/control/q;

    invoke-direct {v6, p0}, Lcom/lenovo/lps/sus/control/q;-><init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    new-instance v6, Lcom/lenovo/lps/sus/control/o;

    invoke-direct {v6, p0}, Lcom/lenovo/lps/sus/control/o;-><init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "SUS"

    const-string v1, "null == myCustomDialog!!!"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    sget-object v6, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->d:Ljava/lang/String;

    sget-object v7, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->e:Ljava/lang/String;

    invoke-static {p0, v6, v7}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->h()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    sget-object v3, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->d:Ljava/lang/String;

    sget-object v6, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->f:Ljava/lang/String;

    invoke-static {p0, v3, v6}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_3
    if-eqz v5, :cond_5

    invoke-static {}, Lcom/lenovo/lps/sus/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    const-string v1, "id"

    const-string v3, "usersettings_newverprompt_checkbox"

    invoke-static {p0, v1, v3}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SUS_SETTINGS_NEWVERPROMPT"

    invoke-static {p0, v3}, Lcom/lenovo/lps/sus/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/lenovo/lps/sus/b/d;->b:Lcom/lenovo/lps/sus/b/d;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    new-instance v1, Lcom/lenovo/lps/sus/control/ad;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/lps/sus/control/ad;-><init>(Lcom/lenovo/lps/sus/control/SUSPromptActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    const-string v1, "id"

    const-string v2, "usersettings_newverprompt_checkbox"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lps/sus/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUSPromptActivity onDestroy myContext="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->k:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SUS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SUSPromptActivity onDestroy() orientation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; currentOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->l:Z

    invoke-static {}, Lcom/lenovo/lps/sus/control/ae;->b()V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->k:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object v4, p0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->k:Landroid/content/Context;

    :cond_1
    const-string v0, "SUS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SUSPromptActivity onDestroy myCustomDialog="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    sput-object v4, Lcom/lenovo/lps/sus/control/SUSPromptActivity;->j:Landroid/app/AlertDialog;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity onPause"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity onRestart"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity onResume"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity onStart"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "SUS"

    const-string v1, "SUSPromptActivity onStop"

    invoke-static {v0, v1}, Lcom/lenovo/lps/sus/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
