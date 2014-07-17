.class public Lcom/divmob/maegame/e/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;ZI)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            "A::",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;>(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
            "<TT;TA;>;TT;ZI)",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v1

    mul-int/lit8 v2, p3, 0x2

    sub-int v4, v1, v2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v1

    mul-int/lit8 v2, p3, 0x2

    sub-int v5, v1, v2

    move-object v1, p0

    move v2, p3

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    new-instance v1, Lcom/divmob/maegame/e/b;

    invoke-direct {v1, v0, p3}, Lcom/divmob/maegame/e/b;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;I)V

    invoke-virtual {p0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZI)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            "A::",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;>(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
            "<TT;TA;>;TT;IIZI)",
            "Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v1

    mul-int/lit8 v2, p5, 0x2

    sub-int v4, v1, v2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v1

    mul-int/lit8 v2, p5, 0x2

    sub-int v5, v1, v2

    move-object v1, p0

    move v2, p5

    move v3, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    new-instance v1, Lcom/divmob/maegame/e/c;

    invoke-direct {v1, v0, p5}, Lcom/divmob/maegame/e/c;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;I)V

    invoke-virtual {p0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, p4}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method
