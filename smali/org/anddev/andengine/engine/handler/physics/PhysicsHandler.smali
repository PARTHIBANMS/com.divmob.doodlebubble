.class public Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;
.super Lorg/anddev/andengine/engine/handler/BaseEntityUpdateHandler;


# instance fields
.field protected mAccelerationX:F

.field protected mAccelerationY:F

.field protected mAngularVelocity:F

.field private mEnabled:Z

.field protected mVelocityX:F

.field protected mVelocityY:F


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/handler/BaseEntityUpdateHandler;-><init>(Lorg/anddev/andengine/entity/IEntity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    iput v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    iput v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    iput v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    iput v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    iput v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    return-void
.end method


# virtual methods
.method public accelerate(FF)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    return-void
.end method

.method public getAccelerationX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    return v0
.end method

.method public getAccelerationY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    return v0
.end method

.method public getAngularVelocity()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    return v0
.end method

.method public getVelocityX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    return v0
.end method

.method protected onUpdate(FLorg/anddev/andengine/entity/IEntity;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    cmpl-float v2, v0, v3

    if-nez v2, :cond_0

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    :cond_1
    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getRotation()F

    move-result v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setRotation(F)V

    :cond_2
    iget v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    iget v1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    cmpl-float v2, v0, v3

    if-nez v2, :cond_3

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_4

    :cond_3
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-interface {p2, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setPosition(FF)V

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    iput v0, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    return-void
.end method

.method public setAcceleration(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    return-void
.end method

.method public setAcceleration(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    iput p2, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    return-void
.end method

.method public setAccelerationX(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationX:F

    return-void
.end method

.method public setAccelerationY(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAccelerationY:F

    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mAngularVelocity:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mEnabled:Z

    return-void
.end method

.method public setVelocity(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    return-void
.end method

.method public setVelocity(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    iput p2, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    return-void
.end method

.method public setVelocityX(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityX:F

    return-void
.end method

.method public setVelocityY(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->mVelocityY:F

    return-void
.end method
