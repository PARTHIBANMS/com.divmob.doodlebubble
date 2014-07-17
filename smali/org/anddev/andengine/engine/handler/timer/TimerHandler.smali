.class public Lorg/anddev/andengine/engine/handler/timer/TimerHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private mAutoReset:Z

.field protected final mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

.field private mTimerCallbackTriggered:Z

.field private mTimerSeconds:F

.field private mTimerSecondsElapsed:F


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    return-void
.end method

.method public constructor <init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    iput-boolean p2, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    iput-object p3, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    return-void
.end method


# virtual methods
.method public getTimerSeconds()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    return v0
.end method

.method public getTimerSecondsElapsed()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    return v0
.end method

.method public isAutoReset()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    return v0
.end method

.method public isTimerCallbackTriggered()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    return v0
.end method

.method public onUpdate(F)V
    .locals 2

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    :goto_0
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget-object v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;->onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    iget-object v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallback:Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;->onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSecondsElapsed:F

    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mAutoReset:Z

    return-void
.end method

.method public setTimerCallbackTriggered(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerCallbackTriggered:Z

    return-void
.end method

.method public setTimerSeconds(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->mTimerSeconds:F

    return-void
.end method
