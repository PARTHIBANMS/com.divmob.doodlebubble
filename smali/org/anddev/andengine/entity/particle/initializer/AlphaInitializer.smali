.class public Lorg/anddev/andengine/entity/particle/initializer/AlphaInitializer;
.super Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/initializer/BaseSingleValueInitializer;-><init>(FF)V

    return-void
.end method


# virtual methods
.method protected onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setAlpha(F)V

    return-void
.end method
