.class public Lorg/anddev/andengine/entity/modifier/ScaleModifier;
.super Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;


# direct methods
.method public constructor <init>(FFF)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 8

    const/4 v6, 0x0

    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8

    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8

    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/ScaleModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(Lorg/anddev/andengine/entity/modifier/ScaleModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValues(Ljava/lang/Object;FF)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;->onSetInitialValues(Lorg/anddev/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetInitialValues(Lorg/anddev/andengine/entity/IEntity;FF)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lorg/anddev/andengine/entity/IEntity;->setScale(FF)V

    return-void
.end method

.method protected bridge synthetic onSetValues(Ljava/lang/Object;FFF)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;->onSetValues(Lorg/anddev/andengine/entity/IEntity;FFF)V

    return-void
.end method

.method protected onSetValues(Lorg/anddev/andengine/entity/IEntity;FFF)V
    .locals 0

    invoke-interface {p1, p3, p4}, Lorg/anddev/andengine/entity/IEntity;->setScale(FF)V

    return-void
.end method
