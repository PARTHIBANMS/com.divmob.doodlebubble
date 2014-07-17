.class public Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
.super Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6

    new-instance v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexturePositionX:I

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexturePositionY:I

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mWidth:I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mHeight:I

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;IIII)V

    return-object v0
.end method

.method public getTextureCoordinateX1()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexturePositionX:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateX2()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexturePositionX:I

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateY1()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexturePositionY:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureCoordinateY2()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexturePositionY:I

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
