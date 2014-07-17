.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v0

    return-object v0
.end method

.method public static createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 3

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getHeight()I

    move-result v1

    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {v2, v0, v1, p0, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-object v2
.end method

.method public static createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureRegionSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v0

    return-object v0
.end method

.method public static createForTextureRegionSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 3

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v1

    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {v2, v0, v1, p0, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-object v2
.end method
