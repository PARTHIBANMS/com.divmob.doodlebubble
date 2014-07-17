.class public Lorg/anddev/andengine/entity/modifier/RotationByModifier;
.super Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;-><init>(FFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/RotationByModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;)V

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

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationByModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/RotationByModifier;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/modifier/RotationByModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/RotationByModifier;-><init>(Lorg/anddev/andengine/entity/modifier/RotationByModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/RotationByModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/RotationByModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onChangeValue(FLjava/lang/Object;F)V
    .locals 0

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/modifier/RotationByModifier;->onChangeValue(FLorg/anddev/andengine/entity/IEntity;F)V

    return-void
.end method

.method protected onChangeValue(FLorg/anddev/andengine/entity/IEntity;F)V
    .locals 1

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getRotation()F

    move-result v0

    add-float/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setRotation(F)V

    return-void
.end method
