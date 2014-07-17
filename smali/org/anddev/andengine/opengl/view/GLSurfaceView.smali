.class public Lorg/anddev/andengine/opengl/view/GLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;,
        Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;,
        Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

.field private mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

.field private mGLWrapper:Lorg/anddev/andengine/opengl/view/GLWrapper;

.field private mHasSurface:Z

.field private mRenderMode:I

.field private mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1(Lorg/anddev/andengine/opengl/view/GLSurfaceView;)Lorg/anddev/andengine/opengl/view/EGLConfigChooser;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lorg/anddev/andengine/opengl/view/GLSurfaceView;)Lorg/anddev/andengine/opengl/view/GLWrapper;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLWrapper:Lorg/anddev/andengine/opengl/view/GLWrapper;

    return-object v0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onPause()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->requestExitAndWait()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;-><init>(Lorg/anddev/andengine/opengl/view/GLSurfaceView;Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->start()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->setRenderMode(I)V

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->surfaceCreated()V

    :cond_1
    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceHeight:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    iget v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceWidth:I

    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onWindowResize(II)V

    :cond_2
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7

    new-instance v0, Lorg/anddev/andengine/opengl/view/ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/view/ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->setEGLConfigChooser(Lorg/anddev/andengine/opengl/view/EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lorg/anddev/andengine/opengl/view/EGLConfigChooser;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mEGLConfigChooser:Lorg/anddev/andengine/opengl/view/EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->setEGLConfigChooser(Lorg/anddev/andengine/opengl/view/EGLConfigChooser;)V

    return-void
.end method

.method public setGLWrapper(Lorg/anddev/andengine/opengl/view/GLWrapper;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLWrapper:Lorg/anddev/andengine/opengl/view/GLWrapper;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderMode:I

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public setRenderer(Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->onWindowResize(II)V

    :cond_0
    iput p3, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceWidth:I

    iput p4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mSurfaceHeight:I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->surfaceCreated()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mHasSurface:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mGLThread:Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->surfaceDestroyed()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->mHasSurface:Z

    return-void
.end method
