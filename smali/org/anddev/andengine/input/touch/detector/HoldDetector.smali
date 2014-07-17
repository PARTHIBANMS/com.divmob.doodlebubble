.class public Lorg/anddev/andengine/input/touch/detector/HoldDetector;
.super Lorg/anddev/andengine/input/touch/detector/BaseDetector;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;
    }
.end annotation


# static fields
.field private static final TIME_BETWEEN_UPDATES_DEFAULT:F = 0.1f

.field private static final TRIGGER_HOLD_MAXIMUM_DISTANCE_DEFAULT:F = 10.0f

.field private static final TRIGGER_HOLD_MINIMUM_MILLISECONDS_DEFAULT:J = 0xc8L


# instance fields
.field private mDownTimeMilliseconds:J

.field private mDownX:F

.field private mDownY:F

.field private final mHoldDetectorListener:Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

.field private mHoldX:F

.field private mHoldY:F

.field private mMaximumDistanceExceeded:Z

.field private final mTimerHandler:Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

.field private mTriggerHoldMaximumDistance:F

.field private mTriggerHoldMinimumMilliseconds:J

.field private mTriggerOnHold:Z

.field private mTriggerOnHoldFinished:Z


# direct methods
.method public constructor <init>(JFFLorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    iput-boolean v2, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    iput-boolean v2, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    iput-boolean v2, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHoldFinished:Z

    iput-wide p1, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    iput p3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    iput-object p5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    new-instance v0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    const/4 v1, 0x1

    new-instance v2, Lorg/anddev/andengine/input/touch/detector/HoldDetector$1;

    invoke-direct {v2, p0}, Lorg/anddev/andengine/input/touch/detector/HoldDetector$1;-><init>(Lorg/anddev/andengine/input/touch/detector/HoldDetector;)V

    invoke-direct {v0, p4, v1, v2}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    iput-object v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTimerHandler:Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V
    .locals 6

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x4120

    const v4, 0x3dcccccd

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/input/touch/detector/HoldDetector;-><init>(JFFLorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;)V

    return-void
.end method


# virtual methods
.method protected fireListener()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHoldFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long v2, v1, v3

    iget v4, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    iget v5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;->onHoldFinished(Lorg/anddev/andengine/input/touch/detector/HoldDetector;JFF)V

    iput-boolean v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHoldFinished:Z

    iput-boolean v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldDetectorListener:Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long v2, v1, v3

    iget v4, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    iget v5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/anddev/andengine/input/touch/detector/HoldDetector$IHoldDetectorListener;->onHold(Lorg/anddev/andengine/input/touch/detector/HoldDetector;JFF)V

    goto :goto_0
.end method

.method public getTriggerHoldMaximumDistance()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    return v0
.end method

.method public getTriggerHoldMinimumMilliseconds()J
    .locals 2

    iget-wide v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    return-wide v0
.end method

.method public isHolding()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    return v0
.end method

.method public onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldX:F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mHoldY:F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget v5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    iget-boolean v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v6, :cond_2

    iget v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v5

    if-gtz v6, :cond_2

    iget v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v0, :cond_0

    :cond_1
    iget-wide v5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long v2, v3, v5

    iget-wide v4, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget v5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    iget-boolean v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v6, :cond_4

    iget v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v5

    if-gtz v6, :cond_4

    iget v6, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_4

    :goto_2
    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHold:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mMaximumDistanceExceeded:Z

    if-nez v0, :cond_0

    :cond_3
    iget-wide v5, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mDownTimeMilliseconds:J

    sub-long v2, v3, v5

    iget-wide v4, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerOnHoldFinished:Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdate(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTimerHandler:Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->onUpdate(F)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTimerHandler:Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;->reset()V

    return-void
.end method

.method public setTriggerHoldMaximumDistance(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMaximumDistance:F

    return-void
.end method

.method public setTriggerHoldMinimumMilliseconds(J)V
    .locals 0

    iput-wide p1, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->mTriggerHoldMinimumMilliseconds:J

    return-void
.end method
