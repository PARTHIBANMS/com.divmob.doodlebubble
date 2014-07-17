.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iput-object p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    return-void
.end method

.method private load(ILjava/io/InputStream;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;

    iget-object v2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    iget-object v4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;-><init>(Landroid/content/Context;Lorg/anddev/andengine/opengl/texture/TextureManager;Lorg/anddev/andengine/opengl/texture/TextureOptions;I)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXParser;->getTMXTileSet()Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public loadFromAsset(Landroid/content/Context;ILjava/lang/String;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TSXLoader;->load(ILjava/io/InputStream;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load TMXTileSet from asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
