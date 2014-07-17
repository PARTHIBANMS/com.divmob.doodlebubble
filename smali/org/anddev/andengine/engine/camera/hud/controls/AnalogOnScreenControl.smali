.class public Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;
.super Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

# interfaces
.implements Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;
    }
.end annotation


# instance fields
.field private final mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FJLorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;)V
    .locals 10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    new-instance v2, Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-direct {v2, p0}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;-><init>(Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    iput-object v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    iget-object v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setTriggerClickMaximumMilliseconds(J)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    new-instance v0, Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;-><init>(Lorg/anddev/andengine/input/touch/detector/ClickDetector$IClickDetectorListener;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    return-object v0
.end method

.method public bridge synthetic getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/anddev/andengine/input/touch/detector/ClickDetector;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->getOnScreenControlListener()Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl$IAnalogOnScreenControlListener;->onControlClick(Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;)V

    return-void
.end method

.method protected onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    invoke-super {p0, p1, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 3

    const/high16 v2, 0x3f00

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    const/high16 v1, 0x3e80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p1}, Lorg/anddev/andengine/util/MathUtils;->atan2(FF)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-super {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0
.end method

.method public setOnControlClickEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setEnabled(Z)V

    return-void
.end method

.method public setOnControlClickMaximumMilliseconds(J)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/AnalogOnScreenControl;->mClickDetector:Lorg/anddev/andengine/input/touch/detector/ClickDetector;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/input/touch/detector/ClickDetector;->setTriggerClickMaximumMilliseconds(J)V

    return-void
.end method
