.class public Lorg/anddev/andengine/entity/particle/modifier/ScaleModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/particle/modifier/ScaleModifier;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/particle/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFF)V

    return-void
.end method


# virtual methods
.method protected onSetInitialValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lorg/anddev/andengine/entity/particle/Particle;->setScale(FF)V

    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/particle/Particle;FF)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lorg/anddev/andengine/entity/particle/Particle;->setScale(FF)V

    return-void
.end method
