.class public Lorg/anddev/andengine/input/touch/detector/ScrollDetector;
.super Lorg/anddev/andengine/input/touch/detector/BaseDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;
    }
.end annotation


# static fields
.field private static final TRIGGER_SCROLL_MINIMUM_DISTANCE_DEFAULT:F = 10.0f


# instance fields
.field private mLastX:F

.field private mLastY:F

.field private final mScrollDetectorListener:Lorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

.field private mTriggerScrollMinimumDistance:F

.field private mTriggered:Z


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    iput-object p2, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V
    .locals 1

    const/high16 v0, 0x4120

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;-><init>(FLorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;)V

    return-void
.end method


# virtual methods
.method public getTriggerScrollMinimumDistance()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    return v0
.end method

.method protected getX(Lorg/anddev/andengine/input/touch/TouchEvent;)F
    .locals 1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getY(Lorg/anddev/andengine/input/touch/TouchEvent;)F
    .locals 1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v0

    return v0
.end method

.method public onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->getX(Lorg/anddev/andengine/input/touch/TouchEvent;)F

    move-result v2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->getY(Lorg/anddev/andengine/input/touch/TouchEvent;)F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iput v2, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    iput v3, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    iput-boolean v1, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggered:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    sub-float v1, v2, v1

    iget v4, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    sub-float v4, v3, v4

    iget v5, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    iget-boolean v6, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggered:Z

    if-nez v6, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v5

    if-gtz v6, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_0

    :cond_1
    iget-object v5, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mScrollDetectorListener:Lorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;

    invoke-interface {v5, p0, p1, v1, v4}, Lorg/anddev/andengine/input/touch/detector/ScrollDetector$IScrollDetectorListener;->onScroll(Lorg/anddev/andengine/input/touch/detector/ScrollDetector;Lorg/anddev/andengine/input/touch/TouchEvent;FF)V

    iput v2, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mLastX:F

    iput v3, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mLastY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggered:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setTriggerScrollMinimumDistance(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/input/touch/detector/ScrollDetector;->mTriggerScrollMinimumDistance:F

    return-void
.end method
