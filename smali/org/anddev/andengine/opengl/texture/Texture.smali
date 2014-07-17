.class public abstract Lorg/anddev/andengine/opengl/texture/Texture;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/ITexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    }
.end annotation


# static fields
.field private static final HARDWARETEXTUREID_FETCHER:[I


# instance fields
.field protected mHardwareTextureID:I

.field protected mLoadedToHardware:Z

.field protected final mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field protected final mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field protected final mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

.field protected mUpdateOnHardwareNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture;->HARDWARETEXTUREID_FETCHER:[I

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    iput-object p2, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iput-object p3, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    return-void
.end method


# virtual methods
.method protected applyTextureOptions(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureOptions;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->bindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    return-void
.end method

.method protected bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->forceBindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    return-void
.end method

.method protected deleteTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    return-void
.end method

.method protected generateHardwareTextureID(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture;->HARDWARETEXTUREID_FETCHER:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    sget-object v0, Lorg/anddev/andengine/opengl/texture/Texture;->HARDWARETEXTUREID_FETCHER:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    return-void
.end method

.method public getHardwareTextureID()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    return v0
.end method

.method public getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    return-object v0
.end method

.method public getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    return-object v0
.end method

.method public getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    return-object v0
.end method

.method public hasTextureStateListener()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    return v0
.end method

.method public isUpdateOnHardwareNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    return v0
.end method

.method public loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->generateHardwareTextureID(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->applyTextureOptions(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;->onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V

    :cond_0
    return-void
.end method

.method public reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public setLoadedToHardware(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    return-void
.end method

.method public setUpdateOnHardwareNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mUpdateOnHardwareNeeded:Z

    return-void
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/texture/Texture;->deleteTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mHardwareTextureID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mLoadedToHardware:Z

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/Texture;->mTextureStateListener:Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;->onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V

    :cond_0
    return-void
.end method

.method protected abstract writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
