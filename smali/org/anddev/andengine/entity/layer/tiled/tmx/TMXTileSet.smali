.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private final mFirstGlobalTileID:I

.field private mImageSource:Ljava/lang/String;

.field private final mMargin:I

.field private final mName:Ljava/lang/String;

.field private final mSpacing:I

.field private final mTMXTileProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field private final mTileHeight:I

.field private final mTileWidth:I

.field private mTilesHorizontal:I

.field private mTilesVertical:I


# direct methods
.method constructor <init>(ILorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    iput p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mName:Ljava/lang/String;

    const-string v0, "tilewidth"

    invoke-static {p2, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    const-string v0, "tileheight"

    invoke-static {p2, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    const-string v0, "spacing"

    invoke-static {p2, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    const-string v0, "margin"

    invoke-static {p2, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    return-void
.end method

.method constructor <init>(Lorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 2

    const-string v0, "firstgid"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;-><init>(ILorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-void
.end method

.method private static determineCount(IIII)I
    .locals 2

    const/4 v1, 0x0

    mul-int/lit8 v0, p2, 0x2

    sub-int v0, p0, v0

    :goto_0
    if-gtz v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addTMXTileProperty(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;-><init>()V

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getBitmapTextureAtlas()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    return-object v0
.end method

.method public final getFirstGlobalTileID()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    return v0
.end method

.method public getImageSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mImageSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTMXTileProperties()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getTMXTilePropertiesFromGlobalTileID(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTMXTileProperties:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mFirstGlobalTileID:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesHorizontal:I

    rem-int v1, v0, v1

    iget v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesHorizontal:I

    div-int/2addr v0, v2

    iget v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    add-int v3, v1, v0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    iget v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    return-object v0
.end method

.method public final getTileHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    return v0
.end method

.method public final getTileWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    return v0
.end method

.method public setImageSource(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, ""

    const-string v1, "source"

    invoke-interface {p3, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mImageSource:Ljava/lang/String;

    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mImageSource:Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileWidth:I

    iget v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    invoke-static {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->determineCount(IIII)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesHorizontal:I

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTileHeight:I

    iget v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mMargin:I

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mSpacing:I

    invoke-static {v0, v1, v3, v4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->determineCount(IIII)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTilesVertical:I

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {v0, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const-string v0, "trans"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lorg/anddev/andengine/util/SAXUtils;->getAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-static {v0, v2, v5, v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    :goto_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {p2, v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->mBitmapTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;

    invoke-static {}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    move-result-object v5

    invoke-direct {v4, v2, v5, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorKeyBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v4, v0, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal value: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' for attribute \'trans\' supplied!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
