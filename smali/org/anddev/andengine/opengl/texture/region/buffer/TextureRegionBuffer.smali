.class public Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;


# instance fields
.field private mFlippedHorizontal:Z

.field private mFlippedVertical:Z

.field protected final mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;IZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    return-void
.end method


# virtual methods
.method public getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    return-object v0
.end method

.method public isFlippedHorizontal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    return v0
.end method

.method public isFlippedVertical()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    return v0
.end method

.method public setFlippedHorizontal(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->update()V

    :cond_0
    return-void
.end method

.method public setFlippedVertical(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->update()V

    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX1()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY1()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateX2()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;->getTextureCoordinateY2()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mBufferData:[I

    iget-boolean v5, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedVertical:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x3

    aput v2, v4, v3

    const/4 v3, 0x4

    aput v1, v4, v3

    const/4 v3, 0x5

    aput v0, v4, v3

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v2, v4, v0

    :goto_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-super {p0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v5, 0x0

    :try_start_1
    aput v1, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v1, 0x3

    aput v2, v4, v1

    const/4 v1, 0x4

    aput v3, v4, v1

    const/4 v1, 0x5

    aput v0, v4, v1

    const/4 v0, 0x6

    aput v3, v4, v0

    const/4 v0, 0x7

    aput v2, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-boolean v5, p0, Lorg/anddev/andengine/opengl/texture/region/buffer/TextureRegionBuffer;->mFlippedHorizontal:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x3

    aput v0, v4, v3

    const/4 v3, 0x4

    aput v1, v4, v3

    const/4 v3, 0x5

    aput v2, v4, v3

    const/4 v2, 0x6

    aput v1, v4, v2

    const/4 v1, 0x7

    aput v0, v4, v1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v1, 0x3

    aput v0, v4, v1

    const/4 v1, 0x4

    aput v3, v4, v1

    const/4 v1, 0x5

    aput v2, v4, v1

    const/4 v1, 0x6

    aput v3, v4, v1

    const/4 v1, 0x7

    aput v0, v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
