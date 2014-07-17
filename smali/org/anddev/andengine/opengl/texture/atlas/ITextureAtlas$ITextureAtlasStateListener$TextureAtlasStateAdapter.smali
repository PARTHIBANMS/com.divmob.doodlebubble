.class public Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener$TextureAtlasStateAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasStateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 0

    return-void
.end method

.method public onTextureAtlasSourceLoadExeption(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
            "<TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 0

    return-void
.end method
