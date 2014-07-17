.class public Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;


# instance fields
.field private mMaxLifeTime:F

.field private mMinLifeTime:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMinLifeTime:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMaxLifeTime:F

    return-void
.end method


# virtual methods
.method public getMaxLifeTime()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMaxLifeTime:F

    return v0
.end method

.method public getMinLifeTime()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMinLifeTime:F

    return v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 3

    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMaxLifeTime:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMinLifeTime:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMinLifeTime:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/particle/Particle;->setDeathTime(F)V

    return-void
.end method

.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 0

    return-void
.end method

.method public setLifeTime(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMinLifeTime:F

    iput p1, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMaxLifeTime:F

    return-void
.end method

.method public setLifeTime(FF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMinLifeTime:F

    iput p2, p0, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;->mMaxLifeTime:F

    return-void
.end method
