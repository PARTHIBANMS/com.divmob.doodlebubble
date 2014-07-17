.class public Lcom/divmob/c/i;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Landroid/app/Dialog;

.field d:Landroid/view/LayoutInflater;

.field e:Landroid/app/Activity;

.field f:Lcom/divmob/a/e;

.field g:[Landroid/widget/ImageButton;

.field h:[Ljava/lang/String;

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/c/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/lang/String;

.field k:Lcom/divmob/a/c;

.field l:Landroid/view/View$OnClickListener;

.field m:Landroid/view/View$OnClickListener;

.field n:Landroid/view/View$OnClickListener;

.field o:Landroid/view/View$OnClickListener;

.field p:Landroid/content/DialogInterface$OnDismissListener;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZI)V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://divmob.com/api/morev2/index.php?package=%s&popexit=1"

    iput-object v0, p0, Lcom/divmob/c/i;->a:Ljava/lang/String;

    const-string v0, "http://divmob.com/api/morev2/index.php?package=%s&popexit=1&amazon=1"

    iput-object v0, p0, Lcom/divmob/c/i;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/divmob/c/i;->j:Ljava/lang/String;

    new-instance v0, Lcom/divmob/c/j;

    invoke-direct {v0, p0}, Lcom/divmob/c/j;-><init>(Lcom/divmob/c/i;)V

    iput-object v0, p0, Lcom/divmob/c/i;->k:Lcom/divmob/a/c;

    new-instance v0, Lcom/divmob/c/m;

    invoke-direct {v0, p0}, Lcom/divmob/c/m;-><init>(Lcom/divmob/c/i;)V

    iput-object v0, p0, Lcom/divmob/c/i;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/divmob/c/n;

    invoke-direct {v0, p0}, Lcom/divmob/c/n;-><init>(Lcom/divmob/c/i;)V

    iput-object v0, p0, Lcom/divmob/c/i;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/divmob/c/o;

    invoke-direct {v0, p0}, Lcom/divmob/c/o;-><init>(Lcom/divmob/c/i;)V

    iput-object v0, p0, Lcom/divmob/c/i;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/divmob/c/p;

    invoke-direct {v0, p0}, Lcom/divmob/c/p;-><init>(Lcom/divmob/c/i;)V

    iput-object v0, p0, Lcom/divmob/c/i;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/divmob/c/q;

    invoke-direct {v0, p0}, Lcom/divmob/c/q;-><init>(Lcom/divmob/c/i;)V

    iput-object v0, p0, Lcom/divmob/c/i;->p:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/i;->d:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/divmob/listapp/a$g;->Dialog_Quit:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    new-instance v0, Lcom/divmob/a/e;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/c/i;->k:Lcom/divmob/a/c;

    invoke-direct {v0, v1, v2}, Lcom/divmob/a/e;-><init>(Landroid/content/Context;Lcom/divmob/a/c;)V

    iput-object v0, p0, Lcom/divmob/c/i;->f:Lcom/divmob/a/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    new-array v0, v3, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/divmob/c/i;->h:[Ljava/lang/String;

    iput p3, p0, Lcom/divmob/c/i;->q:I

    iget-object v0, p0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/i;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/divmob/c/i;->f()V

    invoke-direct {p0}, Lcom/divmob/c/i;->e()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/c/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/c/i;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/divmob/c/i;->q:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/morev2/index.php?package=%s&popexit=1"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/divmob/c/i;->j:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/i;->f:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/morev2/index.php?package=%s&popexit=1&amazon=1"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/divmob/c/i;->j:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/i;->f:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/divmob/c/i;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/divmob/listapp/a$d;->popup_dialog_quit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    sget v0, Lcom/divmob/listapp/a$c;->btnBanner1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/divmob/c/i;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    sget v0, Lcom/divmob/listapp/a$c;->btnBanner2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    iget-object v2, p0, Lcom/divmob/c/i;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/divmob/listapp/a$c;->btnYes:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/divmob/c/i;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/divmob/listapp/a$c;->btnNo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/divmob/c/i;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/divmob/c/i;->p:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/divmob/c/i;->b()V

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v1, 0x0

    invoke-interface {v6, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v3, v2

    move v4, v1

    move v1, v2

    :goto_0
    if-ne v4, v5, :cond_0

    :goto_1
    return-void

    :cond_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "link"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    const-string v7, "banner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    const-string v7, "game"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/divmob/c/a;

    invoke-direct {v0}, Lcom/divmob/c/a;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "link"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    const-string v7, "banner"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    const-string v7, "game"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    if-eqz v3, :cond_6

    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/divmob/c/a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_1

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/divmob/c/a;->b:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/i;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/divmob/c/i;->f:Lcom/divmob/a/e;

    invoke-virtual {v0}, Lcom/divmob/a/e;->b()V

    iput-object v1, p0, Lcom/divmob/c/i;->f:Lcom/divmob/a/e;

    iput-object v1, p0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    return-void
.end method
