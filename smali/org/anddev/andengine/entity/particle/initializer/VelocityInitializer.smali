.class public Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p1, p2, p2}, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public getMaxVelocityX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    return v0
.end method

.method public getMaxVelocityY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    return v0
.end method

.method public getMinVelocityX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    return v0
.end method

.method public getMinVelocityY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 1

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/particle/Particle;->getPhysicsHandler()Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->setVelocity(FF)V

    return-void
.end method

.method public setVelocity(FFFF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    iput p3, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    iput p4, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    return-void
.end method

.method public setVelocityX(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    return-void
.end method

.method public setVelocityX(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValue:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValue:F

    return-void
.end method

.method public setVelocityY(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    return-void
.end method

.method public setVelocityY(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMinValueB:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;->mMaxValueB:F

    return-void
.end method
