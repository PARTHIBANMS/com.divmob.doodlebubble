.class public Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;
.super Lorg/anddev/andengine/engine/Engine;


# instance fields
.field private final mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    iput-object p2, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-void
.end method


# virtual methods
.method protected convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    :goto_0
    return-void

    :cond_0
    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/anddev/andengine/input/touch/TouchEvent;->offset(FF)V

    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    goto :goto_0
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSecondCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-interface {p1, v5, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-interface {p1, v5, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget-object v4, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v4, p1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-interface {p1, v2, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-interface {p1, v2, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceWidth:I

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getFirstCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v1, v3, v3, v0, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->mSurfaceHeight:I

    invoke-virtual {v1, v0, v3, v0, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    return-void
.end method

.method protected updateUpdateHandlers(F)V
    .locals 1

    invoke-super {p0, p1}, Lorg/anddev/andengine/engine/Engine;->updateUpdateHandlers(F)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/SingleSceneSplitScreenEngine;->getSecondCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onUpdate(F)V

    return-void
.end method
