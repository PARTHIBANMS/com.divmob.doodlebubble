.class public Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public getMaxRotation()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMaxValue:F

    return v0
.end method

.method public getMinRotation()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMinValue:F

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setRotation(F)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMinValue:F

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMaxValue:F

    return-void
.end method

.method public setRotation(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMinValue:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;->mMaxValue:F

    return-void
.end method
