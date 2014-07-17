.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;
.super Lorg/anddev/andengine/entity/shape/RectangularShape;

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private final mCullingVertices:[F

.field private final mGlobalTileIDsExpected:I

.field private final mName:Ljava/lang/String;

.field private final mTMXLayerProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

.field private final mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

.field private final mTileColumns:I

.field private final mTileRows:I

.field private mTilesAdded:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;Lorg/xml/sax/Attributes;)V
    .locals 8

    const/high16 v7, 0x3f00

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/VertexBuffer;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mCullingVertices:[F

    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXLayerProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mName:Ljava/lang/String;

    const-string v0, "width"

    invoke-static {p2, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    const-string v0, "height"

    invoke-static {p2, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileWidth()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileHeight()I

    move-result v1

    iget v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iput v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    mul-float/2addr v0, v7

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mRotationCenterX:F

    mul-float v0, v1, v7

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mRotationCenterY:F

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mScaleCenterX:F

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mScaleCenterY:F

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mGlobalTileIDsExpected:I

    const-string v0, "visible"

    invoke-static {p2, v0, v6}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->setVisible(Z)V

    const-string v0, "opacity"

    const/high16 v1, 0x3f80

    invoke-static {p2, v0, v1}, Lorg/anddev/andengine/util/SAXUtils;->getFloatAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addTileByGlobalTileID(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 9

    iget-object v7, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTilesAdded:I

    rem-int v2, v1, v0

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTilesAdded:I

    div-int v3, v1, v0

    iget-object v8, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    if-nez p1, :cond_1

    const/4 v6, 0x0

    :goto_0
    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileWidth()I

    move-result v4

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileHeight()I

    move-result v5

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;-><init>(IIIIILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aget-object v1, v8, v3

    aput-object v0, v1, v2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v7, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXTileProperties(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v7, p0, v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;->onTMXTileWithPropertiesCreated(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;)V

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTilesAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTilesAdded:I

    return-void

    :cond_1
    invoke-virtual {v7, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v6

    goto :goto_0
.end method

.method private readGlobalTileID(Ljava/io/DataInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t read global Tile ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTMXLayerProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayerProperty;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXLayerProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileHeight()I

    move-result v6

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget v7, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mScaleX:F

    mul-float/2addr v7, v2

    int-to-float v2, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mScaleY:F

    mul-float/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mCullingVertices:[F

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v13

    sub-float/2addr v2, v9

    div-float v9, v2, v7

    const/4 v2, 0x0

    add-int/lit8 v14, v1, -0x1

    float-to-double v15, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v15

    double-to-int v15, v15

    invoke-static {v2, v14, v15}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(III)I

    move-result v2

    const/4 v14, 0x0

    add-int/lit8 v1, v1, -0x1

    div-float v7, v12, v7

    add-float/2addr v7, v9

    float-to-double v15, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v7, v15

    invoke-static {v14, v1, v7}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(III)I

    move-result v7

    sub-float v1, v11, v10

    div-float v9, v1, v8

    const/4 v1, 0x0

    add-int/lit8 v10, v3, -0x1

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-static {v1, v10, v11}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(III)I

    move-result v1

    const/4 v10, 0x0

    add-int/lit8 v3, v3, -0x1

    div-float v8, v13, v8

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v10, v3, v8}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(III)I

    move-result v8

    sub-int v3, v7, v2

    add-int/lit8 v3, v3, 0x1

    mul-int v9, v3, v5

    mul-int v3, v2, v5

    int-to-float v3, v3

    mul-int v10, v1, v6

    int-to-float v10, v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    move v3, v1

    :goto_0
    if-le v3, v8, :cond_0

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void

    :cond_0
    aget-object v10, v4, v3

    move v1, v2

    :goto_1
    if-le v1, v7, :cond_1

    neg-int v1, v9

    int-to-float v1, v1

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    aget-object v11, v10, v1

    iget-object v11, v11, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    if-eqz v11, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->onApply(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_2
    int-to-float v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTMXLayerProperties()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayerProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXLayerProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getTMXTile(II)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTMXTileAt(FF)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v1

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-ltz v3, :cond_0

    iget v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTileWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v1, :cond_0

    iget v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    goto :goto_0
.end method

.method public getTMXTiles()[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiles:[[Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;

    return-object v0
.end method

.method public getTileColumns()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileColumns:I

    return v0
.end method

.method public getTileRows()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTileRows:I

    return v0
.end method

.method initializeTMXTileFromXML(Lorg/xml/sax/Attributes;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 1

    const-string v0, "gid"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->addTileByGlobalTileID(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    return-void
.end method

.method initializeTMXTilesFromDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    if-eqz p2, :cond_3

    const-string v2, "base64"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/anddev/andengine/util/Base64InputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/anddev/andengine/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    if-eqz p3, :cond_2

    const-string v0, "gzip"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTilesAdded:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mGlobalTileIDsExpected:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v0, v1, :cond_1

    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Supplied compression \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not supported yet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :try_start_3
    invoke-direct {p0, v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->readGlobalTileID(Ljava/io/DataInputStream;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->addTileByGlobalTileID(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method protected onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getSharedVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getSharedVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/shape/RectangularShape;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 0

    return-void
.end method

.method protected onUpdateVertexBuffer()V
    .locals 0

    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
