.class public Lorg/anddev/andengine/input/touch/detector/ClickDetector;
.super Lorg/anddev/andengine/input/touch/detector/BaseDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;
    }
.end annotation


# static fields
.field private static final TRIGGER_CLICK_MAXIMUM_MILLISECONDS_DEFAULT:J = 0xc8L


# instance fields
.field private final mClickDetectorListener:Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

.field private mDownTimeMilliseconds:J

.field private mTriggerClickMaximumMilliseconds:J


# direct methods
.method public constructor <init>(JLorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V
    .locals 2

    invoke-direct {p0}, Lorg/anddev/andengine/input/touch/detector/BaseDetector;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    iput-wide p1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    iput-object p3, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mClickDetectorListener:Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;-><init>(JLorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    return-void
.end method


# virtual methods
.method public getTriggerClickMaximumMilliseconds()J
    .locals 2

    iget-wide v0, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    return-wide v0
.end method

.method public onManagedTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mDownTimeMilliseconds:J

    iget-object v1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mClickDetectorListener:Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;

    invoke-interface {v1, p0, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;->onClick(Lorg/anddev/andengine/input/touch/detector/ClickDetector;Lorg/anddev/andengine/input/touch/TouchEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setTriggerClickMaximumMilliseconds(J)V
    .locals 0

    iput-wide p1, p0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->mTriggerClickMaximumMilliseconds:J

    return-void
.end method
