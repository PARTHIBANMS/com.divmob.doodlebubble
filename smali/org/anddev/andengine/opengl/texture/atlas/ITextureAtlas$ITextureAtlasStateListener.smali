.class public interface abstract Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITextureAtlasStateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$DebugTextureAtlasStateListener;,
        Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;"
    }
.end annotation


# virtual methods
.method public abstract onTextureAtlasSourceLoadExeption(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
