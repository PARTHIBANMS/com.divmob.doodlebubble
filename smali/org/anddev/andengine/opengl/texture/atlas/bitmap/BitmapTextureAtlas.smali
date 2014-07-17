.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;
.super Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas",
        "<",
        "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

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

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    iput-object p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V

    return-void
.end method


# virtual methods
.method protected bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->bindTextureOnHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    const/16 v1, 0xde1

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mWidth:I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mHeight:I

    const/4 v9, 0x0

    move-object v0, p1

    move v6, v2

    move v7, v3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public getBitmapTextureFormat()Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    return-object v0
.end method

.method protected writeTextureToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mBitmapTextureFormat:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mTextureOptions:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    iget-boolean v0, v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned a null Bitmap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error loading: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v3, v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;->onTextureAtlasSourceLoadExeption(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    :cond_2
    if-eqz v19, :cond_3

    const/16 v2, 0xde1

    const/4 v3, 0x0

    :try_start_1
    invoke-interface/range {v16 .. v16}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTexturePositionX()I

    move-result v4

    invoke-interface/range {v16 .. v16}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTexturePositionY()I

    move-result v5

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    const/16 v10, 0xde1

    const/4 v11, 0x0

    invoke-interface/range {v16 .. v16}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTexturePositionX()I

    move-result v12

    invoke-interface/range {v16 .. v16}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getTexturePositionY()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-object/from16 v9, p1

    move-object v14, v6

    invoke-static/range {v9 .. v15}, Lorg/anddev/andengine/opengl/util/GLHelper;->glTexSubImage2D(Ljavax/microedition/khronos/opengles/GL10;IIIILandroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    throw v2
.end method
