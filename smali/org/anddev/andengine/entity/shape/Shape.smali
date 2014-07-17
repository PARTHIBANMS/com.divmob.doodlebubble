.class public abstract Lorg/anddev/andengine/entity/shape/Shape;
.super Lorg/anddev/andengine/entity/Entity;

# interfaces
.implements Lorg/anddev/andengine/entity/shape/IShape;


# static fields
.field public static final BLENDFUNCTION_DESTINATION_DEFAULT:I = 0x303

.field public static final BLENDFUNCTION_DESTINATION_PREMULTIPLYALPHA_DEFAULT:I = 0x303

.field public static final BLENDFUNCTION_SOURCE_DEFAULT:I = 0x302

.field public static final BLENDFUNCTION_SOURCE_PREMULTIPLYALPHA_DEFAULT:I = 0x1


# instance fields
.field private mCullingEnabled:Z

.field protected mDestinationBlendFunction:I

.field protected mSourceBlendFunction:I


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    const/16 v0, 0x302

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    const/16 v0, 0x303

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    return-void
.end method


# virtual methods
.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/shape/Shape;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/shape/Shape;->onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/shape/Shape;->drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    return-void
.end method

.method protected abstract drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->isManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->unloadFromActiveBufferObjectManager()V

    :cond_0
    return-void
.end method

.method public getHeightScaled()F
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mScaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected abstract getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
.end method

.method public getWidthScaled()F
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getWidth()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mScaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected abstract isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z
.end method

.method public isCullingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    return v0
.end method

.method public isVertexBufferManaged()Z
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->isManaged()Z

    move-result v0

    return v0
.end method

.method protected onApplyVertices(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/shape/Shape;->mBlue:F

    iget v3, p0, Lorg/anddev/andengine/entity/shape/Shape;->mAlpha:F

    invoke-static {p1, v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/util/GLHelper;->setColor(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    iget v1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->blendFunction(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/entity/shape/Shape;->isCulled(Lorg/anddev/andengine/engine/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_1
    return-void
.end method

.method protected abstract onUpdateVertexBuffer()V
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    const/16 v0, 0x302

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    const/16 v0, 0x303

    iput v0, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mSourceBlendFunction:I

    iput p2, p0, Lorg/anddev/andengine/entity/shape/Shape;->mDestinationBlendFunction:I

    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/shape/Shape;->mCullingEnabled:Z

    return-void
.end method

.method public setVertexBufferManaged(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setManaged(Z)V

    return-void
.end method

.method protected updateVertexBuffer()V
    .locals 0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/Shape;->onUpdateVertexBuffer()V

    return-void
.end method
