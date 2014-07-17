.class public abstract Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/DurationEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    return-void
.end method
