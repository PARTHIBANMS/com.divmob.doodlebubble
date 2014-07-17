.class public abstract Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;
.super Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;


# instance fields
.field protected mRadiusX:F

.field protected mRadiusY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;-><init>(FF)V

    invoke-virtual {p0, p3}, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->setRadiusX(F)V

    invoke-virtual {p0, p4}, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->setRadiusY(F)V

    return-void
.end method


# virtual methods
.method public getRadiusX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    return-void
.end method

.method public setRadius(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    return-void
.end method

.method public setRadiusX(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusX:F

    return-void
.end method

.method public setRadiusY(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;->mRadiusY:F

    return-void
.end method
