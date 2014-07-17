.class public Lorg/anddev/andengine/entity/modifier/RotateCubicBezierMoveModifier;
.super Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;


# direct methods
.method public constructor <init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;-><init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method


# virtual methods
.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 3

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v1

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    sub-float v0, v2, v0

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v2

    sub-float v1, v2, v1

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/MathUtils;->atan2(FF)F

    move-result v0

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->radToDeg(F)F

    move-result v0

    const/high16 v1, 0x42b4

    add-float/2addr v0, v1

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setRotation(F)V

    return-void
.end method
