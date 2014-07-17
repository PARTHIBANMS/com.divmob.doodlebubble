.class public abstract Lorg/anddev/andengine/entity/shape/RectangularShape;
.super Lorg/anddev/andengine/entity/shape/Shape;


# instance fields
.field protected mBaseHeight:F

.field protected mBaseWidth:F

.field protected mHeight:F

.field protected final mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

.field protected mWidth:F


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/vertex/VertexBuffer;)V
    .locals 2

    const/high16 v1, 0x3f00

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;-><init>(FF)V

    iput p3, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    iput p4, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    iput p3, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iput p4, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iput-object p5, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    mul-float v0, p3, v1

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    mul-float v0, p4, v1

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterX:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterY:F

    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 1

    instance-of v0, p1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    invoke-static {p0, p1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/anddev/andengine/entity/primitive/Line;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/anddev/andengine/entity/primitive/Line;

    invoke-static {p0, p1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkContains(Lorg/anddev/andengine/entity/shape/RectangularShape;FF)Z

    move-result v0

    return v0
.end method

.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public getBaseHeight()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 3

    const/high16 v2, 0x3f00

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/shape/RectangularShape;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    return v0
.end method

.method protected isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mX:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mY:F

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getWidth()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getHeight()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->reset()V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->setBaseSize()V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getBaseWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getBaseHeight()F

    move-result v1

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    mul-float v0, v1, v2

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterX:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mScaleCenterY:F

    return-void
.end method

.method public setBaseSize()V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    :cond_1
    return-void
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iput p2, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->updateVertexBuffer()V

    return-void
.end method
