.class public Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;
.super Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;


# instance fields
.field private final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field private final mX1:F

.field private final mX2:F

.field private final mX3:F

.field private final mX4:F

.field private final mY1:F

.field private final mY2:F

.field private final mY3:F

.field private final mY4:F


# direct methods
.method public constructor <init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(F)V

    iput p2, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX1:F

    iput p3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY1:F

    iput p4, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX2:F

    iput p5, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY2:F

    iput p6, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX3:F

    iput p7, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY3:F

    iput p8, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX4:F

    iput p9, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY4:F

    iput-object p10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;
    .locals 11

    new-instance v0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mDuration:F

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX1:F

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY1:F

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX2:F

    iget v5, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY2:F

    iget v6, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX3:F

    iget v7, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY3:F

    iget v8, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX4:F

    iget v9, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY4:F

    iget-object v10, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct/range {v0 .. v10}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;-><init>(FFFFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 7

    const/high16 v6, 0x4040

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->getSecondsElapsed()F

    move-result v1

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mDuration:F

    invoke-interface {v0, v1, v2}, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    mul-float v4, v3, v1

    mul-float v5, v2, v0

    mul-float/2addr v3, v6

    mul-float/2addr v0, v3

    mul-float/2addr v1, v6

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX1:F

    mul-float/2addr v2, v4

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX2:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX3:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mX4:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY1:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY2:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY3:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/CubicBezierMoveModifier;->mY4:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    invoke-interface {p2, v2, v0}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    return-void
.end method
