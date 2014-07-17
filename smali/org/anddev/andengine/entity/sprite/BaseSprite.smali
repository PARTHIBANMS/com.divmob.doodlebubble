.class public abstract Lorg/anddev/andengine/entity/sprite/BaseSprite;
.super Lorg/anddev/andengine/entity/primitive/BaseRectangle;


# instance fields
.field protected final mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFF)V

    iput-object p5, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->initBlendFunction()V

    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    iput-object p5, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->initBlendFunction()V

    return-void
.end method

.method private initBlendFunction()V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setBlendFunction(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->onApply(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->finalize()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureBuffer()Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->unloadFromActiveBufferObjectManager()V

    :cond_0
    return-void
.end method

.method public getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    return-object v0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->reset()V

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->initBlendFunction()V

    return-void
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedHorizontal(Z)V

    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/BaseSprite;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->setFlippedVertical(Z)V

    return-void
.end method
