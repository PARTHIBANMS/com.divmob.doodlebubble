.class public abstract Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
.super Ljava/lang/Object;


# instance fields
.field protected mHeight:I

.field protected final mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

.field protected mTexturePositionX:I

.field protected mTexturePositionY:I

.field protected final mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionX:I

    iput p3, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionY:I

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mWidth:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mHeight:I

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    const v1, 0x88e4

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;-><init>(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;IZ)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->initTextureBuffer()V

    return-void
.end method


# virtual methods
.method protected abstract deepCopy()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mHeight:I

    return v0
.end method

.method public getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public getTextureBuffer()Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    return-object v0
.end method

.method public abstract getTextureCoordinateX1()F
.end method

.method public abstract getTextureCoordinateX2()F
.end method

.method public abstract getTextureCoordinateY1()F
.end method

.method public abstract getTextureCoordinateY2()F
.end method

.method public getTexturePositionX()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionX:I

    return v0
.end method

.method public getTexturePositionY()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mWidth:I

    return v0
.end method

.method protected initTextureBuffer()V
    .locals 0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    return-void
.end method

.method public isFlippedHorizontal()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isFlippedHorizontal()Z

    move-result v0

    return v0
.end method

.method public isFlippedVertical()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isFlippedVertical()Z

    move-result v0

    return v0
.end method

.method public isTextureRegionBufferManaged()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->isManaged()Z

    move-result v0

    return v0
.end method

.method public onApply(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->setFlippedHorizontal(Z)V

    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->setFlippedVertical(Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mHeight:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    return-void
.end method

.method public setTexturePosition(II)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionX:I

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTexturePositionY:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    return-void
.end method

.method public setTextureRegionBufferManaged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->setManaged(Z)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mWidth:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->updateTextureRegionBuffer()V

    return-void
.end method

.method protected updateTextureRegionBuffer()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->mTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->update()V

    return-void
.end method
