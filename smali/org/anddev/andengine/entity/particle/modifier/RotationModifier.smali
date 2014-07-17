.class public Lorg/anddev/andengine/entity/particle/modifier/RotationModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method protected onSetInitialValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setRotation(F)V

    return-void
.end method

.method protected onSetValue(Lorg/anddev/andengine/entity/particle/Particle;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->setRotation(F)V

    return-void
.end method
