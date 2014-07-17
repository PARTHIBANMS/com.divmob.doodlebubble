.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private final mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;
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

.field private final mGlobalTileIDToTextureRegionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:Ljava/lang/String;

.field private final mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

.field private final mTMXLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXObjectGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXTileSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileColumns:I

.field private final mTileHeight:I

.field private final mTileWidth:I

.field private final mTilesRows:I


# direct methods
.method constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXLayers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXObjectGroups:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTextureRegionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;

    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    const-string v0, ""

    const-string v1, "orientation"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    const-string v1, "orthogonal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orientation: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "width"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileColumns:I

    const-string v0, "height"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTilesRows:I

    const-string v0, "tilewidth"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileWidth:I

    const-string v0, "tileheight"

    invoke-static {p1, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileHeight:I

    new-instance v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    const v1, 0x88e4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;-><init>(IZ)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->update(FF)V

    return-void
.end method


# virtual methods
.method addTMXLayer(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTMXObjectGroup(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXObjectGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTMXTileSet(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTMXTiledMapProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->unloadFromActiveBufferObjectManager()V

    :cond_0
    return-void
.end method

.method public final getHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTilesRows:I

    return v0
.end method

.method public final getOrientation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mSharedVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    return-object v0
.end method

.method public getTMXLayers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXLayers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTMXObjectGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXObjectGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTMXTileProperties(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No TMXTileProperties found for pGlobalTileID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getFirstGlobalTileID()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getTMXTilePropertiesFromGlobalTileID(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method public getTMXTilePropertiesByGlobalTileID(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTMXTilePropertiesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getTMXTileSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTMXTiledMapProperties()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTiledMapProperties:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    return-object v0
.end method

.method public getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 5

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mGlobalTileIDToTextureRegionCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTMXTileSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No TextureRegion found for pGlobalTileID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getFirstGlobalTileID()I

    move-result v4

    if-lt p1, v4, :cond_2

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method public final getTileColumns()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileColumns:I

    return v0
.end method

.method public final getTileHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileHeight:I

    return v0
.end method

.method public final getTileRows()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTilesRows:I

    return v0
.end method

.method public final getTileWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileWidth:I

    return v0
.end method

.method public final getWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->mTileColumns:I

    return v0
.end method
