.class public abstract Lorg/anddev/andengine/input/touch/controller/BaseTouchController;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/input/touch/controller/ITouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;
    }
.end annotation


# instance fields
.field private mRunOnUpdateThread:Z

.field private mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

.field private final mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler",
            "<",
            "Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$1;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$1;-><init>(Lorg/anddev/andengine/input/touch/controller/BaseTouchController;)V

    iput-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/input/touch/controller/BaseTouchController;)Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    return-object v0
.end method


# virtual methods
.method public applyTouchOptions(Lorg/anddev/andengine/engine/options/TouchOptions;)V
    .locals 1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/TouchOptions;->isRunOnUpdateThread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    return-void
.end method

.method protected fireTouchEvent(FFIILandroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lorg/anddev/andengine/input/touch/TouchEvent;->obtain(FFIILandroid/view/MotionEvent;)Lorg/anddev/andengine/input/touch/TouchEvent;

    move-result-object v1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->obtainPoolItem()Lorg/anddev/andengine/util/pool/PoolItem;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/input/touch/controller/BaseTouchController$TouchEventRunnablePoolItem;->set(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    iget-object v1, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->postPoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lorg/anddev/andengine/input/touch/TouchEvent;->obtain(FFIILandroid/view/MotionEvent;)Lorg/anddev/andengine/input/touch/TouchEvent;

    move-result-object v1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;->onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    invoke-virtual {v1}, Lorg/anddev/andengine/input/touch/TouchEvent;->recycle()V

    goto :goto_0
.end method

.method public onUpdate(F)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->onUpdate(F)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mRunOnUpdateThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventRunnablePoolUpdateHandler:Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->reset()V

    :cond_0
    return-void
.end method

.method public setTouchEventCallback(Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;->mTouchEventCallback:Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;

    return-void
.end method
