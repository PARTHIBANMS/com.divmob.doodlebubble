.class public Lorg/anddev/andengine/entity/particle/modifier/ColorModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/anddev/andengine/entity/particle/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFF)V

    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/Particle;->setColor(FFF)V

    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FFF)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/Particle;->setColor(FFF)V

    return-void
.end method
