.class Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/view/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderMode:I

.field private final mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWidth:I

.field final synthetic this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/opengl/view/GLSurfaceView;Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    iput v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    iput-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    iput v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    iput-object p2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    iput-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    const-string v0, "GLThread"

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private guardedRun()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-instance v0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;

    invoke-direct {v0, v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;-><init>(Lorg/anddev/andengine/opengl/view/GLSurfaceView;)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->start()V

    const/4 v0, 0x0

    move v2, v1

    move-object v3, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v4, :cond_1

    :goto_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->finish()V

    return-void

    :cond_1
    monitor-enter p0

    :goto_2
    :try_start_0
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->finish()V

    move v5, v1

    :goto_3
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->needToWait()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v4, :cond_4

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    iget v7, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    iget v8, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    iget-object v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->start()V

    move v2, v1

    move v4, v1

    :goto_4
    if-eqz v2, :cond_5

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->this$0:Lorg/anddev/andengine/opengl/view/GLSurfaceView;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v3, v0

    move v0, v1

    :cond_5
    if-eqz v4, :cond_9

    iget-object v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    iget-object v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    iget-object v4, v4, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    move v2, v6

    :goto_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    invoke-interface {v0, v3, v7, v8}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    move v0, v6

    :cond_6
    if-lez v7, :cond_0

    if-lez v8, :cond_0

    iget-object v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderer:Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;

    invoke-interface {v4, v3}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v4, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEglHelper:Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$EglHelper;->swap()Z

    goto :goto_0

    :cond_7
    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_4

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_5
.end method

.method private needToWait()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    if-eq v2, v1, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getRenderMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mPaused:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mSizeChanged:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mDone:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/anddev/andengine/opengl/view/GLSurfaceView;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/view/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
