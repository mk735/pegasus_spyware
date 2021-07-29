.class final Ltms/em;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;


# instance fields
.field final synthetic a:Ltms/fo;

.field final synthetic b:Ltms/fo$b;


# direct methods
.method constructor <init>(Ltms/fo$b;Ltms/fo;)V
    .locals 0

    iput-object p1, p0, Ltms/em;->b:Ltms/fo$b;

    iput-object p2, p0, Ltms/em;->a:Ltms/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v0}, Ltms/fo$b;->b(Ltms/fo$b;)Ltms/fo$c;

    move-result-object v0

    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->a(Ltms/fo$b;)Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ltms/fo$c;->a(Landroid/app/Activity;Landroid/content/res/Resources$Theme;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->c(Ltms/fo$b;)Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_0
    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->d(Ltms/fo$b;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->b(Ltms/fo$b;)Ltms/fo$c;

    move-result-object v1

    invoke-virtual {v1}, Ltms/fo$c;->a()V

    return-object v0
.end method

.method public final inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v0}, Ltms/fo$b;->b(Ltms/fo$b;)Ltms/fo$c;

    move-result-object v0

    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->a(Ltms/fo$b;)Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ltms/fo$c;->a(Landroid/app/Activity;Landroid/content/res/Resources$Theme;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->d(Ltms/fo$b;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ltms/em;->b:Ltms/fo$b;

    invoke-static {v1}, Ltms/fo$b;->b(Ltms/fo$b;)Ltms/fo$c;

    move-result-object v1

    invoke-virtual {v1}, Ltms/fo$c;->a()V

    return-object v0
.end method
