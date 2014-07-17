.class public Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;
.super Lorg/anddev/andengine/entity/scene/background/SpriteBackground;


# instance fields
.field private mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private final mScale:F


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;-><init>(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;F)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    iput p5, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->loadSprite(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    return-void
.end method

.method private loadSprite(FFLorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-interface {p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getWidth()I

    move-result v2

    invoke-interface {p4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getHeight()I

    move-result v3

    sget-object v4, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v5, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v0, p4, v6, v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v5

    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    div-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5, v2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setWidth(I)V

    invoke-virtual {v5, v4}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setHeight(I)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {p3, v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    int-to-float v3, v2

    int-to-float v4, v4

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v0, v1, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleCenter(FF)V

    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mScale:F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    return-object v0
.end method


# virtual methods
.method public getBitmapTextureAtlas()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/RepeatingSpriteBackground;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    return-object v0
.end method
