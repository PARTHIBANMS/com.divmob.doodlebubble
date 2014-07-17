.class public Lcom/divmob/d/a;
.super Lorg/anddev/andengine/entity/scene/Scene;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/divmob/d/a$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static c:[Ljava/lang/String;

.field private static d:I

.field private static e:[[Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field private static g:[Ljava/lang/String;

.field private static h:[Ljava/lang/String;


# instance fields
.field private i:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private j:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

.field private l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private m:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private n:Z

.field private o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x320

    sput v0, Lcom/divmob/d/a;->a:I

    const/16 v0, 0x1e0

    sput v0, Lcom/divmob/d/a;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/ui/activity/BaseGameActivity;IIFZ)V
    .locals 9

    const/high16 v8, 0x4220

    const/high16 v7, 0x40a0

    const/high16 v4, 0x437f

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object p1, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    sput p2, Lcom/divmob/d/a;->a:I

    sput p3, Lcom/divmob/d/a;->b:I

    iput p4, p0, Lcom/divmob/d/a;->o:F

    const v0, 0x666666

    new-instance v1, Lorg/anddev/andengine/entity/scene/background/ColorBackground;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v2, v3, v0}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    invoke-virtual {p0, v1}, Lcom/divmob/d/a;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    invoke-direct {p0}, Lcom/divmob/d/a;->d()V

    new-instance v1, Lcom/divmob/d/b;

    iget-object v0, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, p0, v5, v5, v0}, Lcom/divmob/d/b;-><init>(Lcom/divmob/d/a;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {p0, v1}, Lcom/divmob/d/a;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->setOnSceneTouchListenerBindingEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->setTouchAreaBindingEnabled(Z)V

    invoke-virtual {p0}, Lcom/divmob/d/a;->setOnAreaTouchTraversalFrontToBack()V

    invoke-virtual {p0}, Lcom/divmob/d/a;->setOnAreaTouchTraversalFrontToBack()V

    new-instance v2, Lcom/divmob/d/c;

    invoke-direct {v2, p0, p0, p1}, Lcom/divmob/d/c;-><init>(Lcom/divmob/d/a;Lcom/divmob/d/a;Lorg/anddev/andengine/ui/activity/BaseGameActivity;)V

    const/high16 v0, 0x43f0

    invoke-virtual {v2, v0}, Lcom/divmob/d/a$a;->a(F)V

    if-eqz p5, :cond_0

    sget v0, Lcom/divmob/d/a;->a:I

    int-to-float v0, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v0, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    sget v0, Lcom/divmob/d/a;->a:I

    int-to-float v0, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    sub-float/2addr v0, v3

    sget v3, Lcom/divmob/d/a;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    mul-float/2addr v0, v6

    invoke-virtual {v2, v0, v8}, Lcom/divmob/d/a$a;->a(FF)V

    iget-object v0, p0, Lcom/divmob/d/a;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v3, Lcom/divmob/d/a;->a:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/divmob/d/a;->d:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    invoke-virtual {v0, v3, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    :goto_0
    iget-object v0, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/divmob/d/a$a;->a([Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {p0, v2}, Lcom/divmob/d/a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p0, v1}, Lcom/divmob/d/a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/d/a;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v0, Lcom/divmob/d/d;

    invoke-direct {v0, p0, v2}, Lcom/divmob/d/d;-><init>(Lcom/divmob/d/a;Lcom/divmob/d/a$a;)V

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v1, Lcom/divmob/d/a;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    sget v2, Lcom/divmob/d/a;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v7

    iget v3, p0, Lcom/divmob/d/a;->o:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void

    :cond_0
    sget v0, Lcom/divmob/d/a;->b:I

    int-to-float v0, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/divmob/d/a;->o:F

    sub-float/2addr v0, v3

    invoke-virtual {v1, v5, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    sget v0, Lcom/divmob/d/a;->a:I

    sget v3, Lcom/divmob/d/a;->d:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-virtual {v2, v0, v8}, Lcom/divmob/d/a$a;->a(FF)V

    iget-object v0, p0, Lcom/divmob/d/a;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v3, Lcom/divmob/d/a;->a:I

    sget v4, Lcom/divmob/d/a;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0, v3, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v5, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    rem-int v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    new-instance v1, Lcom/divmob/d/e;

    invoke-direct {v1, p0, p1}, Lcom/divmob/d/e;-><init>(Lcom/divmob/d/a;I)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/divmob/d/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/divmob/d/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/divmob/d/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/d/a;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/divmob/d/a;)Lorg/anddev/andengine/ui/activity/BaseGameActivity;
    .locals 1

    iget-object v0, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/divmob/d/a;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    iget-object v0, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method static synthetic c()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/divmob/d/a;->e:[[Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 10

    const/16 v9, 0x100

    const/16 v8, 0x200

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/divmob/d/a;->e()V

    const-string v0, "gfx/apppromote/"

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setAssetBasePath(Ljava/lang/String;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v3, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v2, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    sget-object v3, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v0, v2, v3, v1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    iget-object v3, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v3}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v3

    new-array v4, v6, [Lorg/anddev/andengine/opengl/texture/ITexture;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v7, v7, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/divmob/d/a;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    sget-object v0, Lcom/divmob/d/a;->e:[[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iput-object v0, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v8, v8, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v2, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    sget-object v3, Lcom/divmob/d/a;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v2, v3, v1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    iget-object v3, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v3}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v3

    new-array v4, v6, [Lorg/anddev/andengine/opengl/texture/ITexture;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    iget-object v0, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aput-object v2, v0, v1

    move v0, v1

    :goto_0
    sget-object v2, Lcom/divmob/d/a;->e:[[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v9, v8, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v2, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    sget-object v3, Lcom/divmob/d/a;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v2, v3, v1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v3, v7, v7, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v3, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v2

    new-array v3, v6, [Lorg/anddev/andengine/opengl/texture/ITexture;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v2, 0x80

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v9, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v2, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    sget-object v3, Lcom/divmob/d/a;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v2, v3, v1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, -0x3b86

    invoke-direct {v3, v4, v7, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v3, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v2}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v2

    new-array v3, v6, [Lorg/anddev/andengine/opengl/texture/ITexture;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    const-string v0, "gfx/"

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setAssetBasePath(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v2, v8, v9, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v3, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    sget-object v4, Lcom/divmob/d/a;->e:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v2, v3, v4, v1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v3

    iget-object v4, p0, Lcom/divmob/d/a;->l:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    add-int/lit8 v5, v0, 0x1

    aput-object v3, v4, v5

    iget-object v3, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v3}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v3

    new-array v4, v6, [Lorg/anddev/andengine/opengl/texture/ITexture;

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private e()V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/divmob/d/a;->k:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-virtual {v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "gfx/apppromote/data.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mainapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/divmob/d/a;->c:[Ljava/lang/String;

    sget-object v4, Lcom/divmob/d/a;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "file"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->c:[Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "width"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->c:[Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v5, "playbtn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/divmob/d/a;->f:[Ljava/lang/String;

    sget-object v4, Lcom/divmob/d/a;->f:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "file"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->f:[Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "width"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->f:[Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v5, "loading"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/divmob/d/a;->g:[Ljava/lang/String;

    sget-object v4, Lcom/divmob/d/a;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "file"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->g:[Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "width"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->g:[Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    goto :goto_2

    :cond_4
    const-string v5, "promoteapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "width"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/divmob/d/a;->d:I

    const-string v4, "data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/divmob/d/a;->e:[[Ljava/lang/String;

    move v0, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget-object v6, Lcom/divmob/d/a;->e:[[Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "file"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "link"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    sget-object v4, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "width"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/divmob/d/a;->h:[Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "file"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 5

    const/high16 v4, 0x4120

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/d/a;->n:Z

    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    const/high16 v1, -0x3b86

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v1, Lcom/divmob/d/a;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    sget v2, Lcom/divmob/d/a;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget v3, p0, Lcom/divmob/d/a;->o:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    :cond_0
    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    new-instance v0, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    new-instance v1, Lcom/divmob/d/f;

    invoke-direct {v1, p0}, Lcom/divmob/d/f;-><init>(Lcom/divmob/d/a;)V

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v1, p0, Lcom/divmob/d/a;->o:F

    sub-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    return-void
.end method

.method public a(Z)V
    .locals 5

    const/high16 v4, 0x4120

    iput-boolean p1, p0, Lcom/divmob/d/a;->n:Z

    iget-object v0, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/d/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    const/high16 v1, -0x3b86

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v1, Lcom/divmob/d/a;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    sget v2, Lcom/divmob/d/a;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget v3, p0, Lcom/divmob/d/a;->o:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    :cond_0
    iget-object v0, p0, Lcom/divmob/d/a;->i:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/divmob/d/a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public onPlayClicked()V
    .locals 0

    return-void
.end method
