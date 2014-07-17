.class public Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;
.super Lorg/anddev/andengine/util/modifier/LoopModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/modifier/LoopEntityModifier$ILoopEntityModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/LoopModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;ILorg/anddev/andengine/entity/modifier/LoopEntityModifier$ILoopEntityModifierListener;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0

    invoke-direct {p0, p4, p2, p3, p1}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;ILorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;ILorg/anddev/andengine/entity/modifier/LoopEntityModifier$ILoopEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/LoopModifier;)V

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

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/LoopModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/LoopEntityModifier;

    move-result-object v0

    return-object v0
.end method
