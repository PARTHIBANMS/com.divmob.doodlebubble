.class public Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;
.super Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier",
        "<",
        "Lorg/anddev/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 10

    const/4 v8, 0x0

    sget-object v9, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;-><init>(FFFFFFFLorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 10

    sget-object v9, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;-><init>(FFFFFFFLorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;)V

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;-><init>(Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValues(Ljava/lang/Object;FFF)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/scene/background/IBackground;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;->onSetInitialValues(Lorg/anddev/andengine/entity/scene/background/IBackground;FFF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/anddev/andengine/entity/scene/background/IBackground;FFF)V
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/background/IBackground;->setColor(FFF)V

    return-void
.end method

.method protected bridge synthetic onSetValues(Ljava/lang/Object;FFFF)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/anddev/andengine/entity/scene/background/IBackground;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/scene/background/modifier/ColorModifier;->onSetValues(Lorg/anddev/andengine/entity/scene/background/IBackground;FFFF)V

    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/scene/background/IBackground;FFFF)V
    .locals 0

    invoke-interface {p1, p3, p4, p5}, Lorg/anddev/andengine/entity/scene/background/IBackground;->setColor(FFF)V

    return-void
.end method
