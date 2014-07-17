.class public Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;
.super Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;


# static fields
.field private static final ANGLE_DELTA:F = 22.5f

.field private static final EXTENT_DIAGONAL:F = 0.354f

.field private static final EXTENT_SIDE:F = 0.5f


# instance fields
.field private mAllowDiagonal:Z


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FZLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FZLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FLorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V

    iput-boolean p7, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    return-void
.end method

.method private testDiagonalAngle(FF)Z
    .locals 2

    const/high16 v1, 0x41b4

    sub-float v0, p1, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-float v0, p1, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAllowDiagonal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    return v0
.end method

.method protected onUpdateControlKnob(FF)V
    .locals 7

    const/high16 v6, 0x3f00

    const v5, 0x3eb53f7d

    const/high16 v4, -0x4100

    const v3, -0x414ac083

    const/4 v2, 0x0

    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    invoke-super {p0, v2, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    if-eqz v0, :cond_b

    invoke-static {p2, p1}, Lorg/anddev/andengine/util/MathUtils;->atan2(FF)F

    move-result v0

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->radToDeg(F)F

    move-result v0

    const/high16 v1, 0x4334

    add-float/2addr v0, v1

    invoke-direct {p0, v2, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x43b4

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-super {p0, v4, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_3
    const/high16 v1, 0x4234

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-super {p0, v3, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_4
    const/high16 v1, 0x42b4

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-super {p0, v2, v4}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_5
    const/high16 v1, 0x4307

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-super {p0, v5, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_6
    const/high16 v1, 0x4334

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-super {p0, v6, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_7
    const/high16 v1, 0x4361

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-super {p0, v5, v5}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_8
    const/high16 v1, 0x4387

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-super {p0, v2, v6}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_9
    const v1, 0x439d8000

    invoke-direct {p0, v1, v0}, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->testDiagonalAngle(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, v3, v5}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_a
    invoke-super {p0, v2, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto :goto_0

    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    cmpl-float v0, p1, v2

    if-lez v0, :cond_c

    invoke-super {p0, v6, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    :cond_c
    cmpg-float v0, p1, v2

    if-gez v0, :cond_d

    invoke-super {p0, v4, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    :cond_d
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    invoke-super {p0, v2, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    :cond_e
    cmpl-float v0, p2, v2

    if-lez v0, :cond_f

    invoke-super {p0, v2, v6}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    :cond_f
    cmpg-float v0, p2, v2

    if-gez v0, :cond_10

    invoke-super {p0, v2, v4}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0

    :cond_10
    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    invoke-super {p0, v2, v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onUpdateControlKnob(FF)V

    goto/16 :goto_0
.end method

.method public setAllowDiagonal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/DigitalOnScreenControl;->mAllowDiagonal:Z

    return-void
.end method
