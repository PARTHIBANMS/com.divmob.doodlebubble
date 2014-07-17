.class public Lorg/anddev/andengine/engine/camera/BoundCamera;
.super Lorg/anddev/andengine/engine/camera/Camera;


# instance fields
.field private mBoundsCenterX:F

.field private mBoundsCenterY:F

.field protected mBoundsEnabled:Z

.field private mBoundsHeight:F

.field private mBoundsMaxX:F

.field private mBoundsMaxY:F

.field private mBoundsMinX:F

.field private mBoundsMinY:F

.field private mBoundsWidth:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    invoke-virtual {p0, p5, p6, p7, p8}, Lorg/anddev/andengine/engine/camera/BoundCamera;->setBounds(FFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    return-void
.end method

.method private determineBoundedX()F
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getWidth()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterX:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getCenterX()F

    move-result v3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinX()F

    move-result v4

    sub-float v4, v0, v4

    cmpl-float v0, v4, v7

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxX()F

    move-result v5

    iget v6, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxX:F

    sub-float/2addr v5, v6

    cmpl-float v6, v5, v7

    if-lez v6, :cond_2

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    sub-float v0, v3, v5

    add-float/2addr v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-float v0, v3, v4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    sub-float v0, v3, v5

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private determineBoundedY()F
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getHeight()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterY:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getCenterY()F

    move-result v3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMinY()F

    move-result v4

    sub-float v4, v0, v4

    cmpl-float v0, v4, v7

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->getMaxY()F

    move-result v5

    iget v6, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxY:F

    sub-float/2addr v5, v6

    cmpl-float v6, v5, v7

    if-lez v6, :cond_2

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    sub-float v0, v3, v5

    add-float/2addr v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-float v0, v3, v4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    sub-float v0, v3, v5

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected ensureInBounds()V
    .locals 2

    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->determineBoundedX()F

    move-result v0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->determineBoundedY()F

    move-result v1

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    return-void
.end method

.method public getBoundsHeight()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    return v0
.end method

.method public getBoundsWidth()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    return v0
.end method

.method public isBoundsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    return v0
.end method

.method public setBounds(FFFF)V
    .locals 3

    const/high16 v2, 0x3f00

    iput p1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    iput p2, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxX:F

    iput p3, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    iput p4, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxY:F

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMaxY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterX:F

    iget v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsMinY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsCenterY:F

    return-void
.end method

.method public setBoundsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    return-void
.end method

.method public setCenter(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/BoundCamera;->mBoundsEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/BoundCamera;->ensureInBounds()V

    :cond_0
    return-void
.end method
