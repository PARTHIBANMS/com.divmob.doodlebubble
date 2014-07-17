.class public abstract Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;
.super Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;,
        Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;
    }
.end annotation


# instance fields
.field private mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    return-void
.end method


# virtual methods
.method protected final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;-><init>([B)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getCCZCompressionFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->wrap(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getPVRDataBuffer()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;->mCCZHeader:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getUncompressedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;[B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method
