.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iput-object p4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iget-object v5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->mTMXTilePropertyListener:Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader$ITMXTilePropertiesListener;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXParser;->getTMXTiledMap()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public loadFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXLoader;->load(Ljava/io/InputStream;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load TMXTiledMap from asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TMXLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
