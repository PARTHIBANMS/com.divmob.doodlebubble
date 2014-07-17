.class public Lorg/anddev/andengine/engine/camera/ZoomCamera;
.super Lorg/anddev/andengine/engine/camera/BoundCamera;


# instance fields
.field protected mZoomFactor:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/BoundCamera;-><init>(FFFF)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    return-void
.end method


# virtual methods
.method protected applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v2

    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v4

    aput v4, v3, v5

    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    aput v4, v3, v6

    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-static {v3, v0, v0, v1, v2}, Lorg/anddev/andengine/util/MathUtils;->scaleAroundCenter([FFFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v5

    sget-object v1, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v6

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    :cond_0
    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/BoundCamera;->applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    return-void
.end method

.method public getHeight()F
    .locals 2

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getMaxX()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxX()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMaxY()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxY()F

    move-result v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMinX()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinX()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMinY()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v0

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinY()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getZoomFactor()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    return v0
.end method

.method public setZoomFactor(F)V
    .locals 1

    iput p1, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mBoundsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->ensureInBounds()V

    :cond_0
    return-void
.end method

.method protected unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/BoundCamera;->unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    iget v0, p0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->mZoomFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->getCenterY()F

    move-result v2

    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v4

    aput v4, v3, v5

    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    aput v4, v3, v6

    sget-object v3, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    invoke-static {v3, v0, v0, v1, v2}, Lorg/anddev/andengine/util/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v5

    sget-object v1, Lorg/anddev/andengine/engine/camera/ZoomCamera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v6

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    :cond_0
    return-void
.end method
