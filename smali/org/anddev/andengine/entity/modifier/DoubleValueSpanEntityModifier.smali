.class public abstract Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/DoubleValueSpanEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueSpanModifier;)V

    return-void
.end method
