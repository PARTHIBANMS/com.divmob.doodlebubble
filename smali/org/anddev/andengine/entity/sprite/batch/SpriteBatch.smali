.class public Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;
.super Lorg/anddev/andengine/entity/Entity;


# instance fields
.field protected final mCapacity:I

.field private mDestinationBlendFunction:I

.field protected mIndex:I

.field private mSourceBlendFunction:I

.field private final mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

.field private final mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

.field protected final mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

.field private mVertices:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 4

    const v3, 0x88e4

    const/4 v2, 0x1

    new-instance v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-direct {v0, p2, v3, v2}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;-><init>(IIZ)V

    new-instance v1, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-direct {v1, p2, v3, v2}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;-><init>(IIZ)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    iput p2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    iput-object p3, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    iput-object p4, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->initBlendFunction()V

    return-void
.end method

.method private assertCapacity()V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This SpriteBatch has already reached its capacity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private assertCapacity(I)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This supplied pIndex: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is exceeding the capacity: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of this SpriteBatch!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mVertices:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method private initBlendFunction()V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->setBlendFunction(II)V

    :cond_0
    return-void
.end method

.method private onApplyTextureRegion(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v1, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method private onSubmit()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mVertices:I

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->submit()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->submit()V

    iput v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->setIndex(I)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->setIndex(I)V

    return-void
.end method


# virtual methods
.method protected assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supplied Texture does match the Texture of this SpriteBatch!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected begin(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->begin(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onApplyTextureRegion(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->end(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public draw(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 6

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isScaled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    :goto_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    goto :goto_0
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFF)V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFF)V
    .locals 6

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFF)V
    .locals 7

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFF)V
    .locals 8

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public draw(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFFF)V
    .locals 9

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFFFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 6

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->isScaled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getX()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    :goto_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    goto :goto_0
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFF)V
    .locals 6

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFF)V
    .locals 7

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFF)V
    .locals 8

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFFFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method public drawWithoutChecks(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;FFFFFFFF)V
    .locals 9

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFFFFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return-void
.end method

.method protected end(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->unloadFromActiveBufferObjectManager()V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->unloadFromActiveBufferObjectManager()V

    :cond_1
    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    return v0
.end method

.method protected onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mBlue:F

    iget v3, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mAlpha:F

    invoke-static {p1, v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/util/GLHelper;->setColor(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSourceBlendFunction:I

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mDestinationBlendFunction:I

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->blendFunction(Ljavax/microedition/khronos/opengles/GL10;II)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->initBlendFunction()V

    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSourceBlendFunction:I

    iput p2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mDestinationBlendFunction:I

    return-void
.end method

.method public setIndex(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->assertCapacity(I)V

    iput p1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mIndex:I

    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchVertexBuffer:Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->setIndex(I)V

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->mSpriteBatchTextureRegionBuffer:Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->setIndex(I)V

    return-void
.end method

.method public submit()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->onSubmit()V

    return-void
.end method
