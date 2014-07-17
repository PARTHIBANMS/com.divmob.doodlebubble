.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Z)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            "A::",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;>(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
            "<TT;TA;>;TT;Z)",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {p0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method

.method public static createTiledFromSource(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZ)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            "A::",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;>(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
            "<TT;TA;>;TT;IIZ)",
            "Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    move-object v1, p0

    move v3, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$2;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    invoke-virtual {p0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, p4}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method
