.class public Lorg/anddev/andengine/input/touch/TouchEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_UP:I = 0x1

.field private static final TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;


# instance fields
.field protected mAction:I

.field protected mMotionEvent:Landroid/view/MotionEvent;

.field protected mPointerID:I

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;-><init>(Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;)V

    sput-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(FFIILandroid/view/MotionEvent;)Lorg/anddev/andengine/input/touch/TouchEvent;
    .locals 6

    sget-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/input/touch/TouchEvent;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/input/touch/TouchEvent;->set(FFIILandroid/view/MotionEvent;)V

    return-object v0
.end method

.method public static recycle(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;->recyclePoolItem(Ljava/lang/Object;)V

    return-void
.end method

.method private set(FFIILandroid/view/MotionEvent;)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    iput p2, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    iput p3, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    iput p4, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mPointerID:I

    iput-object p5, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    return v0
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPointerID()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mPointerID:I

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    return v0
.end method

.method public isActionCancel()Z
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionDown()Z
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionMove()Z
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionOutside()Z
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionUp()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mAction:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    iget v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    return-void
.end method

.method public recycle()V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/input/touch/TouchEvent;->TOUCHEVENT_POOL:Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/input/touch/TouchEvent$TouchEventPool;->recyclePoolItem(Ljava/lang/Object;)V

    return-void
.end method

.method public set(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mX:F

    iput p2, p0, Lorg/anddev/andengine/input/touch/TouchEvent;->mY:F

    return-void
.end method
