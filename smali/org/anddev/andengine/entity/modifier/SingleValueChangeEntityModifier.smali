.class public abstract Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/SingleValueChangeEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;)V

    return-void
.end method
