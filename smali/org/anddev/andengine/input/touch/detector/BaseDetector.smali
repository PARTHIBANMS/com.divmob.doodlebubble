.class public abstract Lorg/anddev/andengine/input/touch/detector/BaseDetector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    return v0
.end method

.method protected abstract onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    return v0
.end method

.method public final onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/input/touch/detector/BaseDetector;->mEnabled:Z

    return-void
.end method
