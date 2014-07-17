.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;-><init>(Ljava/io/File;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    :goto_0
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mWidth:I

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mHeight:I

    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed loading Bitmap in FileBitmapTextureAtlasSource. File: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method constructor <init>(Ljava/io/File;IIII)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mWidth:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mHeight:I

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;
    .locals 6

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mTexturePositionX:I

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mTexturePositionY:I

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mWidth:I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mHeight:I

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;-><init>(Ljava/io/File;IIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

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

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mWidth:I

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

    const-string v4, ". File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
