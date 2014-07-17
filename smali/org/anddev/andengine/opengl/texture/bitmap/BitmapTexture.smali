.class public abstract Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;
.super Lorg/anddev/andengine/opengl/texture/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    }
.end annotation


# instance fields
.field private final mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pWidth and pHeight must be a power of 2!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mWidth:I

    return v0
.end method

.method protected abstract onGetInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iget-boolean v4, v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v4, :cond_0

    invoke-static {v1, v2, v3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_0
    iget-object v5, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-object v0, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/opengl/util/GLHelper;->glTexImage2D(Ljavax/microedition/khronos/opengles/GL10;IILandroid/graphics/Bitmap;ILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V

    goto :goto_0
.end method
