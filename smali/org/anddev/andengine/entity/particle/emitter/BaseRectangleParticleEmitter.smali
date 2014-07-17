.class public abstract Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;
.super Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;


# instance fields
.field protected mHeight:F

.field protected mHeightHalf:F

.field protected mWidth:F

.field protected mWidthHalf:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/emitter/BaseParticleEmitter;-><init>(FF)V

    invoke-virtual {p0, p3}, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->setWidth(F)V

    invoke-virtual {p0, p4}, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->setHeight(F)V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mWidth:F

    return v0
.end method

.method public setHeight(F)V
    .locals 1

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mHeight:F

    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mHeightHalf:F

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iput p1, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mWidth:F

    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;->mWidthHalf:F

    return-void
.end method
