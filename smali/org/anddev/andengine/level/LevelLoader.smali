.class public Lorg/anddev/andengine/level/LevelLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/level/util/constants/LevelConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;
    }
.end annotation


# instance fields
.field private mAssetBasePath:Ljava/lang/String;

.field private mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

.field private final mEntityLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/anddev/andengine/level/LevelLoader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/level/LevelLoader;->setAssetBasePath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultEntityLoader()Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/level/LevelLoader;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    return-object v0
.end method

.method public loadLevelFromAsset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/anddev/andengine/level/LevelLoader;->mAssetBasePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/level/LevelLoader;->loadLevelFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public loadLevelFromResource(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/level/LevelLoader;->loadLevelFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public loadLevelFromStream(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/anddev/andengine/level/LevelLoader;->onBeforeLoadLevel()V

    new-instance v1, Lorg/anddev/andengine/level/LevelParser;

    iget-object v2, p0, Lorg/anddev/andengine/level/LevelLoader;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    iget-object v3, p0, Lorg/anddev/andengine/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Lorg/anddev/andengine/level/LevelParser;-><init>(Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/level/LevelLoader;->onAfterLoadLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected onAfterLoadLevel()V
    .locals 0

    return-void
.end method

.method protected onBeforeLoadLevel()V
    .locals 0

    return-void
.end method

.method public registerEntityLoader(Ljava/lang/String;Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerEntityLoader([Ljava/lang/String;Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;)V
    .locals 3

    iget-object v1, p0, Lorg/anddev/andengine/level/LevelLoader;->mEntityLoaders:Ljava/util/HashMap;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setAssetBasePath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/level/LevelLoader;->mAssetBasePath:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultEntityLoader(Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/level/LevelLoader;->mDefaultEntityLoader:Lorg/anddev/andengine/level/LevelLoader$IEntityLoader;

    return-void
.end method
