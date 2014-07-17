.class public abstract Lorg/anddev/andengine/entity/modifier/TripleValueSpanEntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/TripleValueSpanEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseTripleValueSpanModifier;)V

    return-void
.end method
