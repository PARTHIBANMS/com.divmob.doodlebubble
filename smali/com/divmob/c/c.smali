.class public Lcom/divmob/c/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/app/Dialog;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/view/LayoutInflater;

.field d:Landroid/app/Activity;

.field e:Lcom/divmob/a/e;

.field f:Landroid/widget/ImageView;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:I

.field m:I

.field final n:F

.field o:Z

.field final p:F

.field q:Ljava/lang/String;

.field r:I

.field s:Landroid/view/View;

.field t:I

.field u:Ljava/lang/String;

.field final v:Ljava/lang/String;

.field final w:Ljava/lang/String;

.field x:Lcom/divmob/a/c;

.field y:Landroid/view/View$OnClickListener;

.field z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4170

    iput v0, p0, Lcom/divmob/c/c;->n:F

    iput-boolean v2, p0, Lcom/divmob/c/c;->o:Z

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/divmob/c/c;->p:F

    const-string v0, ""

    iput-object v0, p0, Lcom/divmob/c/c;->q:Ljava/lang/String;

    iput v2, p0, Lcom/divmob/c/c;->r:I

    iput-object v4, p0, Lcom/divmob/c/c;->s:Landroid/view/View;

    iput v2, p0, Lcom/divmob/c/c;->t:I

    const-string v0, "market://details?id=com.divmob.aodonline"

    iput-object v0, p0, Lcom/divmob/c/c;->u:Ljava/lang/String;

    const-string v0, "http://divmob.com/api/morev2/index.php?package=%s&landscape=%d"

    iput-object v0, p0, Lcom/divmob/c/c;->v:Ljava/lang/String;

    const-string v0, "http://divmob.com/api/morev2/index.php?package=%s&landscape=%d&amazon=1"

    iput-object v0, p0, Lcom/divmob/c/c;->w:Ljava/lang/String;

    new-instance v0, Lcom/divmob/c/d;

    invoke-direct {v0, p0}, Lcom/divmob/c/d;-><init>(Lcom/divmob/c/c;)V

    iput-object v0, p0, Lcom/divmob/c/c;->x:Lcom/divmob/a/c;

    new-instance v0, Lcom/divmob/c/g;

    invoke-direct {v0, p0}, Lcom/divmob/c/g;-><init>(Lcom/divmob/c/c;)V

    iput-object v0, p0, Lcom/divmob/c/c;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/divmob/c/h;

    invoke-direct {v0, p0}, Lcom/divmob/c/h;-><init>(Lcom/divmob/c/c;)V

    iput-object v0, p0, Lcom/divmob/c/c;->z:Landroid/view/View$OnClickListener;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/divmob/c/c;->j:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/divmob/c/c;->k:I

    iput-object p1, p0, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/divmob/c/c;->t:I

    iget v0, p0, Lcom/divmob/c/c;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/divmob/c/c;->r:I

    iget-object v0, p0, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/divmob/listapp/a$b;->banner_default1:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/c;->b:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/divmob/listapp/a$g;->Dialog:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/c;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/divmob/c/c;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/divmob/listapp/a$d;->popup_dialog:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/c;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/divmob/c/c;->s:Landroid/view/View;

    sget v1, Lcom/divmob/listapp/a$c;->btnBanner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/divmob/c/c;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/divmob/c/c;->s:Landroid/view/View;

    sget v1, Lcom/divmob/listapp/a$c;->btnClose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/c/c;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/divmob/c/c;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/divmob/c/c;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/divmob/c/c;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/divmob/a/e;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/c/c;->x:Lcom/divmob/a/c;

    invoke-direct {v0, v1, v2}, Lcom/divmob/a/e;-><init>(Landroid/content/Context;Lcom/divmob/a/c;)V

    iput-object v0, p0, Lcom/divmob/c/c;->e:Lcom/divmob/a/e;

    iget-object v0, p0, Lcom/divmob/c/c;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/divmob/c/c;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/divmob/c/c;->o:Z

    iget-object v0, p0, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/c;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/divmob/c/c;->f()V

    return-void

    :cond_1
    iget v0, p0, Lcom/divmob/c/c;->t:I

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/divmob/c/c;->r:I

    iget-object v0, p0, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/divmob/listapp/a$b;->banner_default0:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/c/c;->b:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static synthetic a(Lcom/divmob/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/c/c;->g()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/c/c;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/divmob/c/c;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget v0, p0, Lcom/divmob/c/c;->l:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/divmob/c/c;->m:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/divmob/c/c;->l:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/divmob/c/c;->m:I

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

.method private b(Landroid/graphics/Bitmap;)V
    .locals 6

    const v5, 0x3f4ccccd

    iget-boolean v0, p0, Lcom/divmob/c/c;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/divmob/c/c;->l:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/divmob/c/c;->m:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    iget v3, p0, Lcom/divmob/c/c;->k:I

    iget v4, p0, Lcom/divmob/c/c;->j:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/divmob/c/c;->k:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v0

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/c;->l:I

    float-to-int v0, v1

    iput v0, p0, Lcom/divmob/c/c;->m:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/divmob/c/c;->j:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/c;->l:I

    float-to-int v0, v1

    iput v0, p0, Lcom/divmob/c/c;->m:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/divmob/c/c;Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/divmob/c/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/morev2/index.php?package=%s&landscape=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/divmob/c/c;->q:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/divmob/c/c;->r:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/c;->e:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/divmob/c/c;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/divmob/c/c;->b(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/divmob/c/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/divmob/c/c;->l:I

    iget v3, p0, Lcom/divmob/c/c;->m:I

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/divmob/a/b;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/divmob/c/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/c/c;->l:I

    iput v0, p0, Lcom/divmob/c/c;->m:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/divmob/c/c;->c()V

    :cond_0
    return-void
.end method

.method public a(IFF)V
    .locals 2

    iget v0, p0, Lcom/divmob/c/c;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/c;->l:I

    iget v0, p0, Lcom/divmob/c/c;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/c;->m:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/divmob/c/c;->b()V

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

    iput-object v4, p0, Lcom/divmob/c/c;->h:Ljava/lang/String;
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

    iput-object v4, p0, Lcom/divmob/c/c;->i:Ljava/lang/String;
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

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/divmob/c/c;->g()V

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/divmob/c/c;->b()V

    return-void
.end method

.method public b(IFF)V
    .locals 2

    iget v0, p0, Lcom/divmob/c/c;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/c;->l:I

    iget v0, p0, Lcom/divmob/c/c;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/divmob/c/c;->m:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/divmob/c/c;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/divmob/a/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/c/c;->g()V

    new-instance v0, Lcom/divmob/a/h$a;

    const-string v1, "banner"

    const-string v2, "http://divmob.com/api/morev2/index.php?package=%s&landscape=%d&amazon=1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/divmob/c/c;->q:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/divmob/c/c;->r:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/c;->e:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lcom/divmob/c/c;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/divmob/c/c;->e:Lcom/divmob/a/e;

    invoke-virtual {v0}, Lcom/divmob/a/e;->b()V

    iput-object v1, p0, Lcom/divmob/c/c;->e:Lcom/divmob/a/e;

    iput-object v1, p0, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/divmob/c/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
