.class public Lorg/anddev/andengine/input/touch/controller/SingleTouchControler;
.super Lorg/anddev/andengine/input/touch/controller/BaseTouchController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/input/touch/controller/BaseTouchController;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/input/touch/controller/SingleTouchControler;->fireTouchEvent(FFIILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
