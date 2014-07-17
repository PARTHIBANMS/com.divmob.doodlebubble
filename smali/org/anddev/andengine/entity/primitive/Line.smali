.class public Lorg/anddev/andengine/entity/primitive/Line;
.super Lorg/anddev/andengine/entity/shape/Shape;


# static fields
.field private static final LINEWIDTH_DEFAULT:F = 1.0f


# instance fields
.field private final mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

.field private mLineWidth:F

.field protected mX2:F

.field protected mY2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/primitive/Line;-><init>(FFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 4

    const/high16 v3, 0x3f00

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;-><init>(FF)V

    iput p3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iput p4, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iput p5, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    new-instance v0, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    const v1, 0x88e4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;-><init>(IZ)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->updateVertexBuffer()V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getHeight()F

    move-result v1

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterX:F

    mul-float v0, v1, v3

    iput v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterY:F

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mScaleCenterX:F

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mScaleCenterY:F

    return-void
.end method


# virtual methods
.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 8

    instance-of v0, p1, Lorg/anddev/andengine/entity/primitive/Line;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/anddev/andengine/entity/primitive/Line;

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v4, p1, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    iget v5, p1, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    iget v6, p1, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v7, p1, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    invoke-static/range {v0 .. v7}, Lorg/anddev/andengine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/anddev/andengine/entity/shape/RectangularShape;

    invoke-static {p1, p0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public getBaseHeight()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBaseWidth()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHeight()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    return-object v0
.end method

.method public bridge synthetic getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getX()F

    move-result v0

    return v0
.end method

.method public getX1()F
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getX()F

    move-result v0

    return v0
.end method

.method public getX2()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getY()F

    move-result v0

    return v0
.end method

.method public getY1()F
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getY()F

    move-result v0

    return v0
.end method

.method public getY2()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    return v0
.end method

.method protected isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/anddev/andengine/engine/camera/Camera;->isLineVisible(Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    return v0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/shape/Shape;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->lineWidth(Ljavax/microedition/khronos/opengles/GL10;F)V

    return-void
.end method

.method protected onUpdateVertexBuffer()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineVertexBuffer:Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    iget v3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;->update(FFFF)V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mLineWidth:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX:F

    sub-float/2addr v0, p1

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY:F

    sub-float/2addr v1, p2

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iget v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    return-void
.end method

.method public setPosition(FFFF)V
    .locals 0

    iput p3, p0, Lorg/anddev/andengine/entity/primitive/Line;->mX2:F

    iput p4, p0, Lorg/anddev/andengine/entity/primitive/Line;->mY2:F

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->updateVertexBuffer()V

    return-void
.end method
