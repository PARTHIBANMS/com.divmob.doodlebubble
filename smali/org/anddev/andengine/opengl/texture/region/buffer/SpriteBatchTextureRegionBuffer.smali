.class public Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;


# instance fields
.field protected mIndex:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public add(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V
    .locals 7

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX1()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY1()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX2()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY2()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mBufferData:[I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    add-int/lit8 v6, v5, 0x1

    aput v0, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, v4, v6

    add-int/lit8 v6, v5, 0x1

    aput v0, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v3, v4, v6

    add-int/lit8 v6, v5, 0x1

    aput v2, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, v4, v6

    add-int/lit8 v6, v5, 0x1

    aput v2, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, v4, v6

    add-int/lit8 v1, v5, 0x1

    aput v0, v4, v5

    add-int/lit8 v0, v1, 0x1

    aput v3, v4, v1

    add-int/lit8 v1, v0, 0x1

    aput v2, v4, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, v4, v1

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mIndex:I

    return-void
.end method

.method public submit()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;->mBufferData:[I

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-super {p0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setHardwareBufferNeedsUpdate()V

    return-void
.end method
