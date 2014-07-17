.class public abstract Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;
.super Lorg/anddev/andengine/engine/camera/hud/HUD;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerID:I

.field private final mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private final mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private mControlValueX:F

.field private mControlValueY:F

.field private final mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/camera/hud/HUD;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    invoke-virtual {p0, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setCamera(Lorg/anddev/andengine/engine/camera/Camera;)V

    iput-object p7, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    new-instance v0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;-><init>(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v1, v1, p5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlKnobReleased()V

    invoke-virtual {p0, p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    new-instance v0, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    new-instance v1, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;

    invoke-direct {v1, p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;-><init>(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)V

    invoke-direct {v0, p6, v2, v1}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FZLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->setTouchAreaBindingEnabled(Z)V

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    return-object v0
.end method

.method static synthetic access$1(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    return v0
.end method

.method static synthetic access$2(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    return v0
.end method

.method private updateControlKnob(FF)V
    .locals 5

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-static {v3, v1, p1}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(FFF)F

    move-result v1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v2

    invoke-static {v3, v2, p2}, Lorg/anddev/andengine/util/MathUtils;->bringToBounds(FFF)F

    move-result v2

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v0

    div-float v0, v2, v0

    sub-float/2addr v0, v4

    invoke-virtual {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    return-void
.end method


# virtual methods
.method public getControlBase()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getControlKnob()Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    return-object v0
.end method

.method public getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    return-object v0
.end method

.method protected onHandleControlBaseLeft()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    return-void
.end method

.method protected onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->updateControlKnob(FF)V

    :cond_0
    :goto_0
    return v2

    :pswitch_1
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v3, :cond_0

    iput v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->updateControlKnob(FF)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v1, v0, :cond_0

    iput v3, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlKnobReleased()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onHandleControlKnobReleased()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getPointerID()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseLeft()V

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mActivePointerID:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 6

    const/high16 v3, 0x4000

    const/high16 v5, 0x3f00

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlBase:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlKnob:Lorg/anddev/andengine/entity/sprite/Sprite;

    mul-float v2, v3, p1

    iput v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    mul-float v2, v3, p2

    iput v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getSceneCenterCoordinates()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidthScaled()F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeightScaled()F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    return-void
.end method

.method public refreshControlKnobPosition()V
    .locals 3

    const/high16 v2, 0x3f00

    iget v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    return-void
.end method
