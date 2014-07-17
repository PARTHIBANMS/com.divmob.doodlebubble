.class public Lorg/anddev/andengine/entity/scene/CameraScene;
.super Lorg/anddev/andengine/entity/scene/Scene;


# instance fields
.field protected mCamera:Lorg/anddev/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/scene/CameraScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-void
.end method


# virtual methods
.method public centerShapeInCamera(Lorg/anddev/andengine/entity/shape/Shape;)V
    .locals 4

    const/high16 v3, 0x3f00

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    return-void
.end method

.method public centerShapeInCameraHorizontally(Lorg/anddev/andengine/entity/shape/Shape;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    return-void
.end method

.method public centerShapeInCameraVertically(Lorg/anddev/andengine/entity/shape/Shape;)V
    .locals 3

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/shape/Shape;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/shape/Shape;->setPosition(FF)V

    return-void
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    instance-of v0, v0, Lorg/anddev/andengine/entity/scene/CameraScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertCameraSceneToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSceneToCameraSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 2

    const/16 v1, 0x1701

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onApplyCameraSceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_0
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSceneToCameraSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/camera/Camera;->convertCameraSceneToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    goto :goto_0
.end method

.method public setCamera(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/CameraScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-void
.end method
