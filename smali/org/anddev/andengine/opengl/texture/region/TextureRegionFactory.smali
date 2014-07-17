.class public Lorg/anddev/andengine/opengl/texture/region/TextureRegionFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZ)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            ">(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIZ)",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionX()I

    move-result v1

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v2

    invoke-interface {p0, p1, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    invoke-virtual {v0, p4}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method

.method public static createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIIZ)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            ">(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIIIZ)",
            "Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionX()I

    move-result v1

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionY()I

    move-result v2

    invoke-interface {p0, p1, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    invoke-virtual {v0, p6}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method

.method public static extractFromTexture(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIZ)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    invoke-virtual {v0, p5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method
