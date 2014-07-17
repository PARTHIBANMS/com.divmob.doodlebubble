.class public abstract Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/DoubleValueChangeEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;)V

    return-void
.end method
