.class public Lorg/anddev/andengine/entity/particle/emitter/PointParticleEmitter;
.super Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public getPositionOffset([F)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/emitter/PointParticleEmitter;->mCenterX:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/emitter/PointParticleEmitter;->mCenterY:F

    aput v1, p1, v0

    return-void
.end method
