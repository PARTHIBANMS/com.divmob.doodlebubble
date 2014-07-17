.class public Lorg/anddev/andengine/entity/particle/emitter/CircleParticleEmitter;
.super Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/emitter/BaseCircleParticleEmitter;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public getPositionOffset([F)V
    .locals 5

    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/particle/emitter/CircleParticleEmitter;->mCenterX:F

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    iget v4, p0, Lorg/anddev/andengine/entity/particle/emitter/CircleParticleEmitter;->mRadiusX:F

    mul-float/2addr v3, v4

    sget-object v4, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/anddev/andengine/entity/particle/emitter/CircleParticleEmitter;->mCenterY:F

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    iget v3, p0, Lorg/anddev/andengine/entity/particle/emitter/CircleParticleEmitter;->mRadiusY:F

    mul-float/2addr v0, v3

    sget-object v3, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method
