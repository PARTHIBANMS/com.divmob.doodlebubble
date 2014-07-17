.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;
.super Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas",
        "<",
        "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
        "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v3, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/TextureOptions;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v3, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V
    .locals 6

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;",
            "Lorg/anddev/andengine/opengl/texture/TextureOptions;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    invoke-direct {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;)V

    return-void
.end method

.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
            ">;)V"
        }
    .end annotation

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method
