.class public abstract Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    return v0
.end method

.method public onUpdate(F)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setCenter(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    return-void
.end method

.method public setCenterX(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterX:F

    return-void
.end method

.method public setCenterY(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;->mCenterY:F

    return-void
.end method
