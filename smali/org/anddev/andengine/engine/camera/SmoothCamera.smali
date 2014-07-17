.class public Lorg/anddev/andengine/engine/camera/SmoothCamera;
.super Lorg/anddev/andengine/engine/camera/ZoomCamera;


# instance fields
.field private mMaxVelocityX:F

.field private mMaxVelocityY:F

.field private mMaxZoomFactorChange:F

.field private mTargetCenterX:F

.field private mTargetCenterY:F

.field private mTargetZoomFactor:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/ZoomCamera;-><init>(FFFF)V

    iput p5, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    iput p6, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    iput p7, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterX()F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterY()F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    return-void
.end method

.method private limitToMaxVelocityX(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private limitToMaxVelocityY(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private limitToMaxZoomFactorChange(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onSmoothZoomFinished()V
    .locals 0

    return-void
.end method

.method protected onSmoothZoomStarted()V
    .locals 0

    return-void
.end method

.method public onUpdate(F)V
    .locals 5

    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->onUpdate(F)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterX()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getCenterY()F

    move-result v1

    iget v2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    iget v3, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    cmpl-float v4, v0, v2

    if-nez v4, :cond_0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_1

    :cond_0
    sub-float/2addr v2, v0

    invoke-direct {p0, v2, p1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->limitToMaxVelocityX(FF)F

    move-result v2

    sub-float/2addr v3, v1

    invoke-direct {p0, v3, p1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->limitToMaxVelocityY(FF)F

    move-result v3

    add-float/2addr v0, v2

    add-float/2addr v1, v3

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setCenter(FF)V

    :cond_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->getZoomFactor()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    sub-float/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->limitToMaxZoomFactorChange(FF)F

    move-result v1

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->onSmoothZoomFinished()V

    :cond_2
    return-void
.end method

.method public setCenter(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    iput p2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    return-void
.end method

.method public setCenterDirect(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setCenter(FF)V

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterX:F

    iput p2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetCenterY:F

    return-void
.end method

.method public setMaxVelocity(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    iput p2, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    return-void
.end method

.method public setMaxVelocityX(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityX:F

    return-void
.end method

.method public setMaxVelocityY(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxVelocityY:F

    return-void
.end method

.method public setMaxZoomFactorChange(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mMaxZoomFactorChange:F

    return-void
.end method

.method public setZoomFactor(F)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->onSmoothZoomStarted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    goto :goto_0
.end method

.method public setZoomFactorDirect(F)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mZoomFactor:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->onSmoothZoomFinished()V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/anddev/andengine/engine/camera/SmoothCamera;->mTargetZoomFactor:F

    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/camera/ZoomCamera;->setZoomFactor(F)V

    goto :goto_0
.end method
