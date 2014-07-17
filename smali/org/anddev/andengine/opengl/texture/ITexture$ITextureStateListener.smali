.class public interface abstract Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/ITexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITextureStateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$DebugTextureStateListener;,
        Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$TextureStateAdapter;
    }
.end annotation


# virtual methods
.method public abstract onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
.end method

.method public abstract onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
.end method
