.class public abstract Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;
.super Lorg/anddev/andengine/opengl/texture/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
    }
.end annotation


# instance fields
.field private mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;-><init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;-><init>([B)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mETC1TextureHeader:Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture$ETC1TextureHeader;->getWidth()I

    move-result v0

    return v0
.end method

.method protected writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v0, 0xde1

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v3

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/compressed/etc1/ETC1Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILjava/io/InputStream;)V

    return-void
.end method
