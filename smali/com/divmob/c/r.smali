.class public Lcom/divmob/c/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field e:Landroid/graphics/Bitmap;

.field f:Ljava/lang/String;

.field g:Landroid/view/LayoutInflater;

.field h:Landroid/app/Activity;

.field i:Lcom/divmob/a/e;

.field j:Landroid/view/ViewGroup;

.field k:Lcom/divmob/c/x;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:Lcom/divmob/a/c;

.field v:Landroid/view/View$OnClickListener;

.field w:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "market://details?id=com.divmob.kidpuzzleworld"

    iput-object v0, p0, Lcom/divmob/c/r;->a:Ljava/lang/String;

    const-string v0, "http://divmob.com/api/more/index.php?pop=1"

    iput-object v0, p0, Lcom/divmob/c/r;->b:Ljava/lang/String;

    const-string v0, "http://divmob.com/api/more/index.php?pop=1&kid=1"

    iput-object v0, p0, Lcom/divmob/c/r;->c:Ljava/lang/String;

    const-string v0, "http://divmob.com/api/more/index.php?pop=1&amazon=1"

    iput-object v0, p0, Lcom/divmob/c/r;->d:Ljava/lang/String;

    new-instance v0, Lcom/divmob/c/s;

    invoke-direct {v0, p0}, Lcom/divmob/c/s;-><init>(Lcom/divmob/c/r;)V

    iput-object v0, p0, Lcom/divmob/c/r;->u:Lcom/divmob/a/c;

    new-instance v0, Lcom/divmob/c/v;

    invoke-direct {v0, p0}, Lcom/divmob/c/v;-><init>(Lcom/divmob/c/r;)V

    iput-object v0, p0, Lcom/divmob/c/r;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/divmob/c/w;

    invoke-direct {v0, p0}, Lcom/divmob/c/w;-><init>(Lcom/divmob/c/r;)V

    iput-object v0, p0, Lcom/divmob/c/r;->w:Landroid/view/View$OnClickListener;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/divmob/c/r;->n:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/divmob/c/r;->o:I

    iput-object p1, p0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/divmob/c/r;->j:Landroid/view/ViewGroup;

    new-instance v0, Lcom/divmob/c/x;

    invoke-direct {v0, p1}, Lcom/divmob/c/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    iget-object v0, p0, Lcom/divmob/c/r;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    iget-object v1, p0, Lcom/divmob/c/r;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/divmob/c/x;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/divmob/c/x;->setVisibility(I)V

    new-instance v0, Lcom/divmob/a/e;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/c/r;->u:Lcom/divmob/a/c;

    invoke-direct {v0, v1, v2}, Lcom/divmob/a/e;-><init>(Landroid/content/Context;Lcom/divmob/a/c;)V

    iput-object v0, p0, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    iget-object v0, p0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/divmob/listapp/a$b;->banner_default1:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/r;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/divmob/c/r;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/divmob/c/r;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/divmob/c/r;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/divmob/c/r;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/divmob/c/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/c/r;->g()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget v0, p0, Lcom/divmob/c/r;->p:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/divmob/c/r;->q:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/divmob/c/r;->p:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/divmob/c/r;->q:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/16 v2, 0x5a

    iget v0, p0, Lcom/divmob/c/r;->p:I

    iget v1, p0, Lcom/divmob/c/r;->q:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p1, v2}, Lcom/divmob/a/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget v0, p0, Lcom/divmob/c/r;->p:I

    iget v1, p0, Lcom/divmob/c/r;->q:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1, v2}, Lcom/divmob/a/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static synthetic b(Lcom/divmob/c/r;Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/divmob/c/r;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    iget v1, p0, Lcom/divmob/c/r;->r:I

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/c/r;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/divmob/c/x;->a(FF)V

    invoke-direct {p0}, Lcom/divmob/c/r;->g()V

    iget-object v0, p0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/more/index.php?pop=1"

    invoke-direct {v0, v3, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    :cond_0
    iget-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    invoke-virtual {v0, v3}, Lcom/divmob/c/x;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    iget v1, p0, Lcom/divmob/c/r;->r:I

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/c/r;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/divmob/c/x;->a(FF)V

    invoke-direct {p0}, Lcom/divmob/c/r;->g()V

    iget-object v0, p0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/more/index.php?pop=1&kid=1"

    invoke-direct {v0, v3, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    :cond_0
    iget-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    invoke-virtual {v0, v3}, Lcom/divmob/c/x;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    iget v1, p0, Lcom/divmob/c/r;->r:I

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/c/r;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/divmob/c/x;->a(FF)V

    invoke-direct {p0}, Lcom/divmob/c/r;->g()V

    iget-object v0, p0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/more/index.php?pop=1&amazon=1"

    invoke-direct {v0, v3, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    :cond_0
    iget-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    invoke-virtual {v0, v3}, Lcom/divmob/c/x;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/divmob/c/r;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/divmob/a/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/divmob/c/r;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/divmob/c/r;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/divmob/c/r;->p:I

    iget v3, p0, Lcom/divmob/c/r;->q:I

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/divmob/a/b;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    invoke-virtual {v1, v0}, Lcom/divmob/c/x;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/c/r;->p:I

    iput v0, p0, Lcom/divmob/c/r;->q:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/r;->e()V

    :cond_0
    return-void
.end method

.method public a(IFFFF)V
    .locals 2

    iget v0, p0, Lcom/divmob/c/r;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->r:I

    iget v0, p0, Lcom/divmob/c/r;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->s:I

    iget v0, p0, Lcom/divmob/c/r;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->p:I

    iget v0, p0, Lcom/divmob/c/r;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->q:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/r;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v5, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v3, v2

    move v4, v0

    move v0, v2

    :goto_0
    if-ne v4, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "link"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    const-string v6, "banner"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "link"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    const-string v6, "banner"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_2

    :pswitch_2
    if-eqz v3, :cond_4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/divmob/c/r;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/divmob/c/r;->m:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/c/r;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/divmob/c/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/divmob/c/r;->l:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/divmob/c/r;->a:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    invoke-virtual {v0}, Lcom/divmob/c/x;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/c/r;->t:Z

    iget-object v0, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/divmob/c/x;->setVisibility(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/c/r;->p:I

    iput v0, p0, Lcom/divmob/c/r;->q:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/r;->f()V

    :cond_0
    return-void
.end method

.method public b(IFFFF)V
    .locals 2

    iget v0, p0, Lcom/divmob/c/r;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->r:I

    iget v0, p0, Lcom/divmob/c/r;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->s:I

    iget v0, p0, Lcom/divmob/c/r;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->p:I

    iget v0, p0, Lcom/divmob/c/r;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->q:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/r;->e()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/divmob/c/r;->j:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/divmob/c/r;->k:Lcom/divmob/c/x;

    iget-object v0, p0, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    invoke-virtual {v0}, Lcom/divmob/a/e;->b()V

    iput-object v1, p0, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    iput-object v1, p0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    iget-object v0, p0, Lcom/divmob/c/r;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/c/r;->p:I

    iput v0, p0, Lcom/divmob/c/r;->q:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/r;->d()V

    :cond_0
    return-void
.end method

.method public c(IFFFF)V
    .locals 2

    iget v0, p0, Lcom/divmob/c/r;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->r:I

    iget v0, p0, Lcom/divmob/c/r;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->s:I

    iget v0, p0, Lcom/divmob/c/r;->o:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->p:I

    iget v0, p0, Lcom/divmob/c/r;->n:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/r;->q:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/r;->f()V

    :cond_0
    return-void
.end method
