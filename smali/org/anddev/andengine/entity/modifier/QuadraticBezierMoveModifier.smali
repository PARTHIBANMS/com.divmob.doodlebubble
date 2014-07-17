.class public Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;
.super Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;


# instance fields
.field private final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field private final mX1:F

.field private final mX2:F

.field private final mX3:F

.field private final mY1:F

.field private final mY2:F

.field private final mY3:F


# direct methods
.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;-><init>(F)V

    iput p2, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX1:F

    iput p3, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY1:F

    iput p4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX2:F

    iput p5, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY2:F

    iput p6, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX3:F

    iput p7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY3:F

    iput-object p8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;
    .locals 9

    new-instance v0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mDuration:F

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX1:F

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY1:F

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX2:F

    iget v5, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY2:F

    iget v6, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX3:F

    iget v7, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY3:F

    iget-object v8, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onManagedUpdate(FLjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 5

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->getSecondsElapsed()F

    move-result v1

    iget v2, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mDuration:F

    invoke-interface {v0, v1, v2}, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    const/high16 v4, 0x4000

    mul-float/2addr v1, v4

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX1:F

    mul-float/2addr v1, v3

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX2:F

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mX3:F

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY1:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY2:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget v3, p0, Lorg/anddev/andengine/entity/modifier/QuadraticBezierMoveModifier;->mY3:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-interface {p2, v1, v0}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    return-void
.end method
