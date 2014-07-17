.class public interface abstract Lorg/anddev/andengine/opengl/texture/ITexture;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    }
.end annotation


# virtual methods
.method public abstract bind(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract getHardwareTextureID()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;
.end method

.method public abstract getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasTextureStateListener()Z
.end method

.method public abstract isLoadedToHardware()Z
.end method

.method public abstract isUpdateOnHardwareNeeded()Z
.end method

.method public abstract loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setLoadedToHardware(Z)V
.end method

.method public abstract setUpdateOnHardwareNeeded(Z)V
.end method

.method public abstract unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V
.end method
