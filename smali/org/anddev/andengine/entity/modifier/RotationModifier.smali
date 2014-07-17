.class public Lorg/anddev/andengine/entity/modifier/RotationModifier;
.super Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;


# direct methods
.method public constructor <init>(FFF)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/RotationModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/SingleValueSpanEntityModifier;)V

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

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/RotationModifier;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/modifier/RotationModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/RotationModifier;-><init>(Lorg/anddev/andengine/entity/modifier/RotationModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSetInitialValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/RotationModifier;->onSetInitialValue(Lorg/anddev/andengine/entity/IEntity;F)V

    return-void
.end method

.method protected onSetInitialValue(Lorg/anddev/andengine/entity/IEntity;F)V
    .locals 0

    invoke-interface {p1, p2}, Lorg/anddev/andengine/entity/IEntity;->setRotation(F)V

    return-void
.end method

.method protected bridge synthetic onSetValue(Ljava/lang/Object;FF)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/RotationModifier;->onSetValue(Lorg/anddev/andengine/entity/IEntity;FF)V

    return-void
.end method

.method protected onSetValue(Lorg/anddev/andengine/entity/IEntity;FF)V
    .locals 0

    invoke-interface {p1, p3}, Lorg/anddev/andengine/entity/IEntity;->setRotation(F)V

    return-void
.end method
