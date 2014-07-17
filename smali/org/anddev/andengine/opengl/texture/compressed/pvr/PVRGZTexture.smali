.class public abstract Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRGZTexture;
.super Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;


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
.method protected bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRGZTexture;->getInputStream()Ljava/util/zip/GZIPInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getInputStream()Ljava/util/zip/GZIPInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRGZTexture;->onGetInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
