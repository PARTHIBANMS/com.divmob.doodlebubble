.class public Lorg/anddev/andengine/entity/scene/Scene;
.super Lorg/anddev/andengine/entity/Entity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;,
        Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;,
        Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    }
.end annotation


# static fields
.field private static final TOUCHAREAS_CAPACITY_DEFAULT:I = 0x4


# instance fields
.field private mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

.field private mBackgroundEnabled:Z

.field protected mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private mChildSceneModalDraw:Z

.field private mChildSceneModalTouch:Z

.field private mChildSceneModalUpdate:Z

.field private mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

.field private mOnAreaTouchTraversalBackToFront:Z

.field private mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

.field private mOnSceneTouchListenerBindingEnabled:Z

.field private final mOnSceneTouchListenerBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private final mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

.field private mSecondsElapsedTotal:F

.field private mTouchAreaBindingEnabled:Z

.field private final mTouchAreaBindings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchAreas:Lorg/anddev/andengine/util/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/SmartList",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    new-instance v0, Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    new-instance v0, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    new-instance v0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;

    invoke-direct {v0, v2, v2, v2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    iput-boolean v3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    iput-boolean v3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    new-instance v1, Lorg/anddev/andengine/util/SmartList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    new-instance v1, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    new-instance v1, Lorg/anddev/andengine/entity/scene/background/ColorBackground;

    invoke-direct {v1, v3, v3, v3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    iput-boolean v4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/anddev/andengine/entity/Entity;

    invoke-direct {v1}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;
    .locals 3

    invoke-interface {p4, p2, p3}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-interface {p4, p1, v1, v0}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    invoke-interface {v2, p1, p4, v1, v0}, Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setParentScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    :cond_0
    return-void
.end method

.method public clearChildScene()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-void
.end method

.method public clearTouchAreas()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/SmartList;->clear()V

    return-void
.end method

.method public getBackground()Lorg/anddev/andengine/entity/scene/background/IBackground;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    return-object v0
.end method

.method public getChildScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public getOnAreaTouchListener()Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    return-object v0
.end method

.method public getOnSceneTouchListener()Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    return v0
.end method

.method public getTouchAreas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    return-object v0
.end method

.method public hasChildScene()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnAreaTouchListener()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnSceneTouchListener()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    return v0
.end method

.method public isOnSceneTouchListenerBindingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    return v0
.end method

.method public isTouchAreaBindingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    return v0
.end method

.method protected onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalDraw:Z

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onApplySceneBackgroundMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setModelViewIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    invoke-interface {v1, p1, p2}, Lorg/anddev/andengine/entity/scene/background/IBackground;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_1
    invoke-virtual {p2, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onApplySceneMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->setModelViewIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_3
    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mSecondsElapsedTotal:F

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalUpdate:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    invoke-interface {v1, p1}, Lorg/anddev/andengine/entity/scene/background/IBackground;->onUpdate(F)V

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onUpdate(F)V

    :cond_2
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    if-eqz v0, :cond_0

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    invoke-interface {v0, p0, p1}, Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v7

    packed-switch v3, :pswitch_data_1

    :goto_2
    :pswitch_2
    invoke-direct {p0, p1, v6, v7, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onChildSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalTouch:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    if-eqz v0, :cond_9

    move v3, v2

    :goto_3
    if-lt v3, v8, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    invoke-interface {v0, p0, p1}, Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v2

    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    invoke-interface {v0, v5, v6}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, p1, v5, v6, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-boolean v2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v8, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_4

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;

    invoke-interface {v0, v5, v6}, Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {p0, p1, v5, v6, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onAreaTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;FFLorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    move v0, v1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    return-void
.end method

.method public setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackground:Lorg/anddev/andengine/entity/scene/background/IBackground;

    return-void
.end method

.method public setBackgroundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mBackgroundEnabled:Z

    return-void
.end method

.method public setChildScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    return-void
.end method

.method public setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V
    .locals 0

    invoke-direct {p1, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setParentScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildScene:Lorg/anddev/andengine/entity/scene/Scene;

    iput-boolean p2, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalDraw:Z

    iput-boolean p3, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalUpdate:Z

    iput-boolean p4, p0, Lorg/anddev/andengine/entity/scene/Scene;->mChildSceneModalTouch:Z

    return-void
.end method

.method public setChildSceneModal(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    return-void
.end method

.method public setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;

    return-void
.end method

.method public setOnAreaTouchTraversalBackToFront()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    return-void
.end method

.method public setOnAreaTouchTraversalFrontToBack()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnAreaTouchTraversalBackToFront:Z

    return-void
.end method

.method public setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListener:Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;

    return-void
.end method

.method public setOnSceneTouchListenerBindingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mOnSceneTouchListenerBindingEnabled:Z

    return-void
.end method

.method public setParent(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    return-void
.end method

.method public setTouchAreaBindingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreaBindingEnabled:Z

    return-void
.end method

.method public unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregisterTouchAreas(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea$ITouchAreaMatcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/Scene;->mTouchAreas:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->removeAll(Lorg/anddev/andengine/util/IMatcher;)Z

    move-result v0

    return v0
.end method
