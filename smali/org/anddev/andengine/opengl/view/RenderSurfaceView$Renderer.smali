.class public Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/view/RenderSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renderer"
.end annotation


# instance fields
.field private final mEngine:Lorg/anddev/andengine/engine/Engine;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/Engine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;->mEngine:Lorg/anddev/andengine/engine/Engine;

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;)Lorg/anddev/andengine/engine/Engine;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;->mEngine:Lorg/anddev/andengine/engine/Engine;

    return-object v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/Engine;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLThread interrupted!"

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceChanged: pWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  pHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p2, p3}, Lorg/anddev/andengine/engine/Engine;->setSurfaceSize(II)V

    invoke-interface {p1, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const-string v0, "onSurfaceCreated"

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->reset(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setPerspectiveCorrectionHintFastest(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setShadeModelFlat(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableLightning(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableDither(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableBlend(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableCulling(Ljavax/microedition/khronos/opengles/GL10;)V

    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView$Renderer;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->getRenderOptions()Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableExtensions(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/options/RenderOptions;)V

    return-void
.end method
