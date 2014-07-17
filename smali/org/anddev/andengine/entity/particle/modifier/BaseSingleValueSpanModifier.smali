.class public abstract Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;


# instance fields
.field private final mDuration:F

.field private final mFromTime:F

.field private final mFromValue:F

.field private final mSpanValue:F

.field private final mToTime:F

.field private final mToValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mToValue:F

    iput p3, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    iput p4, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mToTime:F

    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mToValue:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mSpanValue:F

    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mToTime:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mDuration:F

    return-void
.end method


# virtual methods
.method protected final calculateValue(F)F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mSpanValue:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->onSetInitialValue(Lorg/anddev/andengine/entity/particle/Particle;F)V

    return-void
.end method

.method protected abstract onSetInitialValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
.end method

.method protected abstract onSetValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
.end method

.method protected onSetValueInternal(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 1

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->calculateValue(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->onSetValue(Lorg/anddev/andengine/entity/particle/Particle;F)V

    return-void
.end method

.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/particle/Particle;->getLifeTime()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mToTime:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mDuration:F

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->onSetValueInternal(Lorg/anddev/andengine/entity/particle/Particle;F)V

    :cond_0
    return-void
.end method

.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/particle/Particle;->getLifeTime()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->mFromTime:F

    sub-float v1, p2, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->onSetValueInternal(Lorg/anddev/andengine/entity/particle/Particle;F)V

    :cond_0
    return-void
.end method
