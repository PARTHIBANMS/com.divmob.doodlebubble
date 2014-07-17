.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataCompression:Ljava/lang/String;

.field private mDataEncoding:Ljava/lang/String;

.field private mInData:Z

.field private mInImage:Z

.field private mInLayer:Z

.field private mInMap:Z

.field private mInObject:Z

.field private mInObjectGroup:Z

.field private mInProperties:Z

.field private mInProperty:Z

.field private mInTile:Z

.field private mInTileset:Z

.field private mLastTileSetTileID:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

.field private mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mStringBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iput-object p4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v0, "map"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInMap:Z

    :goto_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_0
    const-string v0, "tileset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInTileset:Z

    goto :goto_0

    :cond_1
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInImage:Z

    goto :goto_0

    :cond_2
    const-string v0, "tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInTile:Z

    goto :goto_0

    :cond_3
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInProperties:Z

    goto :goto_0

    :cond_4
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInProperty:Z

    goto :goto_0

    :cond_5
    const-string v0, "layer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInLayer:Z

    goto :goto_0

    :cond_6
    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataCompression:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataEncoding:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXLayers()Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataEncoding:Ljava/lang/String;

    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataCompression:Ljava/lang/String;

    iget-object v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->initializeTMXTilesFromDataString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-object v6, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataCompression:Ljava/lang/String;

    iput-object v6, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataEncoding:Ljava/lang/String;

    :cond_7
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInData:Z

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    const-string v0, "objectgroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInObjectGroup:Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "object"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInObject:Z

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTMXTiledMap()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "map"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInMap:Z

    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-direct {v0, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tileset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInTileset:Z

    const-string v0, ""

    const-string v1, "source"

    invoke-interface {p4, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, p4, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;-><init>(Lorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    :goto_1
    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->addTMXTileSet(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;)V

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "firstgid"

    const/4 v2, 0x1

    invoke-static {p4, v0, v2}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;

    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iget-object v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->loadFromAsset(Landroid/content/Context;ILjava/lang/String;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    :try_end_0
    .catch Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load TMXTileSet from source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_3
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInImage:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXTileSets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, v1, v2, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->setImageSource(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_4
    const-string v0, "tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInTile:Z

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInTileset:Z

    if-eqz v0, :cond_5

    const-string v0, "id"

    invoke-static {p4, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mLastTileSetTileID:I

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    invoke-virtual {v0, p4, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->initializeTMXTileFromXML(Lorg/xml/sax/Attributes;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInProperties:Z

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInProperties:Z

    if-eqz v0, :cond_c

    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInProperty:Z

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInTile:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXTileSets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mLastTileSetTileID:I

    new-instance v2, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;

    invoke-direct {v2, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->addTMXTileProperty(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInLayer:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXLayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayerProperty;

    invoke-direct {v1, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayerProperty;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;->addTMXLayerProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayerProperty;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInObject:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXObjectGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;->getTMXObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;

    invoke-direct {v1, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;->addTMXObjectProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectProperty;)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInObjectGroup:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXObjectGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroupProperty;

    invoke-direct {v1, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroupProperty;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;->addTMXObjectGroupProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroupProperty;)V

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInMap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;

    invoke-direct {v1, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->addTMXTiledMapProperty(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMapProperty;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "layer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInLayer:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-direct {v1, v2, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;-><init>(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->addTMXLayer(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLayer;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInData:Z

    const-string v0, ""

    const-string v1, "encoding"

    invoke-interface {p4, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataEncoding:Ljava/lang/String;

    const-string v0, ""

    const-string v1, "compression"

    invoke-interface {p4, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mDataCompression:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v0, "objectgroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInObjectGroup:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;

    invoke-direct {v1, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->addTMXObjectGroup(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "object"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mInObject:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->mTMXTiledMap:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXObjectGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;

    invoke-direct {v1, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObjectGroup;->addTMXObject(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXObject;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start tag: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
