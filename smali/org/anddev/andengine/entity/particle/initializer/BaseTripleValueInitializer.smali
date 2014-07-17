.class public abstract Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;


# instance fields
.field protected mMaxValueC:F

.field protected mMinValueC:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/initializer/BaseDoubleValueInitializer;-><init>(FFFF)V

    iput p5, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    iput p6, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    return-void
.end method

.method private final getRandomValueC()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMaxValueC:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->mMinValueC:F

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->getRandomValueC()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/particle/initializer/BaseTripleValueInitializer;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FFF)V

    return-void
.end method

.method protected abstract onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
.end method
