.class public abstract Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;


# instance fields
.field protected mMaxValueB:F

.field protected mMinValueB:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    iput p3, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    iput p4, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    return-void
.end method

.method private final getRandomValueB()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMaxValueB:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->mMinValueB:F

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->getRandomValueB()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V

    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
.end method
