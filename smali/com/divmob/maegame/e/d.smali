.class public Lcom/divmob/maegame/e/d;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;-><init>()V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZI)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            ">(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIZI)",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    add-int v2, p2, p5

    add-int v3, p3, p5

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v1

    mul-int/lit8 v4, p5, 0x2

    sub-int v4, v1, v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v1

    mul-int/lit8 v5, p5, 0x2

    sub-int v5, v1, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionX()I

    move-result v1

    sub-int/2addr v1, p5

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getTexturePositionY()I

    move-result v2

    sub-int/2addr v2, p5

    invoke-interface {p0, p1, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    invoke-virtual {v0, p4}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;IIII)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0, p3, p4, p5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 3

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0, p3, p4, p5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6

    sget-boolean v4, Lcom/divmob/maegame/e/d;->sCreateTextureRegionBuffersManaged:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZI)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0, p3}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 3

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0, p3}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1

    sget-boolean v0, Lcom/divmob/maegame/e/d;->sCreateTextureRegionBuffersManaged:Z

    invoke-static {p0, p1, v0, p2}, Lcom/divmob/maegame/e/a;->a(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;ZI)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
            ">(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;IIZIII)",
            "Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    add-int v2, p2, p7

    add-int v3, p3, p7

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v1

    mul-int/lit8 v4, p7, 0x2

    sub-int v4, v1, v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v1

    mul-int/lit8 v5, p7, 0x2

    sub-int v5, v1, v5

    move-object v1, p0

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIIIII)V

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionX()I

    move-result v1

    sub-int/2addr v1, p7

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTexturePositionY()I

    move-result v2

    sub-int/2addr v2, p7

    invoke-interface {p0, p1, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    invoke-virtual {v0, p4}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setTextureRegionBufferManaged(Z)V

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;IIIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v1, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 7

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8

    sget-boolean v4, Lcom/divmob/maegame/e/d;->sCreateTextureRegionBuffersManaged:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    invoke-direct {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0, p3, p4, p5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;III)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 3

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0, p3, p4, p5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6

    sget-boolean v4, Lcom/divmob/maegame/e/d;->sCreateTextureRegionBuffersManaged:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/divmob/maegame/e/a;->a(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIZI)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method
