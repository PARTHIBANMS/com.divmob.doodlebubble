.class public Lorg/anddev/andengine/engine/camera/Camera;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# static fields
.field protected static final VERTICES_TOUCH_TMP:[F


# instance fields
.field protected mCameraSceneRotation:F

.field private mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

.field private mFarZ:F

.field private mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

.field private mMaxX:F

.field private mMaxY:F

.field private mMinX:F

.field private mMinY:F

.field private mNearZ:F

.field protected mRotation:F

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected mSurfaceX:I

.field protected mSurfaceY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    iput v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    iput v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    add-float v0, p1, p3

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iput p2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    add-float v0, p2, p4

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    return-void
.end method

.method private applyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v6

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v7

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v4, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v6

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v7

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    :cond_0
    return-void
.end method

.method private applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1, p2, p3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v0, 0x3f80

    invoke-interface {p1, p4, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    neg-float v0, p2

    neg-float v1, p3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    return-void
.end method

.method private applySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v4

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v5

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    :cond_0
    return-void
.end method

.method private convertAxisAlignedSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V
    .locals 4

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    sub-float v1, v3, v2

    mul-float/2addr v1, p3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    return-void
.end method

.method private unapplyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v6

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v7

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v4, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->revertRotateAroundCenter([FFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v6

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v7

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    :cond_0
    return-void
.end method

.method private unapplySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->revertRotateAroundCenter([FFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v4

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v1, v1, v5

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    neg-float v0, v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    return-void
.end method

.method public convertCameraSceneToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->unapplyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->applySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    return-void
.end method

.method public convertSceneToCameraSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->unapplySceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->applySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->applyCameraSceneRotation(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    return-void
.end method

.method public convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    int-to-float v1, p2

    div-float v1, v0, v1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v0

    int-to-float v2, p3

    div-float/2addr v0, v2

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lorg/anddev/andengine/engine/camera/Camera;->convertAxisAlignedSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FF)V

    return-void

    :cond_0
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float v1, v3, v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v0

    int-to-float v2, p3

    div-float/2addr v0, v2

    sub-float v0, v3, v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    sget-object v1, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-static {v1, v0, v2, v3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    sget-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v4

    int-to-float v1, p2

    div-float v1, v0, v1

    sget-object v0, Lorg/anddev/andengine/engine/camera/Camera;->VERTICES_TOUCH_TMP:[F

    aget v0, v0, v5

    int-to-float v2, p3

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public getCameraSceneRotation()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    return v0
.end method

.method public getCenterX()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getFarZClippingPlane()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    return v0
.end method

.method public getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getHeightRaw()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getMaxX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    return v0
.end method

.method public getMinX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    return v0
.end method

.method public getMinY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    return v0
.end method

.method public getNearZClippingPlane()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceWidth:I

    return v0
.end method

.method public getSurfaceX()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceX:I

    return v0
.end method

.method public getSurfaceY()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceY:I

    return v0
.end method

.method public getWidth()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getWidthRaw()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hasHUD()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLineVisible(Lorg/anddev/andengine/entity/primitive/Line;)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/primitive/Line;)Z

    move-result v0

    return v0
.end method

.method public isRectangularShapeVisible(Lorg/anddev/andengine/entity/shape/RectangularShape;)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetCenter(FF)V
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    return-void
.end method

.method public onApplyCameraSceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/high16 v7, 0x3f00

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v3

    iget v5, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iget v6, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    mul-float v1, v2, v7

    mul-float v2, v3, v7

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/anddev/andengine/engine/camera/Camera;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    :cond_0
    return-void
.end method

.method public onApplySceneBackgroundMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/high16 v7, 0x3f00

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v3

    iget v5, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iget v6, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    mul-float v1, v2, v7

    mul-float v2, v3, v7

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/anddev/andengine/engine/camera/Camera;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    :cond_0
    return-void
.end method

.method public onApplySceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v3

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v4

    iget v5, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iget v6, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/anddev/andengine/engine/camera/Camera;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    :cond_0
    return-void
.end method

.method public onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p1, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/hud/HUD;->onUpdate(F)V

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->updateChaseEntity()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setCameraSceneRotation(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mCameraSceneRotation:F

    return-void
.end method

.method public setCenter(FF)V
    .locals 3

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    sub-float v1, p2, v1

    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    iget v2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxX:F

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMaxY:F

    return-void
.end method

.method public setChaseEntity(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

    return-void
.end method

.method public setFarZClippingPlane(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    return-void
.end method

.method public setHUD(Lorg/anddev/andengine/engine/camera/hud/HUD;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mHUD:Lorg/anddev/andengine/engine/camera/hud/HUD;

    invoke-virtual {p1, p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setCamera(Lorg/anddev/andengine/engine/camera/Camera;)V

    return-void
.end method

.method public setNearZClippingPlane(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mRotation:F

    return-void
.end method

.method public setSurfaceSize(IIII)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceX:I

    iput p2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceY:I

    iput p3, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceWidth:I

    iput p4, p0, Lorg/anddev/andengine/engine/camera/Camera;->mSurfaceHeight:I

    return-void
.end method

.method public setZClippingPlanes(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mNearZ:F

    iput p2, p0, Lorg/anddev/andengine/engine/camera/Camera;->mFarZ:F

    return-void
.end method

.method protected unapplySceneToCameraSceneOffset(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinX:F

    iget v1, p0, Lorg/anddev/andengine/engine/camera/Camera;->mMinY:F

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    return-void
.end method

.method public updateChaseEntity()V
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/Camera;->mChaseEntity:Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->getSceneCenterCoordinates()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    :cond_0
    return-void
.end method
