.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFirstGlobalTileID:I

.field private mInImage:Z

.field private mInProperties:Z

.field private mInProperty:Z

.field private mInTile:Z

.field private mInTileset:Z

.field private mLastTileSetTileID:I

.field private mTMXTileSet:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;I)V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iput p4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mFirstGlobalTileID:I

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "tileset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInTileset:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInImage:Z

    goto :goto_0

    :cond_1
    const-string v0, "tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInTile:Z

    goto :goto_0

    :cond_2
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInProperties:Z

    goto :goto_0

    :cond_3
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInProperty:Z

    goto :goto_0

    :cond_4
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

.method getTMXTileSet()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTMXTileSet:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "tileset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInTileset:Z

    new-instance v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mFirstGlobalTileID:I

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, p4, v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;-><init>(ILorg/xml/sax/Attributes;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTMXTileSet:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    :goto_0
    return-void

    :cond_0
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInImage:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTMXTileSet:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    iget-object v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, v1, v2, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->setImageSource(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1
    const-string v0, "tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInTile:Z

    const-string v0, "id"

    invoke-static {p4, v0}, Lorg/anddev/andengine/util/SAXUtils;->getIntAttributeOrThrow(Lorg/xml/sax/Attributes;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mLastTileSetTileID:I

    goto :goto_0

    :cond_2
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInProperties:Z

    goto :goto_0

    :cond_3
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mInProperty:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mTMXTileSet:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->mLastTileSetTileID:I

    new-instance v2, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;

    invoke-direct {v2, p4}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;->addTMXTileProperty(ILorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;)V

    goto :goto_0

    :cond_4
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
