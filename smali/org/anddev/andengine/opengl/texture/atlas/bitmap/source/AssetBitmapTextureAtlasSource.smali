.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mAssetPath:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p3, p4}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    :goto_0
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mWidth:I

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mHeight:I

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed loading Bitmap in AssetBitmapTextureAtlasSource. AssetPath: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mWidth:I

    iput p6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mHeight:I

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;
    .locals 7

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mTexturePositionX:I

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mTexturePositionY:I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mWidth:I

    iget v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mHeight:I

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;-><init>(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mWidth:I

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed loading Bitmap in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". AssetPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/AssetBitmapTextureAtlasSource;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
