.class Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerOnGestureDetectorListener"
.end annotation


# instance fields
.field private final mSwipeMinDistance:F

.field final synthetic this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;F)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput p2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->mSwipeMinDistance:F

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onDoubleTap()Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x0

    iget v2, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->mSwipeMinDistance:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeLeft()Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeRight()Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeUp()Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSwipeDown()Z

    move-result v0

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector$InnerOnGestureDetectorListener;->this$0:Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/SurfaceGestureDetector;->onSingleTap()Z

    move-result v0

    return v0
.end method
